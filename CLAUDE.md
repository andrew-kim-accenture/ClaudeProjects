# Claude Projects

This is the root folder for all Claude Code-assisted projects.

## Shared Knowledge Base

A curated knowledge base lives at `knowledge/sap-cpq/`. Any agent working on SAP CPQ projects
should read `knowledge/sap-cpq/CLAUDE.md` first, then use `knowledge/sap-cpq/toc.md` to navigate.
Check `knowledge/sap-cpq/crawl-progress.md` to see what has been captured and what still needs crawling.

## General Guidelines

- Each subdirectory is a separate project with its own git repository
- Use GitHub (github.com, account: andrew-kim-accenture) for version control on all projects
- Default branch: `main`

## Project Structure

Each project should follow this pattern:
```
ClaudeProjects/
└── project-name/
    ├── CLAUDE.md       # Project-specific Claude instructions
    ├── README.md
    └── ...
```

## Git Workflow

- Initialize each new project with `git init`
- Create a corresponding GitHub repo via `gh repo create`
- Commit early and often with descriptive messages

## Session Commit Convention

At the end of each Claude Code session (or at natural milestones), commit with:

```
git add .
git commit -m "session: <short description of what was done>"
git push
```

Examples:
- `session: scaffold project structure and add dependencies`
- `session: implement auth flow and add unit tests`
- `session: fix bug in data parser and update CLAUDE.md`

This keeps a clear timeline of progress across sessions.

---

## Autonomous Workspace

This workspace runs a multi-agent pipeline for building software projects with minimal human intervention. Every new project flows through three stages before a line of code is written.

### Three-Stage Pipeline

```
IDEATION  →  PLANNING  →  EXECUTION
```

| stage | agents | human touchpoint |
|-------|--------|-----------------|
| IDEATION | researcher, ideator | Approve `project-brief.md` |
| PLANNING | planner, validator | Approve `stages.md` |
| EXECUTION | orchestrator, implementer, verifier, reviewer, merger, supervisor, skill-writer | Approve merge PR (or auto-merge on green CI) |

**There are exactly three human approval gates.** Everything else is autonomous.

### Where to Start

All new projects enter through `queue.md`. Add an entry there; do not create project folders manually. The ideator agent reads the queue and scaffolds the project.

### Agent Roster (one-line summary)

- **researcher** — collects context, prior art, and constraints before ideation
- **ideator** — writes `project-brief.md` from the queue entry and research
- **planner** — breaks the approved brief into ordered stages; writes `stages.md`
- **validator** — audits `stages.md` for gaps and ambiguous acceptance criteria
- **orchestrator** — drives execution: spawns agents, tracks blockers, closes stages
- **implementer** — writes code and config for a single assigned task
- **verifier** — runs tests and lint; confirms acceptance criteria are met
- **reviewer** — code-quality and security review; writes findings to `handoffs/`
- **merger** — merges approved branches; updates `metrics/burndown.md`
- **supervisor** — monitors all running agents; escalates to `blockers.md` when stuck
- **skill-writer** — creates new `.claude/` skills or hooks when a gap is identified

Full agent definitions live in `.claude/agents/`. Full roster with stage mappings is in `home.md`.

---

## Ambiguity Rule

**If a specialist agent cannot execute a task without guessing, it must stop immediately.**

The correct behavior is:
1. Set the task `status` to `ambiguous` in `stages.md`.
2. Write a precise description of what information is missing to `blockers.md`.
3. Notify the supervisor via the `notification` hook.
4. The planner rewrites the affected section of the brief with the missing detail.
5. The validator re-approves before execution resumes.

**Never retry a task with the same brief. Never guess and proceed.**

This rule applies to all agents in all stages. Ambiguity in IDEATION goes back to the human via the ideator. Ambiguity in PLANNING is resolved by the planner before the plan is approved. Ambiguity in EXECUTION always routes back to the planner, not to the implementer.

---

## Autonomous Project Structure

Every autonomous project lives under `projects/` (not the repo root):

```
ClaudeProjects/
└── projects/
    └── {{name}}/
        ├── project-brief.md      # Ideator output; human approves
        ├── stages.md             # Planner output; human approves
        ├── decisions.md          # ADR log — append-only
        ├── blockers.md           # Active blockers; cleared by orchestrator
        ├── handoffs/
        │   └── <timestamp>-snapshot.md   # Context snapshots between agents
        └── metrics/
            ├── tokens.md         # Per-agent token cost log
            └── burndown.md       # Tasks done/total over time
```

Schema definitions for `project-brief.md` and `stages.md` are in `.claude/schemas/`. Agents validate their output against these schemas before writing.

---

## Safety Rules

### What Hooks Protect

Hooks in `.claude/settings.json` enforce these guarantees automatically:

- **`pre-tool-call`** — blocks any file write or shell command whose target path falls outside `projects/<name>/`. Agents cannot touch other projects or workspace root files.
- **`post-tool-call`** — logs tool name, timestamp, and token cost to `metrics/tokens.md` for every call.
- **`pre-compact`** — writes a context snapshot to `handoffs/` before compaction so the next agent continues with full context.
- **`stop`** — appends a session summary line to `.claude/logs/<YYYY-MM-DD>.md`.
- **`notification`** — fires when an agent sets status to `ambiguous` or `blocked`; writes to `blockers.md`.

### What Deny Rules Block

The `permissions.deny` list in `.claude/settings.json` hard-blocks:

- `rm -rf` and other recursive deletes
- `git push --force` on any branch
- File writes outside `projects/` (belt-and-suspenders alongside the hook above)
- Network calls to any host not on the approved API allowlist
- Any attempt to modify `.claude/settings.json` from within an agent session

---

## Kicking Off Each Stage Manually

Use these commands from the workspace root (`C:/Users/andrew.c.kim/ClaudeProjects`).

### Ideation

```bash
claude --agent researcher --project <name>
claude --agent ideator    --project <name>
# Then review and approve projects/<name>/project-brief.md
```

### Planning

```bash
claude --agent planner    --project <name>
claude --agent validator  --project <name>
# Then review and approve projects/<name>/stages.md
```

### Execution

```bash
# Start the full execution pipeline
claude --agent orchestrator --project <name>

# Or run a single execution agent directly (for debugging)
claude --agent implementer  --project <name> --task <task-id>
claude --agent verifier     --project <name> --task <task-id>
claude --agent reviewer     --project <name> --task <task-id>
```

### Utilities

```bash
# Write a new skill or hook based on a gap description
claude --agent skill-writer --project <name> --gap "description of missing capability"

# Check supervisor status
claude --agent supervisor --project <name> --report
```

Monitor live progress in `projects/<name>/metrics/burndown.md` and `home.md`.
