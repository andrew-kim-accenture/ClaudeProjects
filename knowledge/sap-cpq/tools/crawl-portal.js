/**
 * SAP CPQ Help Portal Crawler
 *
 * Crawls JS-rendered pages on help.sap.com/docs/SAP_CPQ using Playwright.
 * Saves content as markdown files to knowledge/sap-cpq/portal/
 * Updates crawl-progress.md as pages complete.
 *
 * Setup:
 *   npm install playwright
 *   npx playwright install chromium
 *
 * Run:
 *   node tools/crawl-portal.js
 *
 * Resume: Re-run the same command — already-completed pages are skipped.
 */

const { chromium } = require('playwright');
const fs = require('fs');
const path = require('path');

// ── Config ─────────────────────────────────────────────────────────────────

const BASE_URL = 'https://help.sap.com/docs/SAP_CPQ';
const OUTPUT_DIR = path.resolve(__dirname, '../portal');
const PROGRESS_FILE = path.resolve(__dirname, '../crawl-progress.md');
const WAIT_MS = 2000;          // ms to wait after page load for JS to render
const BATCH_SIZE = 3;          // concurrent pages (keep low to avoid rate limits)

// Known entry points — add more as discovered
const ENTRY_POINTS = [
  'https://help.sap.com/docs/SAP_CPQ',
  'https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/7be8a894a6dd45f7806f11c86f5b7c11.html',
];

// ── Helpers ─────────────────────────────────────────────────────────────────

function slugify(str) {
  return str
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '')
    .substring(0, 80);
}

function urlToFilename(url) {
  const u = new URL(url);
  const parts = u.pathname.split('/').filter(Boolean);
  return slugify(parts.slice(-2).join('-')) + '.md';
}

function markProgress(url, status, title = '') {
  let content = fs.readFileSync(PROGRESS_FILE, 'utf8');
  const escapedUrl = url.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
  const regex = new RegExp(`(\\| \`)(pending|completed|failed[^|]*)(\`)(\\s*\\|[^|]*\\|\\s*)${escapedUrl}`);

  if (regex.test(content)) {
    content = content.replace(regex, `| \`${status}\`$4${url}`);
  } else if (status !== 'completed') {
    // Append new entry under Job 4
    const job4Marker = '## Job 4:';
    const insertLine = `| \`${status}\` | ${title || url} | ${url} | portal/${urlToFilename(url)} |`;
    const idx = content.indexOf(job4Marker);
    if (idx !== -1) {
      const tableEnd = content.indexOf('\n---', idx);
      if (tableEnd !== -1) {
        content = content.slice(0, tableEnd) + '\n' + insertLine + content.slice(tableEnd);
      }
    }
  }

  fs.writeFileSync(PROGRESS_FILE, content, 'utf8');
}

function isCompleted(url) {
  const content = fs.readFileSync(PROGRESS_FILE, 'utf8');
  return content.includes(`\`completed\``) && content.includes(url);
}

function htmlToMarkdown(title, bodyText, url) {
  return [
    `# ${title}`,
    '',
    `**Source:** ${url}`,
    `**Crawled:** ${new Date().toISOString().split('T')[0]}`,
    '',
    '## Content',
    '',
    bodyText.trim(),
  ].join('\n');
}

// ── Page extraction ──────────────────────────────────────────────────────────

async function extractPage(page, url) {
  await page.goto(url, { waitUntil: 'networkidle', timeout: 30000 });
  await page.waitForTimeout(WAIT_MS);

  const title = await page.title().catch(() => url);

  // Extract nav links (sidebar) for discovery
  const navLinks = await page.evaluate(() => {
    const anchors = Array.from(document.querySelectorAll('nav a[href], [class*="toc"] a[href], [class*="sidebar"] a[href]'));
    return anchors
      .map(a => ({ href: a.href, text: a.textContent.trim() }))
      .filter(a => a.href.includes('help.sap.com/docs/SAP_CPQ'));
  });

  // Extract main content text
  const bodyText = await page.evaluate(() => {
    // Remove nav, header, footer, scripts, styles
    ['nav', 'header', 'footer', 'script', 'style', '[class*="breadcrumb"]'].forEach(sel => {
      document.querySelectorAll(sel).forEach(el => el.remove());
    });

    // Try common content selectors
    const selectors = [
      '[class*="content-body"]',
      '[class*="topic-content"]',
      '[class*="help-content"]',
      'article',
      'main',
      '.content',
      '#content',
    ];

    for (const sel of selectors) {
      const el = document.querySelector(sel);
      if (el && el.innerText.trim().length > 100) {
        return el.innerText.trim();
      }
    }

    return document.body.innerText.trim();
  });

  return { title, bodyText, navLinks };
}

// ── Main crawler ─────────────────────────────────────────────────────────────

async function crawl() {
  if (!fs.existsSync(OUTPUT_DIR)) fs.mkdirSync(OUTPUT_DIR, { recursive: true });

  const browser = await chromium.launch({ headless: true });
  const context = await browser.newContext({
    userAgent: 'ClaudeBot/1.0 (+https://www.anthropic.com/claude-code)',
  });

  const visited = new Set();
  const queue = [...ENTRY_POINTS];
  let completed = 0;
  let failed = 0;

  console.log(`Starting crawl. Output: ${OUTPUT_DIR}`);

  while (queue.length > 0) {
    const batch = queue.splice(0, BATCH_SIZE);
    const newLinks = [];

    await Promise.all(batch.map(async (url) => {
      if (visited.has(url) || isCompleted(url)) {
        console.log(`  SKIP ${url}`);
        visited.add(url);
        return;
      }

      visited.add(url);
      const page = await context.newPage();

      try {
        console.log(`  FETCH ${url}`);
        const { title, bodyText, navLinks } = await extractPage(page, url);

        // Write markdown file
        const filename = urlToFilename(url);
        const filepath = path.join(OUTPUT_DIR, filename);
        fs.writeFileSync(filepath, htmlToMarkdown(title, bodyText, url), 'utf8');

        markProgress(url, 'completed', title);
        completed++;
        console.log(`  ✓ ${title} → ${filename}`);

        // Enqueue undiscovered nav links
        for (const { href } of navLinks) {
          if (!visited.has(href) && !queue.includes(href)) {
            newLinks.push(href);
          }
        }
      } catch (err) {
        console.error(`  ✗ FAILED ${url}: ${err.message}`);
        markProgress(url, `failed: ${err.message.substring(0, 60)}`, url);
        failed++;
      } finally {
        await page.close();
      }
    }));

    // Add newly discovered links to queue
    for (const link of newLinks) {
      if (!visited.has(link) && !queue.includes(link)) {
        queue.push(link);
      }
    }

    console.log(`Progress: ${completed} done, ${failed} failed, ${queue.length} remaining`);
  }

  await browser.close();
  console.log(`\nCrawl complete. ${completed} pages written to ${OUTPUT_DIR}`);
}

crawl().catch(err => {
  console.error('Fatal:', err);
  process.exit(1);
});
