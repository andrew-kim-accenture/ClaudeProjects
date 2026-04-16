/**
 * rename-portal-files.js
 *
 * Renames all portal/ files from GUID-based names to
 * {section}/{page-title-slug}.md, organized into section subdirectories.
 *
 * Run once:  node tools/rename-portal-files.js
 */

const fs = require('fs');
const path = require('path');

const PORTAL_DIR = path.resolve(__dirname, '../portal');

// Map guide GUID → section folder name
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

function slugify(str) {
  return str
    .toLowerCase()
    // Strip trailing " | SAP Help Portal" boilerplate from page titles
    .replace(/\s*\|\s*sap help portal.*$/i, '')
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '')
    .substring(0, 80);
}

function extractTitle(content) {
  const m = content.match(/^#\s+(.+)/m);
  return m ? m[1].trim() : null;
}

function extractSourceGuid(content) {
  // Match the guide GUID — the path segment after /SAP_CPQ/
  const m = content.match(/\*\*Source:\*\*\s+https:\/\/help\.sap\.com\/docs\/SAP_CPQ\/([a-f0-9]{32})/i);
  return m ? m[1].toLowerCase() : null;
}

function main() {
  const files = fs.readdirSync(PORTAL_DIR)
    .filter(f => f.endsWith('.md') && !fs.statSync(path.join(PORTAL_DIR, f)).isDirectory());

  let moved = 0;
  let deleted = 0;
  let skipped = 0;

  // Track used filenames per section to handle duplicates
  const usedNames = {}; // section -> Set of slugs

  for (const file of files) {
    const oldPath = path.join(PORTAL_DIR, file);
    const content = fs.readFileSync(oldPath, 'utf8');

    const guid = extractSourceGuid(content);

    // Delete out-of-scope files
    if (!guid || !GUID_TO_SECTION[guid]) {
      console.log(`  DELETE (out of scope): ${file}`);
      fs.unlinkSync(oldPath);
      deleted++;
      continue;
    }

    const section = GUID_TO_SECTION[guid];
    const sectionDir = path.join(PORTAL_DIR, section);
    if (!fs.existsSync(sectionDir)) fs.mkdirSync(sectionDir, { recursive: true });

    const rawTitle = extractTitle(content);
    if (!rawTitle) {
      console.warn(`  WARN no title in ${file}, skipping`);
      skipped++;
      continue;
    }

    let slug = slugify(rawTitle);
    if (!slug) slug = 'untitled';

    // Deduplicate within the section
    if (!usedNames[section]) usedNames[section] = new Set();
    let finalSlug = slug;
    let counter = 1;
    while (usedNames[section].has(finalSlug)) {
      finalSlug = `${slug}-${counter++}`;
    }
    usedNames[section].add(finalSlug);

    const newPath = path.join(sectionDir, finalSlug + '.md');

    // Update the file content to record the new path (optional — leave content intact)
    fs.renameSync(oldPath, newPath);
    moved++;
    if (moved % 100 === 0) console.log(`  ${moved} files renamed...`);
  }

  // Remove any leftover empty files/dirs at portal root (non-.md)
  for (const entry of fs.readdirSync(PORTAL_DIR)) {
    const full = path.join(PORTAL_DIR, entry);
    const stat = fs.statSync(full);
    if (!stat.isDirectory()) {
      // Any remaining non-directory file at root is a leftover
      console.log(`  DELETE (leftover root file): ${entry}`);
      fs.unlinkSync(full);
      deleted++;
    }
  }

  console.log(`\nDone.`);
  console.log(`  Moved:   ${moved}`);
  console.log(`  Deleted: ${deleted}`);
  console.log(`  Skipped: ${skipped}`);
  console.log(`\nSection summary:`);
  for (const [section, names] of Object.entries(usedNames)) {
    console.log(`  ${section}: ${names.size} pages`);
  }
}

main();
