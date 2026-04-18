# SAP CPQ Developer Framework — Discovery Notes
_Last updated: 2026-04-16 | Status: Ideation — verified items marked TBD_
_Scope: **Track 1 — Agnostic Framework** — the reusable CPQ Developer Framework template, CI/CD and tooling agnostic_
_See also: `2026-04-16-client-implementation-discovery.md` — Track 2, client-specific layer built on this framework_

This is the living reference for all ideation on the CPQ Developer Framework.
Covers: testing strategy, repo structure, NCD, configuration artifacts, sync tooling, shared tenant workflow.

---

## The Problem This Solves

SAP CPQ is a SaaS platform where all customization (scripts, modules, configuration)
lives inside the platform's database — not in a file system. There is no native git
integration. The consequences:

- No code review without copying scripts into a PR manually
- No reproducible environments — shared tenant means shared state
- Script metadata (which event triggers it, active flag, execution order) is invisible
  from the code itself
- No CI/CD — deploys are manual copy-paste into the CPQ admin UI
- Testing is hard: the environment is live, external systems are always connected,
  data changes constantly

The framework bridges platform-as-database and modern software delivery.

---

## Section 1: Testing

### Discovery 1 — ScriptWorkbench Has Two Modes With Very Different Scopes

**Standard Mode** — Full access to `Quote`, `ProductHelper`, `SqlHelper`, `RestClient`,
all scripting API objects. Launched from a live quote in user view, the `Quote` variable
is bound to that specific quote. This is the relevant mode for testing script logic.

**Test Mode** — NO `Quote` object. Limited to product model testing via `Scripting.Test`
namespace (`ITestContainer`, `ITestProduct`, `ITestProductAttribute`, etc.) and `IAssert`.
Only useful for product configurator rule testing, not event script testing.

> **TBD:** Confirm Standard Mode can be launched from Setup without a pre-selected quote
> (generic context), vs. from a quote's user view (quote-bound context). This determines
> whether a developer can open ScriptWorkbench without first navigating to a specific quote.

---

### Discovery 2 — Proxy Access Is a Production Support Tool, Not a Testing Tool

**Source:** `knowledge/sap-cpq/portal/admin-quote-2/proxy-access.md`

Proxy Access is a reactive production troubleshooting feature. A user who encounters
an issue grants time-limited access to an admin (or SAP support) via their user profile.
The admin logs in as that user to see exactly what they're seeing and resolve the issue.

It is user-initiated, scoped to live production incidents, and not available to admins
on enterprise/partner tenants — only SAP support retains that capability there.

**This feature has no role in the testing framework.** It is not a development tool.

**For testing role-specific script behavior, the correct approach is dedicated test
user accounts** — one per relevant role (Sales Rep, Sales Manager, Channel Partner,
etc.), logged into directly. No workarounds needed.

As a complementary pattern for harness-based testing without switching accounts:
scripts that branch on user role can accept `Param.get("UserType") or User.UserType`,
letting the harness inject a role without needing to be that user. This is an NCD
convention, not a substitute for real role accounts.

---

### Discovery 3 — REST API Mutations Trigger Event Scripts (Key Automation Insight)

REST API calls that modify a quote fire the event pipeline. `POST` a line item → `OnItemAdded`
fires. `PATCH` a custom field → `OnCustomFieldChanged` fires. This means **automated script
testing does not require UI automation**. Full test loop via REST API only:

```
POST   /api/Quotes/v1/...          → create test quote with specific state
POST   /api/Quotes/v1/.../items    → triggers OnItemAdded, script runs
GET    /api/Quotes/v1/{id}         → inspect resulting state
DELETE /api/Quotes/v1/{id}         → teardown
```

This is the foundation for the regression/CI test suite.

> **TBD:** Confirm which REST operations trigger which events. Specifically: does `POST`
> a line item trigger `OnItemAdded`? Does `PATCH` a custom field trigger `OnCustomFieldChanged`?
> Needs live testing in dev instance.

---

### Discovery 4 — EffectiveDate Solves Time-Sensitive Testing

`Quote.EffectiveDate` controls pricebook selection and all date-sensitive rule evaluation.
Set it when creating a test quote via REST — the pricing engine behaves as if it's that date.
No need to mock system time.

**NCD rule implied:** Scripts MUST use `Quote.EffectiveDate` for date logic, never
`DateTime.Now`. A script reading `DateTime.Now` directly for pricing or feature gating
is untestable for time-sensitive scenarios. This is a linter check.

> **TBD:** Confirm `EffectiveDate` is settable at quote creation time via REST API.
> Confirm pricing engine reads `EffectiveDate`, not server time, for pricebook selection.

---

### Discovery 5 — ScriptExecutor Enables Developer-Facing Test Harnesses

`ScriptExecutor.ExecuteGlobal("ScriptName", params)` calls any active script from within
another script, with optional parameters injected as `Param`.

**The test harness pattern:** Write a dedicated `TEST_` prefixed script per scenario.
It sets up quote state, calls the target script explicitly, then asserts the result.
Run from ScriptWorkbench Standard Mode. Fast, piecemeal, no UI navigation required.

**Key constraint:** Target script must be **Active**. Inactive scripts return `None` silently.

> **TBD:** Whether `IAssert` is available in Standard Mode. Docs say "primarily for automated
> testing but also usable in production scripts" — implies it may be available outside Test
> Mode. Needs live confirmation. If not available, use `Log.Write` for pass/fail output.

**How event args are handled in harnesses:** Event scripts normally receive `args`
(e.g. `IAfterItemAddedArgs`). When called via `ScriptExecutor`, `args` is `None`.
Scripts must handle both paths — this is an NCD requirement:

```python
# Pattern for testable event scripts
if args is not None:
    item_id = args.ItemId          # real event execution
else:
    item_id = Param.get("ItemId")  # harness execution
```

---

### Discovery 6 — Test Harnesses as Individual Unit Test Blocks

Each test harness script is a self-contained unit test for one specific scenario.
They are the CPQ equivalent of a unit test file. Key principles:

- **One harness per scenario**, not one harness per script. A script covering three
  customer tier cases gets three harness scripts (or three clearly labelled blocks
  within one harness).
- **Named to mirror the story/ticket**: `TEST_CPQX-123_Tier1PricingDiscount.py`
  connects the test directly to the work item that produced it.
- **Self-resetting**: The harness sets all required fields at the start, so it can
  be re-run without manual setup. Assumes a test quote exists with at least one item.
- **Marked inactive**: Harness scripts are never attached to events and always have
  `active: true` in their sidecar (needed for ScriptExecutor to call them) but are
  clearly separated by the `TEST_` prefix convention.
- **Log-based results for now**: Until `IAssert` availability in Standard Mode is
  confirmed, use `Log.Write("PASS: ...")` / `Log.Write("FAIL: ...")` with the
  expected vs actual value.

**Minimal harness template:**

```python
# TEST_{TICKET}_{Description}.py
# Run from ScriptWorkbench Standard Mode against a test quote named [TEST]_{developer}
# Quote must have at least one main item.

# --- ARRANGE ---
Quote.SetCustomField("CustomerTier", "Tier1")
Quote.SetCustomField("IsTestRun", "true")
item = Quote.GetMainItems()[0]
item.SetCustomField("DiscountPct", "0")  # reset state

# --- ACT ---
ScriptExecutor.ExecuteGlobal("Quote_OnItemAdded_TierDiscount", {"ItemId": item.Id})

# --- ASSERT ---
actual = item.GetCustomField("DiscountPct").Content
expected = "15"
if actual == expected:
    Log.Write("PASS: Tier1 gets 15% discount")
else:
    Log.Write("FAIL: expected=" + expected + " actual=" + str(actual))
```

---

### Discovery 7 — External Systems Have No Clean Mock Path

Scripts calling CRM or SAP S/4HANA via `IRestClient` cannot be cleanly mocked in a
shared tenant. There is no dependency injection at the IronPython level.

