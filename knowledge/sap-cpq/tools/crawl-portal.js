/**
 * SAP CPQ Help Portal Crawler — Targeted (v2)
 *
 * Only crawls the 6 documentation sections shown on help.sap.com/docs/SAP_CPQ
 * for version 2603 in English. Stays strictly within:
 *   https://help.sap.com/docs/SAP_CPQ/{GUIDE_GUID}/...
 *
 * Sections and their guide GUIDs:
 *   What's New        — abe5bf645c9542a5bd4cbfdcc1a4876c
 *   Administration    — 884885f05e6b4c8082254d4d9d63f19b (Quote 1.0)
 *                       bf1562733d5247f78f8f0a9c61e5382a (Quote 2.0)
 *                       6d41da9c405e44349a9f99eb69d22d2b (Migration Guide)
 *   Integration       — f80fbcd4f1c74232839c30ce26886f07
 *   End-User          — 551616e85ad64739835aa69241222f53
 *   Development       — 08a7929ad06d4680b4f18cb57bc1a1d3 (API)
 *                       7fc27540a0f14bd1a10b639117a9d4d7 (Scripting Events)
 *   Troubleshooting   — 665a9ee212394653a84a393035090802
 *                       f21989f09f494ce1a537942ae2523dc6 (Known Issues)
 *   Getting Started   — 8d3af393de3a485dad57d6d10768cdd1
 *
 * Setup:   npm install && npx playwright install chromium
 * Run:     node crawl-portal.js
 * Resume:  Re-run — completed pages (file exists in portal/) are skipped.
 */

const { chromium } = require('playwright');
const fs = require('fs');
const path = require('path');

// ── Config ─────────────────────────────────────────────────────────────────

const OUTPUT_DIR   = path.resolve(__dirname, '../portal');
const PROGRESS_FILE = path.resolve(__dirname, '../crawl-progress.md');
const QUEUE_FILE   = path.resolve(__dirname, 'queue-state.json');
const WAIT_MS      = 4000;
const BATCH_SIZE   = 2;

const BASE = 'https://help.sap.com/docs/SAP_CPQ';
const LOCALE_PARAMS = '?locale=en-US&state=PRODUCTION&version=2603';

// Guide GUIDs we are allowed to crawl — anything outside these is ignored
const ALLOWED_GUIDE_GUIDS = new Set([
  'abe5bf645c9542a5bd4cbfdcc1a4876c', // What's New
  '884885f05e6b4c8082254d4d9d63f19b', // Administration Quote 1.0
  'bf1562733d5247f78f8f0a9c61e5382a', // Administration Quote 2.0
  '6d41da9c405e44349a9f99eb69d22d2b', // Migration Guide Quote 2.0
  'f80fbcd4f1c74232839c30ce26886f07', // Integration Guide
  '551616e85ad64739835aa69241222f53', // End-User / User Guide
  '08a7929ad06d4680b4f18cb57bc1a1d3', // API Documentation
  '7fc27540a0f14bd1a10b639117a9d4d7', // Scripting Events
  '665a9ee212394653a84a393035090802', // Troubleshooting
  'f21989f09f494ce1a537942ae2523dc6', // Limitations and Known Issues
  '8d3af393de3a485dad57d6d10768cdd1', // Getting Started Guide
]);

// Map guide GUID → section subfolder under portal/
const GUID_TO_SECTION = {
  'abe5bf645c9542a5bd4cbfdcc1a4876c': 'whats-new',
  '884885f05e6b4c8082254d4d9d63f19b': 'admin-quote-1',
  'bf1562733d5247f78f8f0a9c61e5382a': 'admin-quote-2',
  '6d41da9c405e44349a9f99eb69d22d2b': 'migration-guide',
  'f80fbcd4f1c74232839c30ce26886f07': 'integration',
  '551616e85ad64739835aa69241222f53': 'user-guide',
  '08a7929ad06d4680b4f18cb57bc1a1d3': 'api-docs',
  '7fc27540a0f14bd1a10b639117a9d4d7': 'scripting-events',
  '665a9ee212394653a84a393035090802': 'troubleshooting',
  'f21989f09f494ce1a537942ae2523dc6': 'known-issues',
  '8d3af393de3a485dad57d6d10768cdd1': 'getting-started',
};

