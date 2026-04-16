# Claude Projects — Home

> [!tip] Start here
> Add new projects to [[queue]]. Everything else is autonomous.
> You have **exactly three approval gates** — brief, plan, and morning review.

---

## Active Projects

| project | stage | status | tasks | last activity |
|---------|-------|--------|-------|---------------|
| _(none yet)_ | | | | |

**Stages:** `IDEATION` · `PLANNING` · `EXECUTION` · `COMPLETE` · `BLOCKED`
**Status:** `active` · `waiting_approval` · `ambiguous` · `paused` · `complete`

---

## Pipeline

```
┌─────────────────────────────────────────────────────────────────┐
│  IDEATION                                                       │
│  [[.claude/agents/researcher|researcher]] → [[.claude/agents/ideator|ideator]] → YOU approve project-brief.md         │
└──────────────────────────────┬──────────────────────────────────┘
                               ▼
┌─────────────────────────────────────────────────────────────────┐
│  PLANNING                                                       │
│  [[.claude/agents/planner|planner]] → [[.claude/agents/validator|validator]] → YOU approve stages.md                  │
└──────────────────────────────┬──────────────────────────────────┘
                               ▼
┌─────────────────────────────────────────────────────────────────┐
│  EXECUTION                                                      │
│  [[.claude/agents/orchestrator|orchestrator]] → up to 5 concurrent task pipelines         │
│                                                                 │
│  full pipeline:    implementer → verifier → reviewer            │
│  lite pipeline:    implementer → reviewer                       │
│  minimal pipeline: implementer                                  │
│                                                                 │
│  per stage:        [[.claude/agents/merger|merger]] merges all PRs in dependency order     │
│  on blocker:       [[.claude/agents/supervisor|supervisor]] → skill-writer | planner | you │
└─────────────────────────────────────────────────────────────────┘
```

---

## Quick Start

### 1 — Add a project

Edit [[queue]] and fill in the template. Rough intent is fine — the ideator refines it.

### 2 — Ideation

```bash
claude --agent researcher --project <name>
claude --agent ideator    --project <name>
```

Produces `projects/<name>/project-brief.md`. Review and set `approved_at` to approve.

### 3 — Planning

```bash
claude --agent planner    --project <name>
claude --agent validator  --project <name>
```

Produces `projects/<name>/stages.md`. Review and approve before execution begins.

### 4 — Execution

```bash
claude --agent orchestrator --project <name>
```

Orchestrator fans out autonomously. Monitor in `projects/<name>/metrics/burndown.md`.

> [!warning] Your three touchpoints
> 1. Approve `project-brief.md` — what we're building and how
> 2. Approve `stages.md` — the exact task graph before any code is written
> 3. Morning review — read `handoffs/` and `decisions.md` to see what happened

---

## Agent Roster

| agent | stage | when it runs | definition |
|-------|-------|--------------|------------|
| **researcher** | IDEATION | First — reads codebase, finds patterns, existing deps, conventions | [[.claude/agents/researcher]] |
| **ideator** | IDEATION | After researcher — writes zero-ambiguity `project-brief.md`, surfaces gaps as `questions.md` | [[.claude/agents/ideator]] |
| **planner** | PLANNING | After brief approved — decomposes into task graph with full contracts per task | [[.claude/agents/planner]] |
| **validator** | PLANNING | After planner — checks every brief for ambiguity, testability, contracts, size, deps | [[.claude/agents/validator]] |
| **orchestrator** | EXECUTION | Stateless driver — wakes on stop hooks, reads all state, spawns up to 5 pipelines, exits | [[.claude/agents/orchestrator]] |
| **implementer** | EXECUTION | One task per worktree — pre-flight ambiguity check before any code, then executes brief | [[.claude/agents/implementer]] |
| **verifier** | EXECUTION | Full pipeline only — reads spec (not code), writes spec-driven tests, runs them | [[.claude/agents/verifier]] |
| **reviewer** | EXECUTION | Final gate per task — checks all acceptance criteria, pass/retry/escalate | [[.claude/agents/reviewer]] |
| **merger** | EXECUTION | Once per stage — topological merge, conflict resolution, verifies main clean | [[.claude/agents/merger]] |
| **supervisor** | REACTIVE | Wakes on `blockers.md` write — classifies blocker, routes to skill-writer/planner/human | [[.claude/agents/supervisor]] |
| **skill-writer** | ON-DEMAND | Wakes when supervisor routes capability gap — creates and tests new `.claude/skills/` | [[.claude/agents/skill-writer]] |

---

## Ambiguity Rule

> [!warning] If a specialist must guess — it stops. Every time.

```
implementer cannot execute without guessing
         ↓
  writes ambiguity report to handoffs/task-N.md
  sets task status = ambiguous
         ↓
  orchestrator routes to planner
         ↓
  planner rewrites ONLY that task's brief
         ↓
  validator re-checks that task
         ↓
  task back to pending → orchestrator re-spawns
```

**This is not a failure.** Ambiguity reaching a specialist is a planning failure caught early.
Never retry with the same brief. Never guess and proceed.

---

## Task Pipeline Types

