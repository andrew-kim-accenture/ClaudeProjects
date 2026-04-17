# SAP CPQ Developer Framework — Client Implementation Discovery
_Last updated: 2026-04-16 | Status: Ideation — early context gathering_
_Scope: **Track 2 — Client-Specific Layer** — applying the agnostic framework to this client's constraints_
_See also: `2026-04-16-cpq-developer-framework-discovery.md` — Track 1, the agnostic framework this builds on_

---

## Client Context

This document captures constraints, decisions, and discoveries that are specific to
the current client engagement. The agnostic CPQ Developer Framework (Track 1) is the
foundation; this document describes what changes or is layered on top for this client.

---

## Section 1: Known Client Constraints

### Constraint 1 — Infrastructure Under Active Change (M&A / IT Transformation)

The client is undergoing an **IT Transformation following a merger and acquisition event**.
Their infrastructure, tooling, and processes are actively changing. This has direct
implications for framework design:

- **Do not over-engineer around current-state tooling.** What exists today may be replaced
  in 6-12 months. The framework should be easy to re-point at new endpoints/repos/runners.
- **The agnostic design of Track 1 is especially important here.** If the client's CI/CD
  platform changes mid-engagement (e.g. migrating from one Azure DevOps org to another,
  or adopting a new standard), only the thin pipeline definition files need to change —
  not the tools, not the repo structure, not the sidecar schema.
- **Decisions made during the transformation may be revisited.** Document assumptions
  about current tooling with dates. Flag anything that depends on the current org structure.

> **TBD:** Understand the scope and timeline of the IT Transformation. What specifically
> is changing — DevOps org? Azure tenant? Identity/SSO? This affects CPQ tenant connectivity
> and API credential management. Key question: will CPQ tenant URLs or API credentials change
> as a result of the transformation?

---

### Constraint 2 — Version Control and CI/CD: Azure DevOps

**Current state:**
- **Git hosting**: Azure Repos (part of Azure DevOps)
- **CI/CD**: Azure Pipelines
- **Work item tracking**: Azure DevOps Boards (stories, tasks)
- **Production incident tracking**: ServiceNow

**Azure Pipelines specifics relevant to the framework:**
- Supports `stages → jobs → steps` model with approval gates between stages natively
  — a better fit for dev → tst → uat → prod promotion than GitHub Actions (which requires
  environment protection rules as a separate concept)
- Service connections in Azure DevOps store CPQ API credentials securely
- Variable groups in Azure Pipelines are the equivalent of GitHub Actions secrets,
  but scoped per environment — clean fit for per-tenant credentials

**Branch → tenant → pipeline stage mapping for this client:**
```
feature/{1234}-{desc}   →  developer's machine (no auto deploy)
dev                      →  DEV tenant (auto deploy on merge to dev branch)
tst                      →  TST tenant (auto deploy on merge to tst branch)
uat                      →  UAT tenant (auto deploy on merge to uat branch)
main                     →  PROD tenant (auto deploy on merge, requires approval gate)
hotfix/INC{number}       →  emergency: deploys to PROD after approval, backports to dev
```

**Work item ID format:**
- Azure DevOps work items are numeric: `1234`
- Azure Boards auto-links commits that mention `AB#1234` in the commit message body
- NCD commit convention should include `AB#1234` so stories show linked commits in the board
- Test harness naming: `TEST_1234_Tier1DiscountOnItemAdd.py`
- Feature branch naming: `feature/1234-tier-discount`

**ServiceNow for production incidents:**
- Hotfix branch naming: `hotfix/INC0012345`
- Embeds the ServiceNow incident number in git history — traceable for post-incident review
  and compliance audit during and after the M&A transformation period

---

### Constraint 3 — Tenant Environment Topology

**Confirmed standard for this client:** 3-5 tenant tiers (dev / tst / uat / [stage] / prod).
See Track 1 Discovery 14 for how this shaped the branch = environment strategy.

> **TBD:** Confirm exact tenant count and URLs for this client. During IT Transformation,
> tenant ownership and naming may change — confirm with client which environments are stable.
> Also confirm: are tenants in a shared SAP BTP subaccount, or separately provisioned?