**Best available option:** Quote-level custom field `IsTestRun` (bool). Scripts that
make external callouts check this flag and return stub data if true. NCD convention:
every script touching an external system must implement this branch.

**Cleaner alternative to investigate:** A dedicated "Test" Quote Type. Scripts check
`Quote.QuoteType == "Test"` instead of a custom field. Avoids polluting every script
with a field check and is more declarative.

> **TBD:** Whether a "Test Quote Type" is a viable isolation mechanism. Also whether
> CPQ allows environment-level endpoint redirection (e.g., pointing REST client to a
> mock server via tenant config) — if yes, this entire problem simplifies.

---

### Discovery 8 — Test Suite Layers (Not One Monolith)

The previous 2-4 hour Selenium suite failed because it was monolithic, UI-driven, and
sequentially dependent. The right model separates into three independent layers:

| Layer | Mechanism | Who runs it | Target time |
|---|---|---|---|
| **Developer harnesses** | ScriptWorkbench + ScriptExecutor | Developer, on demand | <30s per scenario |
| **Regression suite** | REST API driven (not UI) | CI, post-merge to dev | <15 min total |
| **Smoke tests** | Playwright, critical paths only | CI, post-deploy | <5 min, 5-10 tests |

Each layer is independently runnable. Developers use layer 1 during development.
Layer 2 is the regression gate. Layer 3 confirms the environment is alive after deploy.

---

### Discovery 9 — Scenario Definition Belongs in the User Story

Developers shouldn't have to chase product owners to understand how to recreate a
scenario. User stories involving scripting changes should include a structured block:

```yaml
test_scenario:
  setup:
    quote_type: "Standard"
    effective_date: "2025-01-15"
    market: "US"
    customer_tier: "Tier1"        # custom field value
    products:
      - id: "PROD-001"
        quantity: 10
  trigger:
    event: "OnItemAdded"
    product_id: "PROD-002"
  expected:
    custom_fields:
      DiscountPct: "15"
      ApprovalRequired: "false"
```

This block becomes: the developer's harness setup, the regression test fixture,
and the acceptance criteria for QA. One definition, three uses.

---

## Section 2: Repository Structure and Framework Components

### Discovery 10 — Configuration Sidecar Files (.cpq.yaml)

SAP CPQ stores script metadata (event attachment, active flag, execution order, date range)
**separately from the script body**. This metadata is invisible in the code.
The sidecar pattern captures it in a paired file committed alongside the script:

```
scripts/
└── quote/
    ├── Quote_OnItemAdded_TierDiscount.py           ← script body
    └── Quote_OnItemAdded_TierDiscount.cpq.yaml     ← platform metadata
```

**Script sidecar schema:**
```yaml
type: script
name: Quote_OnItemAdded_TierDiscount
description: Applies tier-based discount when item added to quote
active: true
events:
  - OnItemAdded
quote_types: []           # empty = all quote types; restrict by ID list if needed
execution_order: 10
csrf_protection: false
start_date: null
end_date: null
```

**Module sidecar schema:**
```yaml
type: module
name: Pricing_DiscountRules
description: Reusable discount calculation functions
active: true
```

This file is what the push tool reads to reconstruct the full CPQ script record.
It is also what a developer reads to understand a script's context without opening
the CPQ admin UI.

---

### Discovery 11 — Proposed Repository Structure

**Agnostic design principle:** All tools (`push.py`, `pull.py`, `validate.py`) are plain
Python scripts callable from any CI/CD runner. The pipeline definition files are the only
layer that differs between CI/CD providers — everything else is identical.

```
cpq-{client-name}/
├── CLAUDE.md                           # CPQ project agent instructions
├── .cpq/
│   └── config.yaml                     # Tenant URLs per environment (dev/tst/uat/prod)
├── scripts/                            # Event-driven scripts
│   └── {domain}/
│       ├── {NCD-name}.py
│       └── {NCD-name}.cpq.yaml
├── modules/                            # Reusable modules (not event-attached)
│   └── {domain}/
│       ├── {NCD-name}.py
│       └── {NCD-name}.cpq.yaml
├── tests/
│   └── harnesses/                      # ScriptWorkbench test harness scripts
│       └── TEST_{ticket}_{description}.py
├── custom-tables/
│   └── {TableName}.cpq.yaml            # Table schema (columns, types, indexes)
├── custom-fields/
│   └── {EntityType}-fields.cpq.yaml    # Custom field definitions per entity
├── pipelines/                          # CI/CD pipeline definitions (swappable layer)
│   ├── azure-pipelines.yml             # Azure Pipelines (primary — current client)
│   ├── github-actions-validate.yml     # GitHub Actions equivalent (for other clients)
│   └── github-actions-deploy.yml
└── tools/                              # Python CLI — CI/CD agnostic, call from any runner
    ├── push.py                         # Reads .cpq.yaml + .py → CPQ REST API
    ├── pull.py                         # Pulls from CPQ → writes to git structure
    └── validate.py                     # NCD compliance linter
```

**`.cpq/config.yaml` shape (all environments):**
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

> **RESOLVED — Artifact scope decision (see Discovery 16 below).**

---

### Discovery 12 — NCD (Naming Convention Document) Draft Conventions

**Script naming:** `{Domain}_{EventName}_{Purpose}`
- `Quote_OnItemAdded_TierDiscount.py`
- `Quote_OnCustomFieldChanged_RegionValidation.py`
- `Product_OnSave_StockAvailabilityCheck.py`

**Module naming:** `{Domain}_{PurposeOrCategory}`
- `Pricing_DiscountRules.py`
- `Common_SqlHelpers.py`
- `Integration_CrmClient.py`
- `Integration_S4HanaClient.py`

**Test harness naming:** `TEST_{WorkItemId}_{Description}.py`
- `TEST_1234_Tier1DiscountOnItemAdd.py` — Azure DevOps work item ID (numeric)
- `TEST_CPQX-123_Tier1DiscountOnItemAdd.py` — Jira-style (if client uses Jira)
- The NCD should define the format per project; the pattern is always `TEST_{id}_{description}`

**Branch naming (git):**
- Feature work: `feature/{work-item-id}-{short-description}` (e.g. `feature/1234-tier-discount`)
- Hotfixes (production incidents): `hotfix/INC{number}` (e.g. `hotfix/INC0012345`)
  — ServiceNow incident number in the branch name creates a traceable link from repo to incident
- The hotfix branch merges directly to `main` + backports to `dev`

**Domain taxonomy (to be finalized per project):**
`Quote` `Product` `Pricing` `Approval` `Integration` `Common` `Document`

**IronPython coding rules (draft):**
- No top-level executable code — wrap all logic in functions
- Event handler scripts are thin wrappers; all business logic lives in modules
- Import modules explicitly: `from ModuleName import FunctionName` (never `import *`)
- Always parameterize SQL: `SqlHelper.ExecuteQuery(sql, params)` — never string concat
- Use `Log.Write()` for tracing (not `print`), but log sparingly — excess logging
  degrades shared tenant performance
- IronPython 2.7 only: no f-strings, no walrus operator, no type hints
- Use `is not None` / `is None`, never `== None` / `!= None`
- Scripts touching external systems must implement `IsTestRun` branch (or Test Quote
  Type check — TBD)
- Scripts with date/time logic must read from `Quote.EffectiveDate`, never `DateTime.Now`

> **TBD:** Whether this doc lives in the template repo as `docs/NCD.md` (versioned with
> code) or as a Confluence page (richer formatting, easier for non-developers to read).
> Could be both — NCD.md is the authoritative source, Confluence is a published view.

---

### Discovery 13 — Push/Pull Sync Workflow

**VSCode → git → GitHub Actions → CPQ API**