// Track used slugs per section to avoid filename collisions
const usedSlugs = {};

// Entry points — one root per guide, with version pinned
const ENTRY_POINTS = [
  `${BASE}/abe5bf645c9542a5bd4cbfdcc1a4876c${LOCALE_PARAMS}`,
  `${BASE}/884885f05e6b4c8082254d4d9d63f19b${LOCALE_PARAMS}`,
  `${BASE}/bf1562733d5247f78f8f0a9c61e5382a${LOCALE_PARAMS}`,
  `${BASE}/6d41da9c405e44349a9f99eb69d22d2b${LOCALE_PARAMS}`,
  `${BASE}/f80fbcd4f1c74232839c30ce26886f07${LOCALE_PARAMS}`,
  `${BASE}/551616e85ad64739835aa69241222f53${LOCALE_PARAMS}`,
  `${BASE}/08a7929ad06d4680b4f18cb57bc1a1d3${LOCALE_PARAMS}`,
  `${BASE}/7fc27540a0f14bd1a10b639117a9d4d7${LOCALE_PARAMS}`,
  `${BASE}/665a9ee212394653a84a393035090802${LOCALE_PARAMS}`,
  `${BASE}/f21989f09f494ce1a537942ae2523dc6${LOCALE_PARAMS}`,
  `${BASE}/8d3af393de3a485dad57d6d10768cdd1${LOCALE_PARAMS}`,
];

// ── URL helpers ──────────────────────────────────────────────────────────────

/** Strip #fragment and return a clean URL string. */
function normalizeUrl(rawUrl) {
  try {
    const u = new URL(rawUrl);
    u.hash = '';
    return u.toString();
  } catch {
    return rawUrl;
  }
}

/**
 * Return true if this URL is within one of our allowed guide GUIDs and is
 * strictly under help.sap.com/docs/SAP_CPQ/.
 */
function isCrawlable(url) {
  if (!url.startsWith(`${BASE}/`)) return false;
  // Skip binary/asset extensions
  if (/\.(pdf|zip|png|jpg|jpeg|gif|svg|css|js|ico|woff|woff2|ttf)(\?|$)/i.test(url)) return false;
  // Extract the guide GUID — the path segment immediately after /SAP_CPQ/
  const match = url.match(/\/docs\/SAP_CPQ\/([a-f0-9-]{32,36})/i);
  if (!match) return false;
  return ALLOWED_GUIDE_GUIDS.has(match[1].toLowerCase());
}

function slugify(str) {
  return str
    .toLowerCase()
    // Strip " | SAP Help Portal" boilerplate
    .replace(/\s*\|\s*sap help portal.*$/i, '')
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '')
    .substring(0, 80);
}

/** Extract guide GUID from a URL path. */
function guideGuidFromUrl(url) {
  const m = url.match(/\/docs\/SAP_CPQ\/([a-f0-9]{32})/i);
  return m ? m[1].toLowerCase() : null;
}

/**
 * Derive the section subfolder and a title-based filename for a page.
 * Falls back to URL slug if title not yet known.
 */