---

## Section 2: Open Questions (Client-Specific)

| # | Question | Why it matters |
|---|---|---|
| 1 | What is the scope and timeline of the IT Transformation? | Affects how much we lock in to current tooling |
| 2 | Will CPQ tenant URLs or credentials change during transformation? | API credential strategy, service connections in Azure Pipelines |
| 3 | Exact tenant count and stable environment URLs? | Populate `.cpq/config.yaml`, Azure Pipelines variable groups |
| 4 | Is there an existing Azure DevOps org and project, or starting fresh? | Repo setup, pipeline permissions, service connection setup |
| 5 | Who owns the CPQ API credentials? (client IT, SI team, SAP) | Determines how credentials are stored and rotated |
| 6 | Is ServiceNow integrated with Azure DevOps today? | May already have an incident → work item link; avoid duplicating |
| 7 | What is the client's current branching strategy (if any)? | May have existing conventions to honor or replace |
| 8 | Are there compliance or audit requirements tied to the M&A? | May mandate specific traceability conventions in git history |

---

## Section 3: Pending Client Environment Access

These tools and validations are fully designed and ready to run, but require client
system credentials before they can be executed. Revisit once permissions are granted.

### 3.1 — Schema Introspection (`SCHEMA_INTROSPECT.py`)

**What it does:** Runs in ScriptWorkbench Standard Mode, dumps all 851 base tables and
their column schemas via `SqlHelper.GetList` + `INFORMATION_SCHEMA`.

**Status:** Script written at `research/SCHEMA_INTROSPECT.py`. Tested successfully on TST
(2026-04-17) — 851 tables captured, output in `research/schema-reference.txt` and
`research/schema-reference.json`.

**Next run:** Re-run on client's DEV tenant once access is available. Output may differ
from TST if client has additional custom tables or a different CPQ version.

---

### 3.2 — Custom Table Identification (`identify-custom-tables.py`)

**What it does:** Calls `GET /api/custom-table/v1/customTables` with a bearer token to
get the authoritative list of client-created custom tables. Cross-references against
`schema-reference.json` and re-tags every table's origin as `client_custom` or `platform`
definitively — replacing the heuristic Z-namespace classifier.

**Status:** Script written at `research/identify-custom-tables.py`. Pending client
credentials.

**How to run:**
```bash
set CPQ_BASE_URL=https://client.dev.cpq.cloud.sap
set CPQ_USERNAME=service_account
set CPQ_PASSWORD=...
py research/identify-custom-tables.py
```

**Auth endpoint:** `POST /api/rd/v1/Core/LogIn?username=&password=` → returns bearer token.

**Expected outcome:** Correct the 25 tables currently misclassified by the heuristic
(script found 52 client_custom; actual count is 77). Once run, `schema-reference.json`
origin fields become authoritative rather than inferred.

**Credentials note:** Store in Azure Pipelines variable groups (per-environment), not in
the repo. Aligns with Constraint 2 (Azure DevOps service connections for CPQ credentials).

---

### 3.3 — Event Trigger Live Tests (Section 5 checklist, Track 1)

Several Track 1 verification items require a live CPQ instance:
- ScriptExecutor behavior (`args`, `Param`, `IAssert`)
- REST → event trigger mapping (does POST line item fire `OnItemAdded`?)
- `EffectiveDate` settable via REST at quote creation
- `IsTestRun` / Test Quote Type isolation

These are listed in full in Track 1 Section 5. Run against DEV tenant once access is
available. Results feed back into Track 1 (close open TBD items) and directly inform
the regression test suite design.

---

## Section 4: Deferred Until Track 1 Is Stable

The following decisions cannot be made well until the agnostic framework is finalized:

- Azure Pipelines YAML design for the deploy pipeline
- Variable group and service connection naming conventions
- Azure Boards commit message convention (`AB#1234` linking)
- Specific `.cpq/config.yaml` values for this client's tenants

Once Track 1 is stable, return here and work through each of these with the client's
IT Transformation timeline in mind.