```
Developer edits .py + .cpq.yaml in VSCode
    ↓
git commit + push → feature branch
    ↓
PR opened → validate.yml: NCD lint + harness dry-run
    ↓
PR merged to dev → deploy.yml: push.py reads changed files → CPQ REST API
    ↓
Manual promote to qa → push to QA tenant
    ↓
Release tag → push to prod tenant
```

**Pull direction (equally important):**
When a developer or admin edits a script directly in CPQ admin UI, `pull.py --since 2d`
syncs those changes back to git. This prevents the repo drifting from the platform.
Conflict resolution rule (not yet defined): git history vs CPQ change log — need a
tie-breaking policy.

**API foundation confirmed in knowledge base:**
- `portal/api-docs/sending-scripts-to-ci-cd-tool.md` — SAP explicitly documents this
  CI/CD pattern. Pull via Change Set API or Audit Trail API (by date range). Push via
  Script Management REST endpoints.
- SAP's own guidance: periodic pull works well for small teams on shared tenants.

> **RESOLVED (Discoveries 17-18):** Full endpoint map confirmed. Push tool design is complete:
> PATCH `/api/script/v1/globalscripts/{id}` with `events` array + `?changeSetId={id}`.
> Pull uses GET `/api/script/v1/globalscripts` + version history endpoint (not audit trail).
> Deployment uses Change Set API for atomic cross-environment promotion.

---

### Discovery 14 — Shared Tenant Strategy: Branch = Environment (DECIDED)

**Tenant count is confirmed:** Standard SAP CPQ implementations have at minimum 3 tenants
(dev / tst / prod), most commonly 4 (dev / tst / uat / prod), sometimes 5
(dev / tst / uat / stage / prod). Dev+prod-only exists but only for very small clients
and is the exception.

**This resolves the collision strategy.** The recommended approach is **branch = environment**:

```
feature/{ticket}  →  developer's git branch (no CPQ deploy)
         ↓ PR + merge
dev               →  auto deploy to DEV tenant
         ↓ PR
tst               →  auto deploy to TST tenant
         ↓ PR
uat               →  auto deploy to UAT tenant
         ↓ PR
main              →  auto deploy to PROD tenant
```

**The DEV tenant is still shared** — all developers merge feature branches into `dev`.
Collision prevention there:
1. **Serialized GitHub Actions deploys** (`concurrency: dev-deploy, cancel-in-progress: false`)
   — queues pushes, never runs two simultaneously
2. **One developer per script per sprint** — ticket assignment discipline; two devs
   editing the same script simultaneously is a process failure, not a tool problem
3. The NCD `{Domain}_{EventName}_{Purpose}` naming means script ownership is deterministic
   from the ticket — if the ticket is scoped right, two devs won't touch the same script

**For small clients (dev + prod only):** The framework still works, but the collision
window is wider. In that scenario, `active: false` gating on the dev tenant becomes more
important as a WIP signal.

**CPQ Change Set API** — still worth investigating for atomic promotion (TST → UAT → PROD),
but no longer needed to solve the basic DEV collision problem.

| Strategy | Verdict |
|---|---|
| **Serialized deploys** | USE — on DEV tenant only, as queue discipline |
| **Feature flag via Active flag** | USE — for WIP signaling on DEV; not as primary strategy |
| **Naming-based sandboxing** | SKIP — pollutes namespace, fragile |
| **Branch = environment** | PRIMARY STRATEGY — requires min 3 tenants (confirmed standard) |
| **CPQ Change Set API** | INVESTIGATE — for clean atomic promotion between higher envs |

---

### Discovery 17 — Script API: Full Endpoint Map (Push/Pull Tool Foundation)

**Source:** `rest-api/swagger.json`, `portal/api-docs/script-api.md`

Global scripts and modules share a single API — modules are differentiated by `isModule: true`
in the payload, not by a separate endpoint.

**Base path:** `/api/script/v1/globalscripts`

| Action | Method | Path | Notes |
|---|---|---|---|
| List all scripts | GET | `/api/script/v1/globalscripts` | OData filtering, paginated |
| Get one script | GET | `/api/script/v1/globalscripts/{id}` | Full body returned |
| Create | POST | `/api/script/v1/globalscripts` | Returns `Location` header with new ID |
| Full replace | PUT | `/api/script/v1/globalscripts/{id}` | Requires full `GlobalScriptVM` |
| Partial update | PATCH | `/api/script/v1/globalscripts/{id}` | Preferred for sync — send only changed fields |
| Toggle active | PATCH | `/api/script/v1/globalscripts/{id}/active` | Single boolean — clean enable/disable |
| Delete | DELETE | `/api/script/v1/globalscripts/{id}` | Permanent |
| List versions | GET | `/api/script/v1/globalscripts/{id}/versions` | Full version history |
| Get version body | GET | `/api/script/v1/globalscripts/{id}/versions/{versionId}` | Full script body in `content` field |
| Get event lookup | GET | `/api/script/v1/globalscripts/scripts/events` | Returns `[{id: int, text: "OnItemAdded"}]` |

**Key PATCH payload** (used by `push.py` for body + event updates):
```json
{
  "script": "# IronPython script body as a string",
  "active": true,
  "name": "Quote_OnItemAdded_TierDiscount",
  "description": "Applies tier discount when item added",
  "isModule": false,
  "startDate": null,
  "endDate": null,
  "isCSRFProtected": false,
  "events": [
    { "systemEventId": 3, "rank": 10 }
  ]
}
```

**`?changeSetId={id}` query param** — add to any create/update call to group the change
into an active change set. Enables atomic deployment (see Discovery 18).

**Pull tool implication:** The audit trail returns metadata only and may truncate large
script bodies — **do not use it for pull reconstruction**. Instead use:
- `GET /api/script/v1/globalscripts` to pull all current scripts
- `GET /api/script/v1/globalscripts/{id}/versions` for full version history

**Event names vs IDs:** The sidecar `.cpq.yaml` stores human-readable event names
(`OnItemAdded`). The push tool calls the event lookup endpoint at deploy time to resolve
names → IDs before writing to the API. The lookup is cheap — cache it per run.

---

### Discovery 18 — Change Set API: Atomic Deployment Between Environments

**Source:** `rest-api/swagger.json`, `portal/api-docs/`

**This resolves Open Question #3.** CPQ has a native Change Set API that groups changes
and promotes them between environments atomically.

**Base path:** `/setup/api/v1/admin/changeSets`

| Action | Method | Path |
|---|---|---|
| List change sets | GET | `/setup/api/v1/admin/changeSets` |
| Get one | GET | `/setup/api/v1/admin/changeSets/{id}` |
| Create / update | POST | `/setup/api/v1/admin/changeSets` |
| Set active | POST | `/setup/api/v1/admin/changeSets/{id}/status/{isActive}` |
| Select (make current) | POST | `/setup/api/v1/admin/changeSets/{id}/selected` |
| **Send to environment** | POST | `/setup/api/v1/admin/changeSets/sendChangeSets/{envId}` |
| **Deploy from environment** | POST | `/setup/api/v1/admin/changeSets/deployChangeSets` |
| Get connected environments | GET | `/setup/api/v1/admin/changeSets/getTenantEnv` |

**Change set scope** — what it captures: scripts, modules, custom actions, custom
calculations, products, attributes, pricebooks, custom tables, parameters. One change set
can bundle a complete feature's changes across artifact types.

**How atomic deployment works:**
```
1. CI/CD creates a change set:
   POST /setup/api/v1/admin/changeSets   →  { id: 42, name: "feature/1234-tier-discount" }

2. Each script push includes the change set ID:
   PATCH /api/script/v1/globalscripts/{id}?changeSetId=42

3. Promote the whole change set to TST tenant:
   POST /setup/api/v1/admin/changeSets/sendChangeSets/{tstEnvId}
   Body: [{ id: 42, name: "feature/1234-tier-discount", ... }]
```

**Revised deployment model** — change sets upgrade the framework's deployment approach:

| Without change sets | With change sets |
|---|---|
| Push scripts one by one to target env | Bundle all changes in a named change set |
| Partial deploy if pipeline fails mid-run | Atomic: all changes land together or none do |
| No native grouping of related changes | Change set name maps to git branch/PR |
| Re-push everything or diff manually | CPQ tracks what's in each change set |

**Change set naming convention (NCD input):**
Match the git branch name: `feature/1234-tier-discount` → change set name `feature/1234-tier-discount`.
This creates a traceable link: git PR → change set → CPQ deployment.

> **TBD:** Confirm whether the Change Set API supports cross-tenant deployment using API
> credentials only (no interactive CPQ session required). Needs live verification that
> `sendChangeSets` works from a CI/CD runner with a service account token.

---

### Discovery 16 — Artifact Scope: What to Version Beyond Scripts

Not all CPQ artifact types have a usable REST API. Research across `rest-api/swagger.json`
and `portal/api-docs/` yielded a clear tier split:

**Tier 1 — Version in git (full CRUD API available):**

| Artifact | Key endpoints | Notes |
|---|---|---|
| **Custom Fields** (quote, item, user, partner) | `/api/quote/v1/quoteCustomField/*`, `/api/quote/v1/quoteItemCustomFields/*`, `/api/businesspartner/v1/customfields/*`, `/setup/api/v1/admin/userCustomFields/*` | Full CRUD; includes permissions matrix, translations, formula support |
| **Approval Rules + Dynamic Approvers** | `/api/workflow/v1/approvalRules/*`, `/api/workflow/v1/approvers/dynamicRules/*` | Full CRUD; expressions use CPQ formula syntax — embed as raw strings; user/group references require deployment-time validation |
| **Workflow Notifications** | `/api/workflow/v1/notifications/*`, `/api/workflow/v1/notifications/{id}/content/{contentId}` | Full CRUD; includes notification content templates with translations |
| **Document Templates** | `/api/quote/v1/documentTemplates/*` | Full CRUD for metadata, permissions, translations; template binary files (Word/Excel) stored externally (S3/Blob), referenced by hash in git |
| **Responsive Templates** _(Tier 1 candidate — TBD)_ | TBD — check swagger.json for `/api/quote/v1/responsiveTemplates` or similar | Highest-risk artifact (blast radius = all users); needs API verification; own subdirectory with own CLAUDE.md; KO context sidecar (Playwright-generated) committed alongside HTML; feature gating via staging slot pattern — see Discovery 19 |

**Tier 2 — Config-only (no usable REST API — manage separately):**

| Artifact | Why it's excluded | How to handle |
|---|---|---|
| **Custom Tables** | Schema API is read-only; no REST CRUD for creating/modifying table definitions | UI-managed; export/import via Excel |
| **Pricebooks** | Non-standard REST (UI-backing endpoints, not idiomatic CRUD); intended integration path is Excel bulk import/export | Version as Excel export artifact, not sidecar YAML |
| **Products / Catalog** | Full CRUD API exists but products have their own built-in versioning model, async bulk ops, deep attribute nesting | Use CPQ's native product management; out of scope for this framework |
| **Quote Types** | No REST CRUD API exposed | UI-managed; document in `docs/` as manual config |

**Revised repository structure — add Tier 1 non-script artifacts:**
```
cpq-{client-name}/
├── scripts/           ← event scripts (.py + .cpq.yaml)
├── modules/           ← reusable modules (.py + .cpq.yaml)
├── custom-fields/     ← Tier 1: per entity type (.cpq.yaml only, no .py)
│   ├── quote-fields.cpq.yaml
│   ├── quote-item-fields.cpq.yaml
│   ├── user-fields.cpq.yaml
│   └── partner-fields.cpq.yaml
├── approval/          ← Tier 1: rules + dynamic approvers + notifications
│   ├── rules/
│   │   └── {RuleName}.cpq.yaml
│   ├── dynamic-approvers/
│   │   └── {RuleName}.cpq.yaml
│   └── notifications/
│       └── {NotificationName}.cpq.yaml
├── document-templates/ ← Tier 1: metadata only; binary files tracked externally
│   └── {TemplateName}.cpq.yaml   (includes file hash for integrity check)
└── tests/harnesses/
```

> **TBD:** Define sidecar schema for Tier 1 non-script artifact types (custom fields, approval rules, notifications, document templates). Each has a different payload shape.

---

### Discovery 15 — CI/CD Agnostic Design Principle

The CPQ Developer Framework will be reused across clients — some on GitHub + GitHub Actions,
some on Azure DevOps, some on GitLab. The framework's value is in the structure, sidecar
schema, and tooling — not in which CI/CD runner executes the steps.

**How to achieve agnosticism:**
- `tools/` Python scripts have zero CI/CD dependencies — they are plain CLI scripts
- Pipeline files are thin callers: set credentials as environment variables, then call
  `python tools/push.py` or `python tools/validate.py`
- The `pipelines/` folder ships reference implementations for the most common runners;
  the project adopts whichever fits and deletes the rest
- All documentation uses "CI/CD pipeline" generically, not a specific product name

**Work item ID in the NCD:**
- The NCD defines the work item ID format per project; the placeholder is always `{WorkItemId}`
- Example formats: `1234` (Azure DevOps numeric), `PROJ-123` (Jira-style), `INC0012345` (ServiceNow)
- The harness naming convention `TEST_{WorkItemId}_{Description}.py` is stable regardless of format

**Branch naming (agnostic pattern):**
```
feature/{work-item-id}-{short-desc}    →  in-progress work (no auto deploy)
dev                                     →  auto deploy to DEV tenant on merge
tst                                     →  auto deploy to TST tenant on merge
uat                                     →  auto deploy to UAT tenant on merge
main                                    →  auto deploy to PROD tenant (approval gate)
hotfix/{incident-id}                    →  emergency fix; deploys to PROD, backports to dev
```

The `hotfix/{incident-id}` branch name embeds the incident tracker reference in git history,
enabling post-incident audit regardless of which incident tool the client uses.

---

### Discovery 19 — Ideas from EricHoftiezerACN/sap-cpq (To Evaluate, Not Yet Adopted)

**Source:** https://github.com/EricHoftiezerACN/sap-cpq — a tested, production-used Accenture CPQ repo.
These are **inspiration items** to consider during implementation, not yet incorporated into the framework.

**1. `/customapi/ExecuteScript` endpoint**
`POST /customapi/ExecuteScript?scriptname={name}&quoteCompositeNumber={quoteNumber}&Param={urlEncodedJson}`
Executes a named CPQ script directly from outside the platform — no ScriptWorkbench, no event trigger needed.
Script receives inputs via `Param`. Response is the `ApiResponseFactory.JsonResponse(...)` return value.
**Impact:** The regression test suite can call specific scripts with controlled inputs. More precise
than triggering events via REST mutations. Complements Discovery 3 (REST → event trigger).

**2. `conftest.py` + `importlib.reload` testing pattern**
Mocks CPQ platform globals (`Quote`, `SqlHelper`, `Param`, etc.) via Python `builtins`, then calls
`importlib.reload(script_module)` to re-execute a script's top-level code with different inputs.
Enables a pure-Python unit test layer that runs locally and in CI — no CPQ instance needed.
Their `conftest.py` covers: `Trace`, `Log`, `JsonHelper`, `ApiResponseFactory`, `SqlHelper`,
`QuoteHelper`, `Param`. Would need `Quote`, `ProductHelper`, `ScriptExecutor`, `RestClient`, `User`
added for our use cases.

**3. `.pylintrc` `additional-builtins` — most complete CPQ globals list found**
Their `.pylintrc` has 40+ globals preventing E0602 false-positives, including several not
documented in the KB: `context`, `Session`, `clr`, `JWT`, `AttributeAccess`, `Item`, `StreamReader`,
`AuthorizedRestClient`, `mTLSRestClient`, `FederationUtility`, `SapPassport`, `TagParserProduct`,
`TagParserQuote`, `UserPersonalizationHelper`. Also: `ignored-modules=System,Scripting` for .NET namespaces.

