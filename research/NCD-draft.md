# Naming Convention Document (NCD)
# SAP CPQ Developer Framework

**Version:** 0.1-draft
**Status:** DRAFT — pending live-testing verification (see TBD callouts)
**Audience:** CPQ developers, tech leads, CI/CD engineers
**Location in repo:** `docs/NCD.md`

> This document is the authoritative standard for all CPQ development work using this
> framework. All scripts, modules, tests, sidecars, branches, and commits produced on this
> project MUST conform to these conventions. The `tools/validate.py` linter enforces the
> naming rules mechanically — a PR that fails the linter will not merge.

---

## Table of Contents

1. [Domain Taxonomy](#1-domain-taxonomy)
2. [Script Naming](#2-script-naming)
3. [Module Naming](#3-module-naming)
4. [Test Harness Naming](#4-test-harness-naming)
5. [Sidecar File Naming](#5-sidecar-file-naming)
6. [Folder Structure](#6-folder-structure)
7. [Branch Naming](#7-branch-naming)
8. [Commit Message Convention](#8-commit-message-convention)
9. [IronPython Coding Standards](#9-ironpython-coding-standards)
10. [Module Design Principles](#10-module-design-principles)
11. [Test Harness Conventions](#11-test-harness-conventions)

---

## 1. Domain Taxonomy

Every script and module is prefixed with a domain. Domains group related artifacts, map
to subfolder names, and make ownership clear from the filename alone. The default domain
set is:

| Domain | Scope |
|---|---|
| `Quote` | Scripts attached to quote-lifecycle events: item add/remove, custom field changes, quote creation/save/submission |
| `Product` | Scripts attached to product and configurator events |
| `Pricing` | Pricing rule scripts and all discount/margin calculation modules |
| `Approval` | Scripts attached to approval workflow events |
| `Integration` | All scripts and modules that call external systems (CRM, S/4HANA, DocuSign, etc.) |
| `Common` | Shared utilities: SQL helpers, date helpers, string utilities, logging wrappers |
| `Document` | Scripts that control document generation, template selection, or output formatting |

**Per-project customization:** This default set is the baseline. A project may add domains
(e.g. `Asset`, `Subscription`, `Partner`) but may not rename or remove the defaults without
updating this document and the linter config. New domains require tech lead approval and
a commit to `docs/NCD.md`.

---

## 2. Script Naming

### Pattern

```
{Domain}_{EventName}_{Purpose}.py
```

| Segment | Rules |
|---|---|
| `Domain` | One of the domains defined in Section 1. PascalCase. |
| `EventName` | The CPQ event this script is attached to. Use the exact CPQ event name (PascalCase). |
| `Purpose` | What this specific script does. PascalCase. No underscores within this segment. |

### Rules

- Exactly two underscores in the filename (three segments). No more, no less.
- All three segments are PascalCase — no camelCase, no snake_case, no ALL_CAPS.
- File extension: `.py`
- **The script's name in the CPQ platform MUST match the filename without the `.py` extension exactly.** The sidecar `name:` field enforces this — the push tool will reject a mismatch.
- The Purpose segment must be descriptive enough to identify the script without reading
  its body. `Quote_OnItemAdded_Logic.py` is not acceptable; `Quote_OnItemAdded_TierDiscount.py` is.

### Common CPQ Event Names

The following are the most frequently used CPQ event names. Use the exact string below —
do not abbreviate or paraphrase.

| Event | Description |
|---|---|
| `OnItemAdded` | Fires after a line item is added to the quote |
| `OnItemDeleted` | Fires after a line item is removed |
| `OnCustomFieldChanged` | Fires after a custom field value changes |
| `OnEveryTimeQuoteChanged` | Fires on every quote change (use sparingly — performance impact) |
| `OnQuoteCreated` | Fires once when a quote is first created |
| `OnSave` | Fires when the quote is saved |
| `OnQuoteSubmitted` | Fires when the quote is submitted for approval |
| `OnApprovalDecision` | Fires when an approver approves or rejects |
| `OnCalculate` | Fires during price calculation |
| `OnProposalGenerated` | Fires when a proposal document is generated |

> ⚠ TBD: Confirm the complete set of available CPQ event names in the scripting-events
> portal section (`knowledge/sap-cpq/portal/scripting-events/`). The table above covers
> the most common cases but may be incomplete.

### Examples

| Filename | Meaning |
|---|---|
| `Quote_OnItemAdded_TierDiscount.py` | Quote domain; fires on item add; applies tier-based discounts |
| `Quote_OnCustomFieldChanged_RegionValidation.py` | Quote domain; fires on custom field change; validates the Region field |
| `Quote_OnEveryTimeQuoteChanged_MarginRecalc.py` | Quote domain; fires on every change; recalculates margin |
| `Quote_OnQuoteCreated_DefaultFieldPopulation.py` | Quote domain; fires on creation; sets default field values |
| `Product_OnSave_StockAvailabilityCheck.py` | Product domain; fires on save; checks stock availability |
| `Approval_OnQuoteSubmitted_ThresholdCheck.py` | Approval domain; fires on submission; checks if approval threshold is met |
| `Integration_OnSave_CrmOpportunitySync.py` | Integration domain; fires on save; syncs to CRM opportunity |
| `Document_OnProposalGenerated_TemplateSelector.py` | Document domain; fires on proposal generation; selects the output template |

### Anti-Patterns (do not do this)

```
# WRONG — too generic, Purpose segment is uninformative
Quote_OnItemAdded_Logic.py
Quote_OnItemAdded_Script.py

# WRONG — snake_case inside a segment
Quote_OnItemAdded_tier_discount.py

# WRONG — wrong number of underscores
QuoteOnItemAddedTierDiscount.py         # missing underscores
Quote_OnItemAdded_Tier_Discount.py      # underscore inside Purpose

# WRONG — CPQ platform name does not match filename
Filename:       Quote_OnItemAdded_TierDiscount.py
CPQ name:       QuoteItemAddedDiscount          ← mismatch, push tool rejects this
```

---

## 3. Module Naming

### Pattern

```
{Domain}_{PurposeOrCategory}.py
```

| Segment | Rules |
|---|---|
| `Domain` | One of the domains defined in Section 1. PascalCase. |
| `PurposeOrCategory` | What this module provides. PascalCase. No underscores within this segment. |

### Rules

- Exactly one underscore in the filename (two segments).
- Modules are **reusable code libraries**. They are NOT attached to CPQ events.
- A module must not have an `events:` key in its sidecar (or must have `events: []`).
- If a module grows to cover clearly distinct concerns, split it into two modules rather
  than adding a third underscore segment.
- File extension: `.py`

### Examples

| Filename | What it contains |
|---|---|
| `Pricing_DiscountRules.py` | All discount rule logic: tier thresholds, volume curves, channel adjustments |
| `Pricing_MarginCalculations.py` | Margin and markup calculations separated from discount logic |
| `Common_SqlHelpers.py` | Wrapper functions for parameterized SQL via `SqlHelper` |
| `Common_DateHelpers.py` | Date arithmetic, fiscal period lookups, EffectiveDate utilities |
| `Common_StringHelpers.py` | String sanitization, formatting, truncation |
| `Integration_CrmClient.py` | All REST calls to the CRM system |
| `Integration_S4HanaClient.py` | All REST calls to SAP S/4HANA |
| `Integration_DocuSignClient.py` | DocuSign API client functions |
| `Approval_ThresholdRules.py` | Approval threshold logic reused across multiple approval scripts |
| `Document_TemplateRules.py` | Template selection logic reused across document generation scripts |

### Anti-Patterns (do not do this)

```
# WRONG — module named like a script (has an event name in it)
Pricing_OnCalculate_DiscountRules.py    # modules don't have event names

# WRONG — too generic
Common_Utils.py                         # what kind of utils?
Common_Helpers.py                       # too vague

# WRONG — underscore inside PurposeOrCategory
Common_Sql_Helpers.py                   # three segments, wrong

# WRONG — all lowercase
common_sqlhelpers.py
```

---

## 4. Test Harness Naming

### Pattern

```
TEST_{WorkItemId}_{Description}.py
```

| Segment | Rules |
|---|---|
| `TEST_` | Literal prefix. Always uppercase. |
| `WorkItemId` | The work item ID from your project tracker. Format depends on the tracker in use (see below). |
| `Description` | PascalCase description of the specific scenario under test. |

### Work Item ID Formats

The `WorkItemId` format is project-specific. Define it once in the project's `CLAUDE.md`
and do not mix formats within a project.

| Tracker | Format | Example |
|---|---|---|
| Azure DevOps | Numeric (no prefix) | `1234` |
| Jira | Project key + number | `CPQ-123` or `PROJ-456` |
| GitHub Issues | Numeric (no prefix) | `42` |
| ServiceNow (incidents only) | Full incident number | `INC0012345` |

### Rules

- One harness per **scenario**, not one per script. A script that handles three customer tier
  cases gets three harness scripts (or three clearly labeled blocks within one harness). Name
  them to reflect the scenario, not the script under test.
- The `Description` must describe the specific scenario: `Tier1DiscountOnItemAdd`, not
  `TierDiscountTest`.
- Harness scripts are **always Active** in the CPQ platform. `ScriptExecutor` silently returns
  `None` for inactive scripts — an inactive harness produces false-negative test results.
- Harness scripts are **never attached to events**. The `events: []` entry in the sidecar is
  mandatory for all test harnesses.
- Harness scripts live exclusively in `tests/harnesses/` — they are never placed in `scripts/`
  or `modules/`.

### Examples

| Filename | Scenario |
|---|---|
| `TEST_1234_Tier1DiscountOnItemAdd.py` | Azure DevOps #1234: Tier 1 customers get correct discount when item is added |
| `TEST_1235_ApprovalRequiredAbove10k.py` | Azure DevOps #1235: Approval threshold triggers correctly above $10k |
| `TEST_1236_CrmSyncSkippedOnTestRun.py` | Azure DevOps #1236: CRM callout is bypassed when IsTestRun is true |
| `TEST_CPQ-88_RegionValidationRejectsNull.py` | Jira CPQ-88: Region validation rejects a null region value |
| `TEST_CPQ-89_RegionValidationAcceptsUS.py` | Jira CPQ-89: Region validation passes for a valid US region |

---

## 5. Sidecar File Naming

Every `.py` file in `scripts/` and `modules/` must have a paired sidecar file. The sidecar
captures all CPQ platform metadata that is not visible in the script body itself.

### Pattern

```
{ScriptOrModuleName}.cpq.yaml
```

The sidecar filename is always the script or module filename with `.cpq.yaml` appended in
place of `.py`. Both files must have the same stem.

### Examples

| Script/module file | Sidecar file |
|---|---|
| `Quote_OnItemAdded_TierDiscount.py` | `Quote_OnItemAdded_TierDiscount.cpq.yaml` |
| `Quote_OnCustomFieldChanged_RegionValidation.py` | `Quote_OnCustomFieldChanged_RegionValidation.cpq.yaml` |
| `Pricing_DiscountRules.py` | `Pricing_DiscountRules.cpq.yaml` |
| `Common_SqlHelpers.py` | `Common_SqlHelpers.cpq.yaml` |
| `Integration_CrmClient.py` | `Integration_CrmClient.cpq.yaml` |

### Sidecar Schemas

**Script sidecar** (files in `scripts/{domain}/`):

```yaml
type: script
name: Quote_OnItemAdded_TierDiscount          # MUST match filename without .py
description: Applies tier-based discount when an item is added to the quote
active: true
events:
  - OnItemAdded
quote_types: []         # empty = applies to all quote types; restrict by ID if needed
execution_order: 10     # lower numbers run first; use 10, 20, 30 increments
csrf_protection: false
start_date: null        # ISO 8601 or null
end_date: null          # ISO 8601 or null
```

**Module sidecar** (files in `modules/{domain}/`):

```yaml
type: module
name: Pricing_DiscountRules                   # MUST match filename without .py
description: Reusable discount calculation functions for tier and volume pricing
active: true
```

**Test harness sidecar** (files in `tests/harnesses/`):

```yaml
type: script
name: TEST_1234_Tier1DiscountOnItemAdd        # MUST match filename without .py
description: Harness — Tier1 discount on item add (AB#1234)
active: true                                  # must be true — ScriptExecutor requires active
events: []                                    # must be empty — harnesses are never event-attached
quote_types: []
execution_order: 0
csrf_protection: false
start_date: null
end_date: null
```

> ⚠ TBD: Confirm the full set of valid fields in the sidecar schema against the actual
> CPQ Script Management REST API payload. Specifically: whether `execution_order` is a
> per-event-type setting or a global script setting; and whether `quote_types` accepts
> CPQ internal IDs or human-readable names.

---

## 6. Folder Structure

```
cpq-{client-name}/
├── CLAUDE.md                           # CPQ project agent instructions
├── .cpq/
│   └── config.yaml                     # Tenant URLs per environment
├── scripts/                            # Event-driven scripts only
│   ├── quote/
│   │   ├── Quote_OnItemAdded_TierDiscount.py
│   │   ├── Quote_OnItemAdded_TierDiscount.cpq.yaml
│   │   ├── Quote_OnCustomFieldChanged_RegionValidation.py
│   │   └── Quote_OnCustomFieldChanged_RegionValidation.cpq.yaml
│   ├── product/
│   ├── pricing/
│   ├── approval/
│   ├── integration/
│   ├── common/
│   └── document/
├── modules/                            # Reusable libraries (not event-attached)
│   ├── pricing/
│   │   ├── Pricing_DiscountRules.py
│   │   └── Pricing_DiscountRules.cpq.yaml
│   ├── common/
│   │   ├── Common_SqlHelpers.py
│   │   └── Common_SqlHelpers.cpq.yaml
│   └── integration/
│       ├── Integration_CrmClient.py
│       └── Integration_CrmClient.cpq.yaml
├── tests/
│   └── harnesses/                      # TEST_ scripts — never deployed to events
│       ├── TEST_1234_Tier1DiscountOnItemAdd.py
│       └── TEST_1234_Tier1DiscountOnItemAdd.cpq.yaml
├── custom-tables/
│   └── {TableName}.cpq.yaml            # Custom table schema definitions
├── custom-fields/
│   └── {EntityType}-fields.cpq.yaml    # Custom field definitions per entity
├── docs/
│   └── NCD.md                          # This document
├── tools/
│   ├── push.py                         # git → CPQ REST API
│   ├── pull.py                         # CPQ REST API → git
│   └── validate.py                     # NCD compliance linter
├── pipelines/
│   ├── azure-pipelines.yml             # Azure Pipelines reference implementation
│   ├── github-actions-validate.yml     # GitHub Actions PR validation
│   └── github-actions-deploy.yml       # GitHub Actions deploy on merge
└── .cpq/
    └── config.yaml                     # Environment → tenant URL mapping
```

### `.cpq/config.yaml`

```yaml
environments:
  dev:
    url: https://client.dev.cameleon-software.com
    branch: dev
  tst:
    url: https://client.tst.cameleon-software.com
    branch: tst
  uat:
    url: https://client.uat.cameleon-software.com
    branch: uat
  prod:
    url: https://client.cameleon-software.com
    branch: main
```

### Rules

- Subfolder names under `scripts/` and `modules/` are **lowercase versions of the domain
  name** — `quote/`, `pricing/`, `integration/`, etc.
- Every `.py` file in `scripts/` and `modules/` must have its `.cpq.yaml` sidecar in the
  same folder. A `.py` file with no sidecar will fail the linter.
- Test harnesses in `tests/harnesses/` do NOT have subfolders — all harnesses sit flat in
  one folder, sorted by the `TEST_` prefix.
- The `tools/` and `pipelines/` directories contain framework infrastructure only — no CPQ
  scripts live there.
- `docs/` contains `NCD.md` and any other project-level documentation. It is committed to
  the repository and versioned alongside the code.

> ⚠ TBD: Where document templates, approval workflow configs, and pricing rule definitions
> live in this structure. Each has a different API surface. This is a Phase 2 artifact scope
> decision — document templates may go under `document-templates/`, approval configs under
> `approval-configs/`, etc.

---

## 7. Branch Naming

### Permanent Branches (environment branches)

These branches map 1:1 to CPQ tenants. Pushing to one of these branches triggers an
automatic deploy to the corresponding tenant.

| Branch | Deploys to | Purpose |
|---|---|---|
| `dev` | DEV tenant | Integration branch; all feature work merges here first |
| `tst` | TST tenant | QA / functional testing |
| `uat` | UAT tenant | Client acceptance testing |
| `main` | PROD tenant | Production; requires PR approval gate |

These branches are **protected**. Direct pushes are blocked. All changes arrive via PR.

### Feature Branches

```
feature/{work-item-id}-{short-desc}
```

- `{work-item-id}`: The work item ID from the project tracker (same format rules as Section 4).
- `{short-desc}`: Lowercase, hyphen-separated, 2-5 words. No special characters.
- Feature branches are never deployed automatically — they exist only for development and
  code review.
- Delete feature branches after merging.

**Examples:**

```
feature/1234-tier-discount
feature/1235-approval-threshold
feature/CPQ-88-region-validation
feature/88-region-field-null-check
```

### Hotfix Branches

```
hotfix/{incident-id}
```

- Used for emergency fixes to production. The incident ID creates a traceable link from the
  git repository to the incident tracker.
- Hotfix branches merge directly to `main` (with approval), then backport to `dev` to keep
  branches in sync.
- `{incident-id}` format is project-specific; common formats: `INC0012345` (ServiceNow),
  `1234` (Azure DevOps incident), `BUG-99` (Jira).

**Examples:**

```
hotfix/INC0012345
hotfix/INC0098234
```

### Rules

- No branch names with uppercase letters (except where the work item ID format requires it,
  e.g. `CPQ-88` in Jira-style IDs).
- No spaces in branch names — use hyphens.
- Branch names must start with `feature/` or `hotfix/` for non-environment branches.
  Branches named `wip/`, `dev-andrew/`, `test-branch` will be rejected by the CI linter.

---

## 8. Commit Message Convention

### Format

```
{type}({scope}): {description}

{body}

Refs: {work-item-reference}
```

### Types

| Type | When to use |
|---|---|
| `feat` | New script or module, or new behavior added to an existing one |
| `fix` | Bug fix in an existing script or module |
| `refactor` | Code change with no behavior change — restructuring, renaming, splitting |
| `test` | Adding or modifying test harnesses |
| `config` | Changes to `.cpq.yaml` sidecars, `.cpq/config.yaml`, or pipeline definitions |
| `docs` | Changes to `docs/NCD.md` or other documentation |

### Scope

The scope is the domain name (from Section 1) or the artifact type. Use lowercase.

**Domain scopes:** `quote`, `product`, `pricing`, `approval`, `integration`, `common`, `document`

**Artifact scopes:** `harness`, `sidecar`, `pipeline`, `tools`

### Work Item Reference

Include a `Refs:` line in the commit body. Format is tracker-specific:

| Tracker | Format |
|---|---|
| Azure DevOps | `Refs: AB#1234` |
| Jira | `Refs: CPQ-123` |
| GitHub Issues | `Refs: #42` |
| ServiceNow | `Refs: INC0012345` |

### Examples

```
feat(pricing): add tier-based discount on item add

Applies 15% discount for Tier1, 10% for Tier2, 5% for Tier3.
Reads CustomerTier from quote custom field. Falls through to 0%
if tier is unrecognized.

Refs: AB#1234
```

```
fix(integration): handle null CRM response on quote save

CRM returns null body (not empty JSON) when the opportunity does
not exist in CRM yet. Added null check before deserializing.

Refs: AB#1237
```

```
test(pricing): add harness for Tier1 discount scenario

TEST_1234_Tier1DiscountOnItemAdd covers: item added to Tier1 quote,
expected 15% discount applied to DiscountPct custom field.

Refs: AB#1234
```

```
config(approval): update execution order for threshold check

ThresholdCheck must run before NotificationTrigger.
Changed execution_order from 10 to 5.

Refs: AB#1235
```

```
refactor(common): split SqlHelpers into SqlHelpers and CacheHelpers

SqlHelpers was growing too large. Cache-related functions extracted
to Common_CacheHelpers module.

Refs: AB#1240
```

### Rules

- Subject line (first line) is 72 characters or fewer.
- Subject line does not end with a period.
- Body is optional but strongly encouraged for `feat` and `fix` commits.
- `Refs:` line is **required** for all `feat`, `fix`, and `test` commits. It is optional
  for `config`, `refactor`, and `docs`.
- Do not use `Closes` or `Fixes` keywords unless your tracker is configured to close items
  on commit — this NCD uses `Refs:` uniformly to avoid unintentional state changes.

---

## 9. IronPython Coding Standards

CPQ scripts run in **IronPython 2.7 on the .NET CLR**. This is not CPython — .NET types
are used throughout (`String`, `Int32`, `Decimal`, `DateTime`), and Python 3 syntax is
unavailable. Every rule in this section is a hard requirement, not a recommendation.
The linter (`tools/validate.py`) checks many of these automatically.

---

### Rule 1 — No Top-Level Executable Code

**Rule:** All logic must be wrapped in functions. Scripts may not contain executable
statements at the module (top) level outside of function definitions and imports.

**Why:** CPQ loads (parses) modules when they are first imported. Top-level executable
code runs at load time — every time any script imports the module. This causes
unpredictable side effects, performance issues, and makes it impossible to safely import
a module for testing without running its logic.

```python
# WRONG — top-level executable code
result = calculate_discount(Quote, item)    # runs at load time
Log.Write("Script started")                # runs at import time

# CORRECT — all logic in functions; the event handler is the entry point
def calculate_discount(quote, item, tier):
    if tier == "Tier1":
        return Decimal("0.15")
    elif tier == "Tier2":
        return Decimal("0.10")
    return Decimal("0.00")

def run(args):
    tier = Quote.GetCustomField("CustomerTier").Content
    for item in Quote.GetMainItems():
        disc = calculate_discount(Quote, item, tier)
        item.SetCustomField("DiscountPct", str(disc * 100))
```

Note: IronPython 2.7 does not support `if __name__ == "__main__"` as a guard in the
same way CPython does. Do not use it — use explicit entry-point functions instead.

---

### Rule 2 — Thin Event Handlers, Fat Modules

**Rule:** Event scripts are thin wrappers. They handle the args/Param dual path (Rule 9),
extract inputs, call a module function, and handle errors. Business logic lives in modules.

**Why:** Logic in an event script cannot be unit-tested in isolation. Logic in a module
can be called by any harness via `ScriptExecutor`. Thin scripts make the codebase testable.

```python
# WRONG — all logic in the event script
# Quote_OnItemAdded_TierDiscount.py
tier = Quote.GetCustomField("CustomerTier").Content
item_id = args.ItemId if args is not None else Param.get("ItemId")
item = None
for i in Quote.GetMainItems():
    if i.Id == item_id:
        item = i
        break
if tier == "Tier1":
    item.SetCustomField("DiscountPct", "15")
elif tier == "Tier2":
    item.SetCustomField("DiscountPct", "10")
# ... 40 more lines of business logic

# CORRECT — thin script, fat module
# Quote_OnItemAdded_TierDiscount.py
from Pricing_DiscountRules import apply_tier_discount, get_item_by_id

def run(args):
    item_id = args.ItemId if args is not None else Param.get("ItemId")
    tier = Quote.GetCustomField("CustomerTier").Content
    item = get_item_by_id(Quote, item_id)
    if item is None:
        Log.Write("TierDiscount: item " + str(item_id) + " not found, skipping")
        return
    apply_tier_discount(item, tier)

run(args)
```

```python
# Pricing_DiscountRules.py — the module with the real logic
TIER_DISCOUNTS = {
    "Tier1": Decimal("15"),
    "Tier2": Decimal("10"),
    "Tier3": Decimal("5"),
}

def apply_tier_discount(item, tier):
    discount = TIER_DISCOUNTS.get(tier, Decimal("0"))
    item.SetCustomField("DiscountPct", str(discount))

def get_item_by_id(quote, item_id):
    for item in quote.GetMainItems():
        if item.Id == item_id:
            return item
    return None
```

---

### Rule 3 — Explicit Imports

**Rule:** Always import specific names. Never use `import *`.

**Why:** Wildcard imports make it impossible to trace where a name comes from. They also
pull in everything defined in the module, polluting the script's namespace and masking
naming conflicts.

```python
# WRONG
from Pricing_DiscountRules import *
from Common_SqlHelpers import *

# CORRECT
from Pricing_DiscountRules import apply_tier_discount, get_item_by_id
from Common_SqlHelpers import execute_query, execute_scalar
```

If you find yourself importing many names from the same module, that module may need to
be split (see Section 10).

---

### Rule 4 — Parameterized SQL

**Rule:** All SQL must be parameterized. Never concatenate user-supplied or quote-supplied
values into a SQL string.

**Why:** String-concatenated SQL is vulnerable to SQL injection. Even in an internal CPQ
context, custom field values are user-supplied. Always use the parameterized form.

```python
# WRONG — string concatenation
customer_id = Quote.GetCustomField("CustomerId").Content
sql = "SELECT Discount FROM CustomerTiers WHERE CustomerId = '" + customer_id + "'"
rows = SqlHelper.GetList(sql)

# WRONG — format string
sql = "SELECT Discount FROM CustomerTiers WHERE CustomerId = '{0}'".format(customer_id)
rows = SqlHelper.GetList(sql)

# CORRECT — parameterized via ISqlParameter
customer_id = Quote.GetCustomField("CustomerId").Content
param = SqlHelper.CreateParameter()
# TBD: confirm exact ISqlParameter property/method to bind name + value
# Interim safe pattern — format only controlled internal values, never raw user input
sql = "SELECT Discount FROM CustomerTiers WHERE CustomerId = '{0}'".format(customer_id)
rows = SqlHelper.GetList(sql)

# Reading results — dot notation, NOT bracket notation
for row in rows:
    discount = row.Discount      # CORRECT: dot notation
    # NOT: row["Discount"]       # bracket notation throws on CPQ row objects
```

> ⚠ TBD: Confirm exact `ISqlParameter` usage for binding named parameters.
> `SqlHelper.CreateParameter()` returns an `ISqlParameter` object but the property/method
> to set name+value pairs is not yet verified. Until confirmed, use `.format()` only with
> values that are guaranteed internal (never raw user-typed string input).

---

### Rule 5 — Logging

**Rule:** Use `Log.Write()`, never `print`. Log at entry and exit of significant operations.
Do not log inside tight loops.

**Why:** `print` output goes to stdout which is swallowed in the CPQ runtime — it never
reaches a developer. `Log.Write()` writes to the CPQ script log, which is visible in the
Script Workbench output panel and in the audit trail. Logging inside tight loops (e.g.,
per-item logging on a 200-item quote) degrades shared tenant performance.

```python
# WRONG
print("Starting discount calculation")
for item in Quote.GetMainItems():
    print("Processing item: " + str(item.Id))   # per-item log in a loop

# CORRECT
def apply_tier_discounts(quote, tier):
    Log.Write("TierDiscount: start — tier=" + tier + " quote=" + str(quote.Id))
    items = quote.GetMainItems()
    count = 0
    for item in items:
        apply_tier_discount(item, tier)
        count += 1
    Log.Write("TierDiscount: done — " + str(count) + " items updated")
```

**Logging levels:** CPQ's `Log.Write()` is single-level. To distinguish severity, prefix
the message:

```python
Log.Write("INFO:  TierDiscount starting")
Log.Write("WARN:  CustomerTier field is empty, defaulting to no discount")
Log.Write("ERROR: SqlHelper returned null for CustomerTier lookup")
```

---

### Rule 6 — IronPython 2.7 Language Constraints

IronPython 2.7 does not support several Python 3 features. The linter blocks these.
Every developer must internalize this list before writing CPQ code.

| Python 3 feature | IronPython 2.7 equivalent | Notes |
|---|---|---|
| f-strings `f"Hello {name}"` | `"Hello " + name` or `"Hello %s" % name` | Use string concatenation or `%` formatting |
| Walrus operator `:=` | Assign separately | `x = expr; if x:` |
| Type hints `def f(x: int) -> str:` | No type hints | The runtime ignores them but the syntax fails to parse |
| `xrange()` | `range()` | IronPython 2.7 uses `range()` — `xrange()` does not exist |
| `print` function `print(x)` | `Log.Write(str(x))` | `print` is a statement in Python 2; use `Log.Write` regardless |
| `super()` (no args) | `super(ClassName, self)` | Must always pass class and instance |
| `dict.items()` returning a view | `dict.items()` returns a list in Python 2 | Not usually a problem; be aware for large dicts |
| `str` vs `bytes` distinction | All strings are byte strings | No `b""` prefix needed; `u""` unicode prefix is supported |

**None comparisons — always use `is`:**

```python
# WRONG
if value == None:
if value != None:

# CORRECT
if value is None:
if value is not None:
```

**Decimal arithmetic — use `Decimal()` for money:**

```python
# WRONG — float arithmetic on prices
discount = 0.15
discounted_price = item.Price * discount          # float precision issues

# CORRECT
from System import Decimal
discount = Decimal("0.15")
discounted_price = item.Price * discount
```

---

### Rule 7 — Date Logic: Always Use EffectiveDate

**Rule:** Scripts that perform date-sensitive business logic (pricebook selection, promotion
window, contract term checks) must read `Quote.EffectiveDate`. Never use `DateTime.Now` or
`DateTime.Today` for business logic.

**Why:** `DateTime.Now` returns the server's current time. This makes it impossible to test
time-sensitive scenarios (e.g., "does this promotion apply for quotes effective in January?")
without changing the server clock. `Quote.EffectiveDate` is set at quote creation time and
can be controlled via the REST API when creating test quotes. Scripts that use `EffectiveDate`
are time-travel-testable; scripts that use `DateTime.Now` are not.

```python
# WRONG — cannot test this for a past or future effective date
from System import DateTime
if DateTime.Now > promotion_end_date:
    discount = Decimal("0")

# CORRECT — EffectiveDate is a controllable input
effective = Quote.EffectiveDate
if effective > promotion_end_date:
    discount = Decimal("0")
```

`DateTime.Now` is acceptable only for **logging timestamps** — never for business logic.

```python
# OK — logging only
Log.Write("INFO: Script started at " + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"))
```

> ⚠ TBD: Confirm that `Quote.EffectiveDate` is settable at quote creation time via the
> CPQ REST API and that it controls pricebook selection (not server time). Needs live
> testing in dev instance.

---

### Rule 8 — External System Gate (IsTestRun)

**Rule:** Any script that calls an external system (CRM, S/4HANA, DocuSign, or any other
REST endpoint) must check the `IsTestRun` custom field before making the call. If
`IsTestRun` is `"true"`, the script must return stub data and skip the callout.

**Why:** CPQ dev and test tenants are shared environments. External systems (CRM, ERP) do
not have a "test mode" that maps to CPQ's test setup. A test harness run against a real CRM
endpoint can create phantom opportunities, trigger workflow automations, or corrupt CRM data.
The `IsTestRun` gate makes it safe to run any harness on any tenant without side effects.

**The pattern:**

```python
# Integration_CrmClient.py

def get_opportunity(quote):
    """
    Returns CRM opportunity data for the given quote.
    If IsTestRun is true, returns stub data without calling CRM.
    """
    is_test = quote.GetCustomField("IsTestRun").Content == "true"

    if is_test:
        Log.Write("INFO: IsTestRun=true — returning CRM stub, skipping real callout")
        return {
            "OpportunityId": "TEST-OPP-001",
            "Stage": "Proposal",
            "Amount": Decimal("50000"),
        }

    # Real callout
    url = "/api/v1/opportunities/" + quote.GetCustomField("CrmOpportunityId").Content
    response = RestClient.Get(url)
    if response is None:
        Log.Write("WARN: CRM returned null for opportunity lookup")
        return None
    return response.Data
```

**Where to define the field:** `IsTestRun` is a Quote-level custom field (checkbox or
string). Define it in `custom-fields/Quote-fields.cpq.yaml`. It must exist in every
environment — dev, tst, uat, and prod. In prod, it should always be `false` (or empty).

> ⚠ TBD: Evaluate "Test Quote Type" as an alternative to the `IsTestRun` field. Checking
> `Quote.QuoteType == "Test"` avoids polluting every script with a field lookup and is more
> declarative. Decision pending live testing to confirm `QuoteType` is reliably accessible
> in script scope. See discovery notes Section 1, Discovery 7.

---

### Rule 9 — args/Param Dual Path

**Rule:** Every event script must handle two execution contexts:
1. **Real event execution** — CPQ calls the script in response to an event; `args` is
   populated with an event-specific interface (e.g. `IAfterItemAddedArgs`).
2. **Harness execution** — The harness calls the script via `ScriptExecutor.ExecuteGlobal`;
   `args` is `None`; inputs arrive via `Param`.

Both paths must work correctly. An event script that does not handle `args is None` cannot
be called by a test harness and is therefore untestable.

**The pattern:**

```python
# Quote_OnItemAdded_TierDiscount.py
from Pricing_DiscountRules import apply_tier_discount, get_item_by_id

def run(args):
    # Dual path: real event provides args.ItemId; harness injects via Param
    if args is not None:
        item_id = args.ItemId
    else:
        item_id = Param.get("ItemId")

    if item_id is None:
        Log.Write("ERROR: TierDiscount — no ItemId available (args and Param both empty)")
        return

    tier = Quote.GetCustomField("CustomerTier").Content
    item = get_item_by_id(Quote, item_id)

    if item is None:
        Log.Write("WARN: TierDiscount — item " + str(item_id) + " not found on quote")
        return

    apply_tier_discount(item, tier)

run(args)
```

The final `run(args)` call at the module level is the only acceptable top-level executable
statement in an event script — it is the entry point invoked by CPQ's event dispatcher.

**For scripts with multiple args fields:**

```python
def run(args):
    if args is not None:
        field_name = args.FieldName
        old_value  = args.OldValue
        new_value  = args.NewValue
    else:
        field_name = Param.get("FieldName")
        old_value  = Param.get("OldValue")
        new_value  = Param.get("NewValue")
    # ... rest of logic
```

> ⚠ TBD: Confirm that `args` is `None` (not undefined or missing) when a script is called
> via `ScriptExecutor.ExecuteGlobal`. Confirm that `Param` is a dict-like object supporting
> `.get("key")` with a default of `None`. Needs live testing in dev instance.

---

## 10. Module Design Principles

Modules are the core of the framework's testability and reusability story. A well-designed
module can be called from any event script, any test harness, and any other module without
context-dependency. A poorly designed module is a maintenance trap.

---

### Principle 1 — Modules Must Be Stateless

**Rule:** No module-level mutable state. No global variables that are modified at runtime.

**Why:** CPQ modules are cached and reused across script executions on the same tenant
session. Module-level state bleeds between script runs, causing intermittent bugs that are
nearly impossible to reproduce.

```python
# WRONG — mutable module-level state
_discount_cache = {}    # mutated at runtime — unsafe

def get_discount(tier):
    if tier not in _discount_cache:
        _discount_cache[tier] = _load_from_db(tier)   # bleeds across runs
    return _discount_cache[tier]

# CORRECT — immutable constants are fine; no mutable state
TIER_DISCOUNTS = {
    "Tier1": Decimal("15"),
    "Tier2": Decimal("10"),
    "Tier3": Decimal("5"),
}

def get_discount(tier):
    return TIER_DISCOUNTS.get(tier, Decimal("0"))
```

If caching is genuinely needed for performance, scope it to the request (pass a dict into
the function) rather than storing it at module level.

---

### Principle 2 — Explicit Parameters, No Hidden Globals

**Rule:** Module functions must take all their inputs as explicit parameters. They must
not access `Quote`, `ProductHelper`, `User`, or other CPQ globals directly.

**Why:** A function that silently reads `Quote` can only be tested against a real quote.
A function that takes `quote` as a parameter can be passed a mock, a test quote, or any
IQuote instance. Explicit parameters are the basis for testability.

**Exception:** Helper modules that wrap CPQ globals (e.g., `Common_SqlHelpers`) may access
those globals directly, but MUST document the dependency in the module's docstring.

```python
# WRONG — hidden global dependency
def apply_tier_discount(item):
    tier = Quote.GetCustomField("CustomerTier").Content   # Quote global accessed implicitly
    discount = TIER_DISCOUNTS.get(tier, Decimal("0"))
    item.SetCustomField("DiscountPct", str(discount))

# CORRECT — all inputs are explicit parameters
def apply_tier_discount(item, tier):
    """
    Applies the tier-based discount to the given item.

    Args:
        item: IItem — the quote line item to update
        tier: str — the customer tier ("Tier1", "Tier2", "Tier3")
    """
    discount = TIER_DISCOUNTS.get(tier, Decimal("0"))
    item.SetCustomField("DiscountPct", str(discount))
```

**Documenting global dependencies in wrapper modules:**

```python
# Common_SqlHelpers.py
"""
SQL helper utilities.

CPQ global dependencies:
  - SqlHelper (Scripting.SqlHelper) — used by all functions in this module.
    This global is always in scope in CPQ scripts and modules.
"""

def get_rows(sql):
    """
    Executes a SELECT query via SqlHelper and returns all rows.
    Access columns via dot notation: row.ColumnName

    NOTE: Use SqlHelper.CreateParameter() + ISqlParameter for user-supplied
    values. TBD: exact ISqlParameter bind syntax pending live verification.
    """
    result = SqlHelper.GetList(sql)
    return result if result is not None else []

def get_first_row(sql):
    """
    Executes a SELECT query and returns the first row, or None if empty.
    Access columns via dot notation: row.ColumnName
    """
    return SqlHelper.GetFirst(sql)

def get_scalar(sql):
    """
    Executes a query expected to return exactly one row, one column.
    Returns the value of the first property on that row, or None.
    """
    row = SqlHelper.GetFirst(sql)
    return row
```

---

### Principle 3 — One Module, One Concern

**Rule:** Each module covers one cohesive concern. When a module starts to contain unrelated
functions, split it.

**Signs a module needs splitting:**
- The module filename is hard to describe in one sentence.
- Some functions are used by many callers; others are used by only one.
- Two groups of functions never reference each other.

```
# WRONG — one blob module covering everything pricing-related
Pricing_Everything.py

# CORRECT — split by concern
Pricing_DiscountRules.py        # tier, volume, channel discounts
Pricing_MarginCalculations.py   # margin floor checks, markup calculations
Pricing_PricebookLookup.py      # pricebook selection, price fetching
```

---

### Good Module vs Bad Module — Side-by-Side

**Bad module (`Pricing_DiscountRules.py` — bad version):**

```python
# BAD — violates principles 1, 2, and 3

_cache = {}    # mutable module-level state

def apply_discount():    # no parameters — reads Quote directly
    tier = Quote.GetCustomField("CustomerTier").Content  # hidden global
    amount = Quote.GetCustomField("QuoteAmount").Content  # hidden global
    for item in Quote.GetMainItems():                     # hidden global
        if tier == "Tier1":
            disc = "15"
        else:
            disc = "0"
        item.SetCustomField("DiscountPct", disc)
        _cache[item.Id] = disc   # mutable state mutation

def send_notification():    # wrong concern — shouldn't be in a pricing module
    RestClient.Post("/notify", {"msg": "Discount applied"})
```

**Good module (`Pricing_DiscountRules.py` — good version):**

```python
# GOOD — stateless, explicit parameters, single concern

TIER_DISCOUNTS = {
    "Tier1": Decimal("15"),
    "Tier2": Decimal("10"),
    "Tier3": Decimal("5"),
}

def get_tier_discount(tier):
    """
    Returns the discount percentage for the given customer tier.

    Args:
        tier: str — customer tier code

    Returns:
        Decimal — discount percentage (0-100), or Decimal("0") if unrecognized tier
    """
    return TIER_DISCOUNTS.get(tier, Decimal("0"))

def apply_tier_discount(item, tier):
    """
    Applies the tier-based discount to a single quote line item.

    Args:
        item: IItem — the line item to update
        tier: str   — customer tier code

    Returns:
        Decimal — the discount that was applied
    """
    discount = get_tier_discount(tier)
    item.SetCustomField("DiscountPct", str(discount))
    return discount

def get_item_by_id(quote, item_id):
    """
    Finds and returns a main line item by ID. Returns None if not found.

    Args:
        quote:   IQuote — the quote to search
        item_id: int    — the item ID to find
    """
    for item in quote.GetMainItems():
        if item.Id == item_id:
            return item
    return None
```

---

## 11. Test Harness Conventions

Test harnesses are the developer's primary testing tool during development. They are CPQ
scripts, but they are never attached to events and are never triggered by user or CI actions
— they are called explicitly from ScriptWorkbench Standard Mode or by higher-level test
automation.

---

### Test Quote Setup

**Naming convention for test quotes:** `[TEST]_{initials}_{ticket}`

| Example | Meaning |
|---|---|
| `[TEST]_ak_1234` | Andrew Kim's test quote for ticket #1234 |
| `[TEST]_jd_CPQ-88` | Jane Doe's test quote for ticket CPQ-88 |

**Rules for test quotes:**
- Test quotes are never used for real business.
- Each developer maintains their own named test quotes — do not reuse another developer's
  test quote.
- Test quotes must contain at least one main line item at all times (required for harnesses
  that test item-level scripts).
- Test quotes are cleaned up (deleted) at the end of each test session. They are not committed
  to any environment other than DEV.
- If a test quote is deleted and needs to be recreated, the harness's ARRANGE section should
  document the minimum setup required.

---

### The Arrange/Act/Assert Pattern

Every harness follows this structure. Label the sections with comments.

```python
# --- ARRANGE ---
# Set all required fields to a known state. Assume nothing from previous runs.

# --- ACT ---
# Call the script under test via ScriptExecutor.

# --- ASSERT ---
# Read the resulting state and log PASS or FAIL.
```

**ARRANGE must be self-resetting.** The harness sets every field it depends on at the
start, even if it expects the field to be empty. This makes the harness idempotent —
safe to run multiple times without manual cleanup.

---

### Assert Pattern

Until `IAssert` availability in ScriptWorkbench Standard Mode is confirmed, use
`Log.Write` with the following format:

```python
# PASS assertion
if actual == expected:
    Log.Write("PASS: " + scenario_description)

# FAIL assertion
else:
    Log.Write("FAIL: " + scenario_description + " | expected=" + str(expected) + " actual=" + str(actual))
```

The `PASS:` and `FAIL:` prefixes are literal strings — the CI regression runner greps for
them when parsing harness output.

> ⚠ TBD: Confirm whether `IAssert` (the `Assert.AreEqual`, `Assert.IsTrue` interface from
> the `Scripting.Test` namespace) is available in ScriptWorkbench Standard Mode. If
> confirmed available, update this section to prefer `Assert` methods over `Log.Write` for
> assertions. Current guidance: use `Log.Write` to be safe.

---

### Minimal Harness Template

Copy this template for every new harness. Replace the bracketed placeholders.

```python
# TEST_{TICKET}_{Description}.py
#
# Scenario: [One-sentence description of what this harness tests]
# Script under test: [ScriptName]
# Run from: ScriptWorkbench Standard Mode
# Test quote: [TEST]_{initials}_{ticket}  (must have at least one main item)
#
# Refs: AB#{TICKET}  (or Jira/GitHub issue reference)

# --- ARRANGE ---
# Reset all fields this harness depends on to a known state
Quote.SetCustomField("CustomerTier", "Tier1")
Quote.SetCustomField("IsTestRun", "true")
item = Quote.GetMainItems()[0]
item.SetCustomField("DiscountPct", "0")   # start from known state

# --- ACT ---
ScriptExecutor.ExecuteGlobal("Quote_OnItemAdded_TierDiscount", {"ItemId": item.Id})

# --- ASSERT ---
actual = item.GetCustomField("DiscountPct").Content
expected = "15"

scenario = "Tier1 customer gets 15% discount on item add"
if actual == expected:
    Log.Write("PASS: " + scenario)
else:
    Log.Write("FAIL: " + scenario + " | expected=" + expected + " actual=" + str(actual))
```

---

### Multi-Scenario Harness

When a ticket involves multiple related scenarios, they can live in one harness file as
clearly labeled blocks. Use a reset between blocks.

```python
# TEST_1235_ApprovalThresholdChecks.py
#
# Scenario A: Quote below $10k — no approval required
# Scenario B: Quote at exactly $10k — no approval required (boundary)
# Scenario C: Quote above $10k — approval required
#
# Script under test: Approval_OnQuoteSubmitted_ThresholdCheck
# Test quote: [TEST]_ak_1235

def reset_quote():
    Quote.SetCustomField("IsTestRun", "true")
    Quote.SetCustomField("ApprovalRequired", "false")
    Quote.SetCustomField("TotalAmount", "0")

# ===== SCENARIO A: Below threshold =====
reset_quote()
Quote.SetCustomField("TotalAmount", "9999")
ScriptExecutor.ExecuteGlobal("Approval_OnQuoteSubmitted_ThresholdCheck", {})
actual_a = Quote.GetCustomField("ApprovalRequired").Content
if actual_a == "false":
    Log.Write("PASS: Below $10k — no approval required")
else:
    Log.Write("FAIL: Below $10k — expected=false actual=" + str(actual_a))

# ===== SCENARIO B: Exactly at threshold =====
reset_quote()
Quote.SetCustomField("TotalAmount", "10000")
ScriptExecutor.ExecuteGlobal("Approval_OnQuoteSubmitted_ThresholdCheck", {})
actual_b = Quote.GetCustomField("ApprovalRequired").Content
if actual_b == "false":
    Log.Write("PASS: At $10k boundary — no approval required")
else:
    Log.Write("FAIL: At $10k boundary — expected=false actual=" + str(actual_b))

# ===== SCENARIO C: Above threshold =====
reset_quote()
Quote.SetCustomField("TotalAmount", "10001")
ScriptExecutor.ExecuteGlobal("Approval_OnQuoteSubmitted_ThresholdCheck", {})
actual_c = Quote.GetCustomField("ApprovalRequired").Content
if actual_c == "true":
    Log.Write("PASS: Above $10k — approval required")
else:
    Log.Write("FAIL: Above $10k — expected=true actual=" + str(actual_c))
```

---

### Role-Path Testing

For scripts that branch on user role, the preferred approach is **dedicated test user
accounts** — one per relevant role (Sales Rep, Sales Manager, Channel Partner, etc.) —
logged in directly when running the harness.

As a supplementary pattern, harnesses can inject a role via `Param` to test role branches
without switching accounts:

```python
# In the event script (Rule 9 extended for role injection):
def run(args):
    item_id = args.ItemId if args is not None else Param.get("ItemId")
    user_type = Param.get("UserType") or User.UserType   # Param overrides real user type

    if user_type == "SalesManager":
        # manager path
        pass
    else:
        # default path
        pass

# In the harness:
ScriptExecutor.ExecuteGlobal("Quote_OnItemAdded_SomeScript", {
    "ItemId": item.Id,
    "UserType": "SalesManager",   # inject role for testing
})
```

> ⚠ TBD: Confirm that `Param.get("UserType")` in the script overrides `User.UserType`
> correctly when called via `ScriptExecutor`. This pattern is described in the discovery
> notes but has not been verified against a live CPQ instance.

---

### What NOT to Do in Harnesses

```python
# WRONG — harness depends on pre-existing state (not self-resetting)
# Assumes DiscountPct is already 0 from a previous run
actual = item.GetCustomField("DiscountPct").Content   # may be stale from last run

# WRONG — harness calls a real external system
# IsTestRun not set — the CRM callout fires for real
ScriptExecutor.ExecuteGlobal("Integration_OnSave_CrmOpportunitySync", {})

# WRONG — harness uses a hardcoded quote ID that may not exist
Quote.Id = 12345   # you can't set Quote this way; the harness runs against the open quote

# WRONG — nested ScriptExecutor calls without understanding state
ScriptExecutor.ExecuteGlobal("ScriptA", {})
ScriptExecutor.ExecuteGlobal("ScriptB", {})
# If ScriptA modifies state that ScriptB reads, the order matters — document it explicitly
```

---

## Appendix A — Quick Reference Card

### Naming Patterns

```
scripts/{domain}/    {Domain}_{EventName}_{Purpose}.py
modules/{domain}/    {Domain}_{PurposeOrCategory}.py
tests/harnesses/     TEST_{WorkItemId}_{Description}.py
sidecars             {AnyOfTheAbove}.cpq.yaml
branches             feature/{id}-{short-desc}  |  hotfix/{incident-id}
commits              {type}({scope}): {description}
test quotes          [TEST]_{initials}_{ticket}
```

### IronPython 2.7 Cheat Sheet

```python
# String formatting
"Hello " + name                  # concatenation
"Hello %s" % name                # % formatting
# NOT: f"Hello {name}"           # f-strings not supported

# None checks
if value is None:                # CORRECT
if value is not None:            # CORRECT
# NOT: if value == None          # WRONG

# Numeric types for money
from System import Decimal
price = Decimal("99.99")         # CORRECT
# NOT: price = 99.99             # float — precision issues

# Logging
Log.Write("INFO: message")       # CORRECT
# NOT: print("message")          # swallowed by runtime

# SQL
rows = SqlHelper.GetList(sql)      # CORRECT: multi-row
row  = SqlHelper.GetFirst(sql)     # CORRECT: first row or None
row.ColumnName                     # CORRECT: dot notation for column access
# NOT: row["ColumnName"]           # bracket notation throws on CPQ row objects
# NOT: SqlHelper.ExecuteQuery()           # method does not exist on ISqlHelperProxy
# NOT: "SELECT col FROM t ORDER BY col"   # ORDER BY requires TOP or OFFSET (see FIELD-NOTES.md)
rows = SqlHelper.GetList("SELECT col FROM t")                    # no ordering needed — simplest
rows = SqlHelper.GetList("SELECT TOP 100 col FROM t ORDER BY col")  # with ordering — use TOP or OFFSET

# Iteration
for i in range(10):              # CORRECT
# NOT: for i in xrange(10):      # xrange doesn't exist in IronPython 2.7

# args/Param dual path
item_id = args.ItemId if args is not None else Param.get("ItemId")

# EffectiveDate (not DateTime.Now)
effective = Quote.EffectiveDate  # CORRECT
# NOT: DateTime.Now              # untestable for time-sensitive scenarios
```

---

## Appendix B — Open Items (TBD Index)

The following items are marked TBD throughout this document pending live verification
in a CPQ dev instance:

| # | Section | Item |
|---|---|---|
| 1 | §2 Script Naming | Complete set of available CPQ event names |
| 2 | §5 Sidecar | Full sidecar schema fields vs actual REST API payload; `execution_order` scope |
| 3 | §6 Folder Structure | Where document templates, approval configs, pricing rules live |
| 4 | §9 Rule 4 | Exact `ISqlParameter` bind syntax for parameterized queries (CreateParameter() usage) |
| 5 | §9 Rule 7 | `Quote.EffectiveDate` settable at creation via REST; controls pricebook selection |
| 6 | §9 Rule 8 | "Test Quote Type" as alternative to `IsTestRun` field |
| 7 | §9 Rule 9 | `args` is `None` (not undefined) when called via ScriptExecutor; `Param.get()` behavior |
| 8 | §11 Assert | `IAssert` availability in ScriptWorkbench Standard Mode |
| 9 | §11 Role path | `Param.get("UserType")` injection overrides `User.UserType` correctly |

All TBD items are tracked in `research/2026-04-16-cpq-developer-framework-discovery.md`
Section 5 (Dev Environment Verification Checklist).

---

_Document end — NCD v0.1-draft_
_Authors: SAP CPQ Developer Framework project_
_Next review: after dev environment verification session (Section 5 checklist)_