function pageFilepath(url, title) {
  const guid = guideGuidFromUrl(url);
  const section = guid ? (GUID_TO_SECTION[guid] || 'other') : 'other';
  const sectionDir = path.join(OUTPUT_DIR, section);
  if (!fs.existsSync(sectionDir)) fs.mkdirSync(sectionDir, { recursive: true });

  let baseSlug;
  if (title) {
    baseSlug = slugify(title);
  } else {
    // Fallback: slug from last two URL path segments
    const u = new URL(url);
    const parts = u.pathname.split('/').filter(Boolean);
    baseSlug = slugify(parts.slice(-1).join('-'));
  }
  if (!baseSlug) baseSlug = 'untitled';

  // Deduplicate within section
  if (!usedSlugs[section]) usedSlugs[section] = new Set();
  let finalSlug = baseSlug;
  let counter = 1;
  while (usedSlugs[section].has(finalSlug)) {
    finalSlug = `${baseSlug}-${counter++}`;
  }
  usedSlugs[section].add(finalSlug);

  return path.join(sectionDir, finalSlug + '.md');
}

/** Completion = any file in portal/{section}/ matches this URL's source. */
function isCompleted(url) {
  const guid = guideGuidFromUrl(url);
  if (!guid) return false;
  const section = GUID_TO_SECTION[guid];
  if (!section) return false;
  const sectionDir = path.join(OUTPUT_DIR, section);
  if (!fs.existsSync(sectionDir)) return false;
  // Check by scanning the section dir for a file whose Source: matches
  // (fast enough since sections have <600 files each)
  const urlNorm = normalizeUrl(url);
  for (const f of fs.readdirSync(sectionDir)) {
    if (!f.endsWith('.md')) continue;
    const content = fs.readFileSync(path.join(sectionDir, f), 'utf8');
    const srcLine = content.match(/\*\*Source:\*\*\s+(\S+)/);
    if (srcLine && normalizeUrl(srcLine[1]) === urlNorm) return true;
  }
  return false;
}

function markProgress(url, status, title = '') {
  // Only update pre-existing rows in crawl-progress.md (the original Job 4 entries).
  // New pages are tracked purely by file existence.
  let content = fs.readFileSync(PROGRESS_FILE, 'utf8');
  const escapedUrl = url.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
  const regex = new RegExp(`(\\| \`)(pending|completed|failed[^|]*)(\`)(\\s*\\|[^|]*\\|\\s*)${escapedUrl}`);
  if (regex.test(content)) {
    content = content.replace(regex, `| \`${status}\`$4${url}`);
    fs.writeFileSync(PROGRESS_FILE, content, 'utf8');
  }
}

/** Save queue to disk so we can resume if interrupted. */
function saveQueue(queue, visited) {
  fs.writeFileSync(QUEUE_FILE, JSON.stringify({
    pending: queue,
    visited: [...visited],
  }), 'utf8');
}

/** Load persisted queue, or fall back to entry points. */
function loadQueue() {
  if (fs.existsSync(QUEUE_FILE)) {
    try {
      const data = JSON.parse(fs.readFileSync(QUEUE_FILE, 'utf8'));
      const pending = (data.pending || []).filter(u => !isCompleted(u));
      const visited = new Set(data.visited || []);
      if (pending.length > 0) {
        console.log(`Resuming from saved queue: ${pending.length} pending, ${visited.size} visited.`);
        return { queue: pending, visited };
      }
    } catch { /* corrupt file — start fresh */ }
  }
  // Fresh start: seed from entry points, skip already-done
  const queue = ENTRY_POINTS.map(normalizeUrl).filter(u => !isCompleted(u));
  return { queue, visited: new Set() };
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
  await page.goto(url, { waitUntil: 'load', timeout: 60000 });
  await page.waitForTimeout(WAIT_MS);

  const title = await page.title().catch(() => url);

  // Collect nav links — fragment-stripped, within allowed guide GUIDs only
  const navLinks = await page.evaluate((base) => {
    const anchors = Array.from(document.querySelectorAll(
      'nav a[href], [class*="toc"] a[href], [class*="sidebar"] a[href], [class*="nav"] a[href]'
    ));
    return anchors
      .map(a => {
        try {
          const u = new URL(a.href);
          u.hash = '';
          return u.toString();
        } catch { return null; }
      })
      .filter(href => href && href.startsWith(`${base}/`));
  }, BASE);

  // Extract main content
  const bodyText = await page.evaluate(() => {
    ['nav', 'header', 'footer', 'script', 'style', '[class*="breadcrumb"]'].forEach(sel => {
      document.querySelectorAll(sel).forEach(el => el.remove());
    });
    const selectors = [
      '[class*="content-body"]',
      '[class*="topic-content"]',
      '[class*="help-content"]',
      'article', 'main', '.content', '#content',
    ];
    for (const sel of selectors) {
      const el = document.querySelector(sel);
      if (el && el.innerText.trim().length > 100) return el.innerText.trim();
    }
    return document.body.innerText.trim();
  });

  return { title, bodyText, navLinks };
}