**4. Dual-mode OAuth2 auth with token file caching**
Auth client detects username format: UUID → OAuth2 client credentials; email → basic auth.
Bearer token cached to file with expiry tracking — avoids re-auth on every CLI call.
Pattern for `push.py`/`pull.py` service account authentication in CI.

**5. OData `$filter=name eq '{name}'` for script lookup by name**
Their TypeScript `GlobalScriptAPI.getByName()` uses `GET /api/script/v1/GlobalScripts?$filter=name eq '{name}'`.
The pull tool needs this to find a script's numeric ID before updating it.

**6. Dispatcher pattern** (`Param.actionName` routing)
A single global script checks `Param.actionName` to dispatch to different operations —
a lightweight "admin API" inside CPQ. Useful pattern for utility scripts.

---

## Section 3: Open Questions Index

Ordered by how much they block other decisions:

| # | Question | Blocks |
|---|---|---|
| ~~1~~ | ~~How many CPQ tenants are available?~~ | ~~Shared tenant strategy, branch model~~ — **RESOLVED: min 3 (dev/tst/prod), standard 4-5** |
| ~~1~~ | ~~How many CPQ tenants?~~ | **RESOLVED: min 3 (dev/tst/prod), standard 4-5** |
| 2 | Which REST operations trigger which events? | REST-driven test automation design — needs live test |
| ~~3~~ | ~~Change Set API support environment promotion?~~ | **RESOLVED: YES — atomic send/deploy between envs via `/setup/api/v1/admin/changeSets/sendChangeSets/{envId}`** |
| 4 | Is `IAssert` available in Standard Mode? | Harness assertion pattern — needs live test |
| 5 | Is `EffectiveDate` settable at quote creation via REST? | Time-sensitive test scenarios — needs live test |
| ~~6~~ | ~~Can REST push set event attachments?~~ | **RESOLVED: YES — `events` array in script PATCH/PUT payload; event names → IDs via lookup endpoint** |
| 7 | What external systems are in scope (CRM, S/4HANA, others)? | Scope of `IsTestRun` pattern |
| 8 | Test Quote Type vs. `IsTestRun` field — which is cleaner? | NCD convention for test isolation — needs live test |
| 9 | Does `Param`-injected UserType override work in scripts? | Needs live test |
| 10 | NCD as `docs/NCD.md` in repo or Confluence page? | **Decided: `docs/NCD.md` is authoritative (draft complete)** |

---

## Section 4: Phased Approach

### Phase 1 — Foundation (Define the Standard)
- Author `docs/NCD.md` — naming, coding rules, test harness conventions
- Define `.cpq.yaml` sidecar schema (JSON Schema for validation)
- Create template repo scaffold with structure, empty directories, README stubs
- Define test quote naming convention and isolation policy

### Phase 2 — Sync Tooling
- Map exact REST API endpoints for script CRUD + event attachment (swagger.json)
- Build `tools/pull.py` — CPQ → git
- Build `tools/push.py` — git → CPQ
- Build `tools/validate.py` — NCD linter

### Phase 3 — CI/CD Pipeline
- GitHub Actions: PR validation (NCD lint + harness dry-run)
- GitHub Actions: deploy on merge (env-specific push)
- Define branch strategy and environment mapping
- Define shared tenant collision prevention policy

### Phase 4 — Testing Framework
- Confirm REST → event trigger mapping in dev instance
- Confirm `IAssert` and `ScriptExecutor` behavior in Standard Mode
- Author harness template and 2-3 example harnesses
- REST API-driven regression test scaffold
- Playwright smoke test scaffold (post-deploy verification only)

---

## Section 5: Dev Environment Verification Checklist

Everything below needs to be tested hands-on in the CPQ dev instance before the framework
design is finalized. Each item states what to try and what outcome to record.

---

### ScriptExecutor and Test Harness Behavior

- [ ] **`args` is None when called via ScriptExecutor**
  Try: Create a script that logs `str(args)`. Call it via `ScriptExecutor.ExecuteGlobal`.
  Record: Does `args` come through as `None`, or does it throw?

- [ ] **`Param` receives the dict passed to ScriptExecutor**
  Try: Pass `{"ItemId": 99}` via `ScriptExecutor.ExecuteGlobal("Script", {"ItemId": 99})`.
  In the called script, log `str(Param)` and `str(Param.get("ItemId"))`.
  Record: Is `Param` a dict? Is `Param.get("ItemId")` == 99?

- [ ] **State mutations in called script are visible to harness immediately**
  Try: Harness sets a custom field on an item, calls target script which sets a *different*
  field, then harness reads that second field after the call.
  Record: Is the change immediately visible, or is there a refresh/commit needed?

- [ ] **`IAssert` is available in Standard Mode**
  Try: In a script run from ScriptWorkbench Standard Mode, call `Assert.AreEqual(1, 1, "test")`.
  Record: Does it work, throw a NameError, or is it only available in Test Mode?

- [ ] **Inactive scripts silently return None**
  Try: Set a script to inactive. Call it via `ScriptExecutor.ExecuteGlobal`. Log the return value.
  Record: Is it `None`? Is there any error? This confirms harness scripts must stay active.

- [ ] **ScriptExecutor works from ScriptWorkbench (not just from within event scripts)**
  Try: Open ScriptWorkbench Standard Mode, paste a script that calls `ScriptExecutor.ExecuteGlobal`.
  Record: Does it execute? Any permission or context errors?

---

### ScriptWorkbench Context and Access

- [ ] **ScriptWorkbench launched from Setup (no quote) vs from a quote's user view**
  Try: Open ScriptWorkbench from Setup > Develop > Global Scripts. Log `str(Quote)`.
  Then open it from a quote's user view. Log `Quote.Id`.
  Record: Is `Quote` bound in both cases? What is it when launched from Setup?

- [ ] **ScriptWorkbench can be opened by non-admin users**
  Try: Log in as a standard sales user. Can they reach ScriptWorkbench at all?
  Record: Is it truly admin-only, or is there a permission that can be granted?

- [ ] **`Param`-injected UserType works for role-path testing in harnesses**
  Try: In a script that branches on user role, add: `user_type = Param.get("UserType") or User.UserType`.
  Call it via ScriptExecutor with `{"UserType": "SalesManager"}`.
  Record: Does the injected value override correctly, enabling role-path testing from a
  single admin session? (Supplement to dedicated test user accounts, not a replacement.)

---

### REST API → Event Trigger Mapping

- [ ] **POST a line item via REST triggers `OnItemAdded`**
  Try: Attach a script to `OnItemAdded` that writes a unique log entry. POST a new item
  to a test quote via the REST API. Check the audit log / script log.
  Record: Does the script fire? Synchronously (in the response) or async?

- [ ] **PATCH a custom field via REST triggers `OnCustomFieldChanged`**
  Try: Same approach — attach a logging script to `OnCustomFieldChanged`. PATCH the field
  via REST. Check if the script fires.
  Record: Yes/no, and whether the args (field name, old/new value) are populated correctly.

- [ ] **POST a new quote via REST fires `OnQuoteCreated`**
  Record: Does quote creation via API trigger the creation event?

- [ ] **DELETE a line item via REST fires `OnItemDeleted`**
  Record: Yes/no.

- [ ] **REST API response includes post-script state**
  Try: After POSTing a line item that triggers a discount script, does the REST response
  body already reflect the discount value, or do you need a subsequent GET?
  Record: This determines whether test assertions can happen on the POST response or need a GET.

---

### EffectiveDate and Time-Sensitive Testing

- [ ] **EffectiveDate is settable at quote creation via REST**
  Try: POST a new quote with `effectiveDate: "2024-01-01"` in the request body.
  Record: Is the field accepted? Does the created quote reflect that date?

