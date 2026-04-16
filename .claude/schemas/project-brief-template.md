---
project: {{PROJECT_NAME}}
created_at: {{ISO_TIMESTAMP}}
approved_at: ""
status: draft
---

# {{PROJECT_NAME}} · Project Brief

<!--
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
This document is written during IDEATION and approved by the human.
After approval it is IMMUTABLE — planner reads it, never rewrites it.

STATUS: draft → questions → approved
  draft:     ideator is writing
  questions: open questions exist, awaiting human input
  approved:  human signed off, ready for planner

QUALITY BAR (must be met before approval):
  ✓ Every success criterion is automatically testable
  ✓ Tech stack is decided — no "we could use X or Y"
  ✓ Architecture approach is decided — no open alternatives
  ✓ Out of scope is explicit — anything unlisted could be assumed in scope
  ✓ Open Questions section is empty
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-->

## Problem Statement
<!-- What problem are we solving and why. 2-4 sentences. Be specific. -->
{{PROBLEM_STATEMENT}}

## Success Criteria
<!-- Every criterion must be automatically testable by a reviewer agent.
     Bad:  "The UI should feel fast"
     Good: "p95 API response time < 200ms under 100 concurrent users" -->
- [ ] {{CRITERION}}
- [ ] {{CRITERION}}

## Tech Stack
<!-- Decided. Not proposals. -->
| Concern | Decision |
|---------|----------|
| Language | {{e.g. TypeScript 5.4}} |
| Runtime | {{e.g. Node 20 LTS}} |
| Framework | {{e.g. Express 4.18}} |
| Database | {{e.g. PostgreSQL 16 via Supabase}} |
| ORM / query | {{e.g. Drizzle ORM}} |
| Auth | {{e.g. JWT RS256}} |
| Test runner | {{e.g. Vitest 1.x}} |
| Deployment | {{e.g. Railway}} |

## Architecture Approach
<!-- Decisions made here. Planner decomposes — it never decides architecture.
     Be specific enough that specialists cannot misinterpret. -->

### Structure
{{e.g. "Feature-based folders: src/features/<name>/{routes,service,repo,types}.ts"}}

### Patterns to Follow
- {{e.g. "Repository pattern for all DB access — no raw queries in routes"}}
- {{e.g. "Error handling: throw AppError(message, statusCode), caught by global handler"}}
- {{e.g. "All env vars accessed via src/config.ts — never process.env directly in features"}}

### Integration Points
- {{e.g. "Stripe webhooks → POST /webhooks/stripe, verified with stripe.webhooks.constructEvent"}}

## Out of Scope
<!-- Explicit list. Anything not here could be interpreted as in scope by agents. -->
- {{OUT_OF_SCOPE_ITEM}}
- {{OUT_OF_SCOPE_ITEM}}

## Known Risks and Mitigations
| Risk | Likelihood | Mitigation |
|------|-----------|------------|
| {{RISK}} | low/med/high | {{MITIGATION}} |

## Codebase Context
<!-- Written by researcher agent. Human may edit but should not need to. -->

### Existing Patterns Found
{{e.g. "Error handling uses AppError class in src/errors.ts"}}

### Existing Dependencies Relevant to This Project
{{e.g. "express, zod, pg already installed"}}

### Files That Will Be Affected
{{e.g. "src/routes/index.ts — new routes must be registered here"}}

### Conventions Observed
{{e.g. "All route files export a router, imported in src/routes/index.ts"}}

## Open Questions
<!-- Must be empty before status moves to 'approved'.
     If questions remain, ideation is not done. -->
_None._