// ── Main ─────────────────────────────────────────────────────────────────────

async function crawl() {
  if (!fs.existsSync(OUTPUT_DIR)) fs.mkdirSync(OUTPUT_DIR, { recursive: true });

  const alreadyDone = fs.readdirSync(OUTPUT_DIR).filter(f => f.endsWith('.md')).length;
  const { queue, visited } = loadQueue();

  if (queue.length === 0) {
    console.log(`Nothing to do — all ${alreadyDone} pages already crawled.`);
    // Clean up saved queue so next run starts fresh from entry points
    if (fs.existsSync(QUEUE_FILE)) fs.unlinkSync(QUEUE_FILE);
    return;
  }

  const browser = await chromium.launch({ headless: true });
  const context = await browser.newContext({
    userAgent: 'Mozilla/5.0 (compatible; ClaudeBot/1.0; +https://www.anthropic.com/claude-code)',
  });

  let completed = 0;
  let failed = 0;

  console.log(`Starting. ${alreadyDone} already done, ${queue.length} pending.`);
  console.log(`Allowed guides: ${ALLOWED_GUIDE_GUIDS.size} GUIDs across 6 sections.\n`);

  while (queue.length > 0) {
    const batch = queue.splice(0, BATCH_SIZE);
    const newLinks = [];

    await Promise.all(batch.map(async (url) => {
      const norm = normalizeUrl(url);
      if (visited.has(norm) || isCompleted(norm)) {
        visited.add(norm);
        return;
      }
      visited.add(norm);
      const page = await context.newPage();
      try {
        console.log(`  FETCH ${norm}`);
        const { title, bodyText, navLinks } = await extractPage(page, norm);

        const filepath = pageFilepath(norm, title);
        fs.writeFileSync(filepath, htmlToMarkdown(title, bodyText, norm), 'utf8');

        markProgress(norm, 'completed', title);
        completed++;
        console.log(`  ✓ [${alreadyDone + completed}] ${title} → ${path.relative(OUTPUT_DIR, filepath)}`);

        for (const href of navLinks) {
          const normHref = normalizeUrl(href);
          if (isCrawlable(normHref) && !visited.has(normHref) && !queue.includes(normHref)) {
            newLinks.push(normHref);
          }
        }
      } catch (err) {
        const reason = err.message.replace(/\s+/g, ' ').substring(0, 60);
        console.error(`  ✗ FAILED ${norm}: ${reason}`);
        markProgress(norm, `failed: ${reason}`, norm);
        failed++;
      } finally {
        await page.close();
      }
    }));

    for (const link of newLinks) {
      if (!visited.has(link) && !queue.includes(link)) queue.push(link);
    }

    // Persist queue after every batch so we can resume on interrupt
    saveQueue(queue, visited);

    const total = alreadyDone + completed + queue.length + failed;
    console.log(`Progress: ${alreadyDone + completed} done, ${failed} failed, ${queue.length} in queue (est. total: ~${total})`);
  }

  await browser.close();
  if (fs.existsSync(QUEUE_FILE)) fs.unlinkSync(QUEUE_FILE);
  console.log(`\nDone. ${alreadyDone + completed} total pages in ${OUTPUT_DIR}`);
}

crawl().catch(err => {
  console.error('Fatal:', err);
  process.exit(1);
});