- [ ] **Pricing engine uses EffectiveDate, not server time**
  Try: Create two quotes — one with `effectiveDate` in a period where Pricebook A is
  active, one in Pricebook B's period. Add the same product. Compare prices.
  Record: Do the prices differ according to the pricebook periods?

- [ ] **Scripts can read EffectiveDate reliably**
  Try: In a script, log `str(Quote.EffectiveDate)` on a quote with a set effective date.
  Record: Is it the date you set, or is it today's date?

---

### Test Quote Isolation

- [ ] **Quotes can be created and deleted via REST without side effects**
  Try: Create a test quote, add items, then DELETE it via REST.
  Record: Any errors? Does deletion cascade cleanly (no orphaned records)?

- [ ] **Quote Type can be used to gate script behavior**
  Try: Create a "Test" Quote Type in admin. In a script, log `Quote.QuoteType`.
  Record: Is the Quote Type accessible in scripts? Is it the name or an ID?

- [ ] **Test quotes don't appear in standard user search/list views**
  Try: Create a quote named `[TEST]_ak_CPQX-001`. Log in as a standard sales user.
  Can they see it in their quote list?
  Record: Whether naming convention alone is sufficient isolation, or if Quote Type
  filtering is needed.

---

### External System Mock Path

- [ ] **`IsTestRun` custom field approach works**
  Try: Create a quote-level custom field `IsTestRun` (checkbox). In a script that calls
  an external REST endpoint, add an `if` branch that skips the call when `IsTestRun` is true.
  Set the field to true on a test quote and run the script.
  Record: Does the stub path execute cleanly?

- [ ] **Whether CPQ supports environment-level endpoint overrides**
  Try: Check Setup for any "integration endpoint" or "REST client base URL" configuration.
  Record: If such a setting exists, point it to a mock server in dev and see if scripts
  pick it up — this would replace the `IsTestRun` pattern entirely.

---

### CI/CD API Capabilities

- [ ] **Script body can be pushed via REST API**
  Try: Use the Script Management API endpoint (find in swagger.json) to update a script's
  body via a REST call outside CPQ admin UI.
  Record: Which endpoint, what payload shape, does it work?

- [ ] **Script event attachments can be set/updated via REST API**
  Try: After pushing a script body, use the API to attach it to `OnItemAdded`.
  Record: Is there an event attachment endpoint? Or are events only settable in the UI?
  **This is critical** — if event attachments can't be set via API, the sidecar push
  tool is incomplete.

- [ ] **Pull via Audit Trail API returns script content, not just metadata**
  Try: Make a change to a script in the CPQ admin UI. Call the Audit Trail API filtered
  by date. Does the response include the full script body, or just the fact that it changed?
  Record: Whether the pull workflow can reconstruct files from the API alone.

---

---

## Section 5b: Responsive Template Discoveries

### Discovery 19 — Responsive Templates Are Tier 1 With Their Own Risk Profile

**What they are:** The CPQ configurator UI is built from HTML/CSS/JS templates stored in the
platform database. KnockoutJS powers the data binding. SAP CPQ injects a pre-defined KO
view model (`cpq.*` namespace with observables for product, attributes, pricing, etc.) into
the page at runtime — developers bind against it but cannot define their own root observables.

**Why this is the highest-risk artifact in CPQ:**
- A broken responsive template **prevents all users from opening the configurator** — blast radius
  is the entire user base, not a single script path
- There is no native feature gating, A/B rollout, or rollback mechanism in CPQ
- Template deploys are currently manual and irreversible without another manual deploy
- No local development environment — the KO view model only exists in the CPQ runtime
- Templates are large (1,000–5,000+ lines of mixed HTML/CSS/JS), making diffs noisy and
  conflicts hard to resolve

**Framework response — three layers:**

1. **Version control + rollback** — Git is the rollback mechanism. Any bad deploy is one
   `push.py --version <hash>` away from reverting. This requires the REST API to accept
   template pushes (TBD — see verification checklist).

2. **Feature gating via inactive template slot** — CPQ supports multiple template configurations.
   The pattern: maintain a `[STAGING]` template alongside the active one. CI/CD deploys to the
   staging slot; a separate approval step activates it. Bad staging deploy never touches production
   users.

3. **`ko.cleanNode()` escape hatch** — `ko.cleanNode(element)` removes all KO bindings from a
   DOM subtree, allowing developers to re-apply bindings manually with custom logic on top of
   the platform view model. This is the correct pattern for complex UI interactions that the
   platform bindings don't support natively. **NCD rule:** every `ko.cleanNode()` call must be
   wrapped in a clearly commented section with a link to the ticket that required it. Unbounded
   `cleanNode` usage across large subtrees causes performance issues and makes the template
   nearly unmaintainable.

**Repo structure — own subdirectory with own CLAUDE.md:**
```
responsive-templates/
├── CLAUDE.md                          # Template-specific agent instructions and KO rules
├── {TemplateName}/
│   ├── template.html                  # Full template HTML (the versioned artifact)
│   ├── template.cpq.yaml              # Metadata: name, active slot, quote types, description
│   ├── ko-context.json                # KO view model snapshot (Playwright-generated — see Disc. 20)
│   └── sections/                      # Optional: split large templates into logical sections
│       ├── header.html                #   for readability — concatenated on push
│       ├── product-config.html
│       └── pricing-summary.html
```

The `CLAUDE.md` in `responsive-templates/` carries the KO-specific rules, the `cleanNode`
convention, and the feature gating instructions — kept separate from the script/module NCD
because the constraints and tooling are fundamentally different.

> **TBD:** Confirm the REST API endpoint for responsive template push/pull. Check swagger.json
> for `/api/quote/v1/responsiveTemplates` or similar. If no API exists, templates remain Tier 2
> but still benefit from the `sections/` split approach for readability.

---

### Discovery 20 — Playwright as KO Context Extractor (The "KO Sidecar" Pattern)

**The problem:** The `cpq.*` KO view model is only accessible when the page is loaded in a
real CPQ browser session. Developers customizing a template must be *on the page* to understand
what's available — there's no documentation of the observable tree that's accurate for a given
tenant and product configuration. AI assistance on template code is limited without this context.

**The solution — Playwright KO introspection tool:**

```python
# tools/extract-ko-context.py
# Run against a live CPQ session to snapshot the KO view model for a given template page

from playwright.sync_api import sync_playwright
import json

def extract_ko_context(page_url, selector=".cpq-configurator-root"):
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=False)  # needs login session
        page = browser.new_page()
        page.goto(page_url)
        page.wait_for_selector(selector)

        ko_context = page.evaluate("""
            (selector) => {
                const el = document.querySelector(selector);
                const ctx = ko.contextFor(el);
                // Walk the context tree, serialize observable values and types
                return JSON.parse(ko.toJSON(ctx.$data));
            }
        """, selector)

        return ko_context
```

**Output:** A `ko-context.json` sidecar committed alongside `template.html`. This file:
- Documents every observable available to the template at runtime
- Gives Claude (and developers) a concrete view model to reason against when writing bindings
- Gets regenerated whenever the product model or tenant configuration changes
- Is **not** used at deploy time — it is a development reference artifact only

**What this enables:**
- AI-assisted template development: Claude reads `ko-context.json` before touching `template.html`
- Offline development: a developer can write bindings against the serialized context without
  being in a live CPQ session
- Regression detection: if a CPQ upgrade changes the view model shape, the `ko-context.json`
  diff shows exactly what broke

**Playwright's second role — the only way to test templates:**
REST API tests cannot verify template rendering. Playwright is mandatory for responsive template
smoke tests (Discovery 8, Layer 3). Specifically:
- Assert the configurator renders without JS errors
- Assert key KO bindings are populated (price, attribute values, summary totals)
- Assert that `ko.cleanNode()` sections re-bind correctly
- Assert the template is usable after a KO error in one section (isolation check)

> **TBD:** Whether `ko.toJSON()` on the full context produces a stable, serializable result
> or throws on circular references. May need a custom walk that records observable names and
> types only (not values) for the reference artifact.

