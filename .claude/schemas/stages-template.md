---
project: {{PROJECT_NAME}}
status: approved
current_stage: 1
total_stages: 3
created_at: {{ISO_TIMESTAMP}}
updated_at: {{ISO_TIMESTAMP}}
---

# {{PROJECT_NAME}} · Stages

<!--
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
STATUS VALUES
  Project:  planning | approved | executing | staged | complete | blocked
  Stage:    pending | executing | staged | complete
  Task:     pending | queued | in_progress | ambiguous | complete | failed | blocked

PIPELINE TYPES
  full:     implementer → verifier → reviewer   (feature code with spec-driven tests)
  lite:     implementer → reviewer              (implementer writes own tests)
  minimal:  implementer only                    (config, scaffolding, docs, migrations)

DIFFICULTY (controls brief depth assembled by orchestrator)
  low:      task contract only
  medium:   task contract + relevant decisions + 2-3 prior handoffs
  high:     task contract + full scope section + all decisions + all handoffs + skills

AMBIGUITY RULE
  If a specialist cannot complete the brief without guessing → status: ambiguous
  Orchestrator routes ambiguous tasks back to planner for brief revision.
  Validator re-checks revised briefs before re-queuing.
  ambiguity_count tracks how many times a task brief has been revised.
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-->

## Stage 1 · {{STAGE_NAME}}
status: executing

### task-001 · {{TASK_TITLE}}
id: task-001
stage: 1
status: pending
pipeline: full
difficulty: medium
worktree: ""
depends_on: []
inputs:
  - project-brief.md
  - src/routes/index.ts
outputs:
  - src/middleware/auth.ts
  - src/middleware/auth.test.ts
acceptance:
  - All tests in auth.test.ts pass via npm test
  - JWT_SECRET read only from process.env — never hardcoded
  - Returns 401 { error: "Unauthorized" } on invalid token
  - No modifications to files outside outputs list
brief: |
  {{VERBATIM INSTRUCTION — written by planner, never modified after approval.}}
  {{Must be completable without any judgment calls about what to build.}}
  {{Specify: what to create, where, what pattern to follow, what NOT to touch.}}
retry_count: 0
ambiguity_count: 0
started_at: ""
completed_at: ""
handoff: ""

### task-002 · {{TASK_TITLE}}
id: task-002
stage: 1
status: pending
pipeline: minimal
difficulty: low
worktree: ""
depends_on:
  - task-001
inputs:
  - project-brief.md
  - handoffs/task-001.md
outputs:
  - .env.example
acceptance:
  - .env.example contains all vars referenced in project-brief.md
  - No actual secret values — placeholder strings only
  - .env not created (only .env.example)
brief: |
  {{VERBATIM INSTRUCTION}}
retry_count: 0
ambiguity_count: 0
started_at: ""
completed_at: ""
handoff: ""

## Stage 2 · {{STAGE_NAME}}
status: pending
depends_on_stages:
  - 1

### task-003 · {{TASK_TITLE}}
id: task-003
stage: 2
status: pending
pipeline: full
difficulty: high
worktree: ""
depends_on:
  - task-001
  - task-002
inputs:
  - project-brief.md
  - handoffs/task-001.md
  - handoffs/task-002.md
outputs:
  - src/api/payments.ts
  - src/api/payments.test.ts
acceptance:
  - {{SPECIFIC MEASURABLE CRITERION}}
  - {{SPECIFIC MEASURABLE CRITERION}}
brief: |
  {{VERBATIM INSTRUCTION}}
retry_count: 0
ambiguity_count: 0
started_at: ""
completed_at: ""
handoff: ""

## Stage 3 · {{STAGE_NAME}}
status: pending
depends_on_stages:
  - 1
  - 2