| type | pipeline | when planner assigns it |
|------|----------|------------------------|
| `full` | implementer → verifier → reviewer | Feature code — needs spec-driven tests written separately |
| `lite` | implementer → reviewer | Utilities — implementer writes own tests |
| `minimal` | implementer only | Config, scaffolding, docs, migrations |

### Brief Depth by Difficulty

| difficulty | what orchestrator assembles for the specialist |
|------------|-----------------------------------------------|
| `low` | Task contract only (brief + inputs/outputs/acceptance) |
| `medium` | + relevant `decisions.md` entries + 2-3 prior handoffs |
| `high` | + full `scope.md` section + all decisions + all dependency handoffs |

---

## Hooks

Hooks are wired in [[.claude/settings]] and fire automatically.

| hook file | event | what it does |
|-----------|-------|--------------|
| [[.claude/hooks/pre-bash-firewall]] | PreToolUse → Bash | Blocks dangerous commands (rm -rf on abs paths, force push, curl\|bash, credentials in commands). Audits ALL commands to `.claude/logs/audit.log` |
| [[.claude/hooks/pre-edit-path-guard]] | PreToolUse → Edit\|Write | Blocks .env, node_modules, lock files, .git, ~/.ssh, ~/.aws. Soft-warns on scope.md. Hard-blocks approved project-brief.md |
| [[.claude/hooks/post-blocker-write]] | PostToolUse → Write\|Edit | Detects blockers.md writes, spawns supervisor asynchronously |
| [[.claude/hooks/post-stages-update]] | PostToolUse → Write\|Edit | Detects stages.md writes, re-derives project row and updates Active Projects table |
| [[.claude/hooks/stop-write-back]] | Stop | Logs session tokens/cost to `.claude/logs/sessions.log`, `metrics/tokens.md`, and Session Log below. Handles usage-limit pauses |

### Deny Rules (hard-blocked, zero-latency)

From [[.claude/settings]]:
- `git push --force` / `git push -f` / `git push --force-with-lease`
- `git reset --hard origin/*` / `git reset --hard refs/*`
- `rm -rf /*` / `rm -rf ~*` (absolute and tilde paths — relative paths like `rm -rf build/` are allowed)

---

## Document Schemas

| schema | used by | purpose |
|--------|---------|---------|
| [[.claude/schemas/stages-template]] | planner | Task graph format — every agent reads/writes this |
| [[.claude/schemas/project-brief-template]] | ideator | Zero-ambiguity brief format |
| [[.claude/schemas/handoff-template]] | all execution agents | Task completion + ambiguity report format |
| [[.claude/schemas/tokens-template]] | init-project.sh | Per-project token usage log header (stop hook appends rows) |
| [[.claude/schemas/burndown-template]] | init-project.sh | Per-project burndown + stage completion log header (merger appends rows) |

---

## Project Folder Structure

Every project lives under `projects/` — never at the workspace root.

```
projects/<name>/
├── project-brief.md      ← ideator writes; you approve; immutable after approval
├── scope.md              ← planner writes; immutable reference for execution
├── stages.md             ← THE source of truth; task graph + live status
├── decisions.md          ← append-only ADR log; every agent decision recorded here
├── blockers.md           ← append-only; structured entries; supervisor reads this
├── validation-report.md  ← validator writes; updated on each re-validation
├── questions.md          ← gaps surfaced to human (ideation) or ambiguities (execution)
├── handoffs/
│   └── task-NNN.md       ← every agent writes on exit; next agent reads on entry
└── metrics/
    ├── tokens.md          ← per-session cost log (written by stop hook)
    └── burndown.md        ← tasks complete/total over time
```

---

## Key Files

- [[queue]] — intake queue for new projects
- [[CLAUDE]] — workspace rules, ambiguity rule, safety rules, manual commands
- `.claude/agents/` — [[.claude/agents/researcher]] · [[.claude/agents/ideator]] · [[.claude/agents/planner]] · [[.claude/agents/validator]] · [[.claude/agents/orchestrator]] · [[.claude/agents/implementer]] · [[.claude/agents/verifier]] · [[.claude/agents/reviewer]] · [[.claude/agents/merger]] · [[.claude/agents/supervisor]] · [[.claude/agents/skill-writer]]
- `.claude/schemas/` — [[.claude/schemas/stages-template]] · [[.claude/schemas/project-brief-template]] · [[.claude/schemas/handoff-template]]
- `.claude/hooks/` — [[.claude/hooks/pre-bash-firewall]] · [[.claude/hooks/pre-edit-path-guard]] · [[.claude/hooks/post-blocker-write]] · [[.claude/hooks/post-stages-update]] · [[.claude/hooks/stop-write-back]] · [[.claude/hooks/init-project]] · [[.claude/hooks/update-projects-row]]

---

## Session Log

> [!info] Auto-populated by stop hook
> Appended to by `.claude/hooks/stop-write-back.sh` at the end of every agent session.

| date | session | project | task | tokens | cost | stop reason |
|------|---------|---------|------|--------|------|-------------|
| _(no sessions yet)_ | | | | | | |