---

### Discovery 21 — Event Flow Artifacts: Making the CPQ Pipeline AI-Navigable

**The problem today:** Understanding what fires when a user does anything in CPQ requires a
specialist who has the event pipeline in their head. When debugging, questions like "why did
the price change when I added that product?" require reading 5–10 scripts and mentally tracing
execution order. There is no map.

**The insight:** The framework already has all the information needed to generate this map.
Every `.cpq.yaml` sidecar declares:
- Which event the script is attached to
- Its `execution_order` (rank)
- Which modules it imports (readable from the `.py` file)
- Whether it calls external systems (readable from NCD conventions: `Integration_*` module imports)

**Proposed artifact: `docs/event-flow.json` + `docs/event-flow.md`**

Auto-generated by `tools/gen-event-map.py` on every CI run. The JSON is the machine-readable
form for AI consumption; the Markdown renders as Mermaid diagrams for human review.

**What the event flow map captures:**

```json
{
  "OnItemAdded": {
    "scripts": [
      {
        "name": "Quote_OnItemAdded_RegionValidation",
        "order": 5,
        "modules": ["Common_SqlHelpers", "Integration_CrmClient"],
        "external_systems": ["CRM"],
        "sets_fields": ["RegionCode", "SalesTerritory"],
        "reads_fields": ["CustomerAccount"]
      },
      {
        "name": "Quote_OnItemAdded_TierDiscount",
        "order": 10,
        "modules": ["Pricing_DiscountRules"],
        "external_systems": [],
        "sets_fields": ["DiscountPct"],
        "reads_fields": ["CustomerTier", "RegionCode"]
      }
    ],
    "data_flow": {
      "RegionCode": "written by RegionValidation (order 5), read by TierDiscount (order 10)"
    }
  }
}
```

**The `data_flow` section is the key insight** — it makes cross-script dependencies explicit.
Today this knowledge lives only in a specialist's head. With this artifact, Claude can answer:
- "What scripts run when a user adds a product?"
- "If I change how `RegionCode` is set, what downstream scripts are affected?"
- "Is there a race condition between these two scripts at order 5 and 10?"

**How Claude uses this in development:**
When an implementer agent is assigned a ticket that touches any script, the orchestrator
pre-loads `docs/event-flow.json` into context. The agent can immediately see:
- What fires before and after the script under modification
- Which custom fields the modified script depends on (and which scripts set them)
- Whether the change could break a downstream script's assumptions

**Generation approach:**
- Static analysis: parse imports from `.py` files to find module dependencies
- Pattern matching: flag `Integration_*` imports as external system calls
- Field references: regex for `SetCustomField`/`GetCustomField` calls to extract field names
- This is imperfect (dynamic field names won't be caught) but covers 80%+ of cases
- Supplement with a `# @reads: FieldName` / `# @writes: FieldName` annotation convention
  in script headers for explicit declaration (NCD addition)

> **TBD:** Define the `@reads`/`@writes` annotation format and add to NCD. Determine whether
> gen-event-map.py is a CI step (regenerates on every merge to dev) or a manual tool.

---

---

### Discovery 22 — Schema Introspection via SqlHelper (The Table Map)

**The problem:** Every CPQ scripting object (`Quote`, `ProductHelper`, etc.) is an abstraction
over base database tables. When that abstraction is insufficient — complex queries, multi-table
joins, debugging data states — developers write raw SQL via `SqlHelper`. Today, knowing which
tables exist and what their columns are requires a specialist or trial and error.

**The solution — `SCHEMA_INTROSPECT.py`:** A standalone script that runs in ScriptWorkbench
Standard Mode. Queries `INFORMATION_SCHEMA.TABLES` and `INFORMATION_SCHEMA.COLUMNS` via
`SqlHelper.ExecuteQuery` and dumps the full schema to the console.

**Why `Trace.Write` not `Log.Write`:**
`Log.Write` writes to the shared system log — on a live tenant, this is polluted by every
other script that fires (event scripts, pricing scripts, scheduled tasks). `Trace.Write` goes
directly to the ScriptWorkbench output console, so the introspection dump is clean and
isolated from ambient tenant noise. This is the correct choice for any diagnostic/utility
script run from ScriptWorkbench.

**Script location:** `research/SCHEMA_INTROSPECT.py` (paste into ScriptWorkbench; not deployed
to CPQ as a named script).

**Output format — one line per table:**
```
SCHEMA_START | tables=142 | filter=Cameleon*
TABLE|CameleonQuote|QuoteId:int,QuoteNumber:nvarchar(50)?,CustomerId:int,...
TABLE|CameleonQuoteItem|QuoteItemId:int,QuoteId:int,ProductId:nvarchar(50)?,...
...
SCHEMA_END | done
```
`?` suffix = nullable. `(MAX)` suffix = varchar/nvarchar MAX. Pipe-delimited for easy parsing.

**Actual table naming conventions (confirmed from developer log observation):**

| Pattern | Example | Meaning |
|---|---|---|
| `ALLCAPS_UNDERSCORE` | `PRODUCTS`, `QUOTES` | Core entity tables — no vendor prefix |
| `{TABLE}_ML` | `PRODUCTS_ML`, `PRODUCT_TYPES_DEFN_ML` | Multilanguage variant; joined with `ML_ID=0` for default language |
| `ABS_{TABLE}` | `ABS_PRODUCT` | Abstract/configurator layer (product model rules) |
| `{TABLE}_VERSIONS` | `PRODUCT_VERSIONS` | Version history tables |
| `{TABLE}_DEFN` | `PRODUCT_TYPES_DEFN` | Definition/lookup tables |

> **Correction:** Early drafts assumed a `Cameleon*` prefix on base tables (from the legacy
> product name). This is wrong. CPQ base tables use plain `ALLCAPS_UNDERSCORE` naming with
> no vendor prefix. `TABLE_PREFIX_FILTER` defaults to `""` (all tables) in the introspection script.

**Configurable filters:**
- `TABLE_PREFIX_FILTER = ""` — all tables (recommended first run)
- `TABLE_PREFIX_FILTER = "QUOTE"` — quote-domain tables only
- `TABLE_PREFIX_FILTER = "ABS_"` — configurator/abstract layer only
- `TABLE_SUFFIX_FILTER = "_ML"` — multilanguage tables only

**Downstream use:**
1. Run in dev instance, copy TABLE|... lines to `docs/schema-reference.txt`
2. `tools/gen-schema-json.py` parses that file into `docs/schema-reference.json`
3. **Track 1 scope: platform tables only** — filter `origin == "platform"` (774 tables on the
   reference instance). Custom tables (client-created) are client-specific and belong in Track 2.
4. Schema reference feeds into `docs/event-flow.json` (Discovery 21) — scripts that call
   `SqlHelper` can have their touched tables mapped to actual column definitions
5. AI agents (Claude) load `docs/schema-reference.json` when writing or reviewing any script
   that contains `SqlHelper.GetList` / `SqlHelper.GetFirst` calls — look up column names
   before writing SQL, no guessing

**The manual mapping phase (after initial dump):**
The schema dump gives you table names and columns but not the semantic mapping — which CPQ
object corresponds to which table. That mapping is built manually by navigating through CPQ
while reading the developer logs:
- Open a configurable product → note which tables are read
- Add a line item to a quote → note which tables are written
- Submit for approval → note the workflow tables touched

This builds `docs/object-model.md` — the narrative layer that explains "creating a product
writes to CameleonProduct, CameleonAttribute, CameleonAttributeValue, CameleonPrice..." This
is a one-time discovery effort per CPQ version but enormously valuable for debugging and AI
assistance. Once mapped, the framework can treat this as a semi-stable reference (CPQ upgrades
rarely restructure core tables).

> **TBD:** Confirm that `INFORMATION_SCHEMA` is accessible via `SqlHelper` on the dev tenant.
> Some hosted CPQ environments may restrict direct schema queries. Fallback: use `sys.tables`
> and `sys.columns` (SQL Server system catalog, slightly different syntax but same data).
> Fallback script:
> ```python
> # sys catalog alternative if INFORMATION_SCHEMA is restricted
> sql = ("SELECT t.name AS TABLE_NAME, c.name AS COLUMN_NAME, "
>        "       tp.name AS DATA_TYPE, c.max_length, c.is_nullable "
>        "FROM sys.tables t "
>        "JOIN sys.columns c ON c.object_id = t.object_id "
>        "JOIN sys.types tp ON tp.user_type_id = c.user_type_id "
>        "WHERE t.name LIKE ? "
>        "ORDER BY t.name, c.column_id")
> ```

---

## Section 6: Next Sessions — To-Do List

### Track 1 (this doc) — pending work, ordered by priority

- [x] **REST API research** — COMPLETE (Discoveries 17-18). Script CRUD: `/api/script/v1/globalscripts` full CRUD, PATCH preferred, events array in payload. Event attachment settable via API. Change Set API confirmed for atomic cross-env promotion. Version history endpoint for pull reconstruction. Audit trail NOT suitable for pull (may truncate bodies).
- [ ] **ScriptExecutor live verification** — user can test in dev CPQ instance; confirm `IAssert` availability in Standard Mode, `Param` dict injection, `args = None` behavior, state mutation visibility, inactive script behavior (clears ~6 items from Section 5 checklist)
- [x] **NCD authoring** — COMPLETE. Draft at `research/NCD-draft.md` (1,495 lines). Covers: domain taxonomy, all naming patterns, sidecar schema, folder structure, branch/commit conventions, IronPython coding standards (9 rules with before/after examples), module design principles, test harness conventions, quick-reference appendix. TBD items indexed in Appendix B pending live verification.
- [x] **Artifact scope decision** — RESOLVED (Discovery 16): custom fields, approval rules, workflow notifications, document templates are Tier 1 (full CRUD API). Custom tables, pricebooks, products, quote types are Tier 2 (config-only, no usable REST API).
- [ ] **REST → event trigger map** — live test in dev: does POST line item fire OnItemAdded, does PATCH custom field fire OnCustomFieldChanged, does REST response include post-script state or requires a GET. Quote API base: `/api/Quotes/v1/`.
- [ ] **EricHoftiezerACN/sap-cpq review** — evaluate Discovery 19 items for adoption: `conftest.py` pattern, `/customapi/ExecuteScript` integration into regression suite, `.pylintrc` additional-builtins list, dual-mode OAuth2 auth for push/pull tools. Review before implementing — do not mix into framework without deliberate evaluation.
- [ ] **NCD migration** — move `research/NCD-draft.md` → `standards/NCD.md` in the framework project (ready to migrate, just paused).
- [ ] **Sidecar schemas for Tier 1 non-script artifacts** — define `.cpq.yaml` schema for custom fields, approval rules, workflow notifications, document templates.
- [ ] **Responsive template REST API verification** — check swagger.json for responsive template CRUD endpoint. If exists: confirm push/pull works, confirm staging slot API. If absent: Responsive Templates stay Tier 2 but still get the `sections/` split structure and `ko-context.json` sidecar for dev reference.
- [ ] **KO context extractor (Playwright)** — build `tools/extract-ko-context.py`; verify `ko.toJSON()` serializability on CPQ context tree; define fallback walk if circular refs encountered. Run against dev instance, commit resulting `ko-context.json` as reference artifact.
- [ ] **Event flow map generator** — build `tools/gen-event-map.py`; define `@reads`/`@writes` annotation format in NCD; generate first `docs/event-flow.json` + `docs/event-flow.md` from existing sidecar files once template repo is seeded.
- [ ] **NCD additions from this session** — add: Responsive Template section (KO rules, `cleanNode` conventions, staging slot pattern, feature gating), `@reads`/`@writes` annotation standard, `Responsive` domain in domain taxonomy, `pricing/` as explicit subfolder for pricing event scripts.
- [ ] **Schema introspection — run in dev instance** — paste `research/SCHEMA_INTROSPECT.py` into ScriptWorkbench Standard Mode; copy TABLE|... output to `docs/schema-reference.txt`; begin manual object-model mapping (open product, add quote item, submit quote — observe which tables are touched via developer logs).
- [x] **`tools/gen-schema-json.py`** — COMPLETE. Parses `schema-reference.txt` into `schema-reference.json`. **774 platform tables confirmed** (filter: `origin == "platform"`). This is the Track 1 deliverable — the CPQ platform data model. Custom table identification (77 tables) is Track 2 / client-specific context only.
- [ ] **`tools/identify-custom-tables.py`** — calls `GET /api/custom-table/v1/customTables` with CPQ credentials (env vars), cross-references `schema-reference.json`, re-tags every table as `client_custom` or `platform` definitively. Script is written; pending live run with client credentials.
- [ ] **Crawl custom table API into sap-cpq-kb** — `/api/custom-table/swagger/v1/swagger.json` is a separate OpenAPI 3.0.1 spec not captured in the KB. Add after confirming spec is stable. Endpoints: full CRUD for custom tables + entries, column management, OData-filtered entry queries.
- [ ] **Verify `setup/api/v1/admin/lookups/customTables`** — lighter alternative (returns `[{id, name}]` only). May be sufficient for classification without the full custom table API token scope.

### Session 2026-04-17 — shipped + immediate fixes required

**Shipped (committed to origin/main):**
- [x] `template/.cpq/stubs/` — Pylance type stubs for IronPython CPQ globals
- [x] `template/pyrightconfig.json` — wires stubPath, suppresses IronPython noise
- [x] `template/.cpq/config.yaml` — added `platform.cpq_version`, `platform.quote_engine`, `platform.integrations`
- [x] `template/CLAUDE.md`, `.github/copilot-instructions.md`, `.cursor/rules/cpq-platform.md` — LLM-agnostic AI context adapters
- [x] `README.md` — structure fixed, Pylance and AI adapter sections added

**Stub correctness issues found via KB verification — fix before using on any engagement:**

- [x] **Rewrite `_quote_item.pyi`** — DONE 2026-04-17. Removed 16 invented properties; added 15 KB-confirmed properties. `IsComplete` moved to `IMainItem` where it belongs.
- [x] **Fix `IQuoteCustomField` in `_quote.pyi`** — DONE 2026-04-17. Removed `IsSelected()`, fixed `Content: str`, added all 11 KB properties.
- [x] **Add missing globals to `builtins.pyi`** — DONE 2026-04-17. Added: `RestClient`, `QuoteHelper`, `ScriptExecutor`, `WorkflowExecutor`, `JsonHelper` with full stub files. Undocumented globals (`User`, `WebServiceHelper`, `XmlHelper`, `RequestContext`, `ApiResponseFactory`) stubbed as `Any`.

**Other discoveries from Toyota script review:**
- Container rows: bracket notation `row["ColName"]` is correct (IContainerRow indexer). SqlHelper rows: dot notation `row.COLUMN_NAME`. Both are right in their context — document in FIELD-NOTES.
- IronPython .NET Boolean serializes as `"True"`/`"False"` (capital) — `str(val) == "True"` is intentional. Document in FIELD-NOTES.
- `Param` is not a platform global — it's an injected input payload for product API scripts.
- Q1/Q2 stub split deferred — current stubs cover shared surface. Future: `stubs-q1/` vs `stubs-q2/`, onboarding step sets `stubPath`.

### Track 2 (client-specific) — DEFERRED

- [ ] **Track 2: Client implementation** — deferred until Track 1 is stable AND client's IT Transformation scope/timeline is clearer
  - See `research/2026-04-16-client-implementation-discovery.md`
  - Key blocker: M&A / IT Transformation may change Azure DevOps org, tenant structure, and CPQ credentials — don't over-engineer around current-state infrastructure
