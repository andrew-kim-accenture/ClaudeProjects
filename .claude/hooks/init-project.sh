#!/usr/bin/env bash
# init-project.sh
# Idempotent project scaffolding. Called by the ideator as its very first step.
# Creates folder structure, stub files, metrics templates, per-project CLAUDE.md,
# and inserts an initial row into home.md's Active Projects table.
#
# Usage: bash .claude/hooks/init-project.sh <project-slug>
# Example: bash .claude/hooks/init-project.sh my-project

set -euo pipefail

SLUG="${1:-}"
[[ -z "$SLUG" ]] && { echo "init-project: usage: init-project.sh <project-slug>" >&2; exit 1; }

# Resolve workspace root (works from any depth including worktrees)
WORKSPACE_ROOT="$(git -C "$(dirname "$0")" rev-parse --show-toplevel 2>/dev/null \
  || echo "/c/Users/andrew.c.kim/ClaudeProjects")"

# Use relative paths from workspace root to avoid pre-bash-firewall Rule 8
cd "$WORKSPACE_ROOT"

PROJECT_DIR="projects/$SLUG"
TIMESTAMP="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
DATE_ONLY="$(date -u +"%Y-%m-%d")"

# Idempotent: if project already fully scaffolded, exit cleanly
if [[ -f "$PROJECT_DIR/metrics/tokens.md" && -f "$PROJECT_DIR/metrics/burndown.md" ]]; then
  echo "init-project: $SLUG already scaffolded — skipping" >&2
  exit 0
fi

# ---------------------------------------------------------------------------
# Create directory structure
# ---------------------------------------------------------------------------
mkdir -p "$PROJECT_DIR/handoffs"
mkdir -p "$PROJECT_DIR/metrics"

# ---------------------------------------------------------------------------
# metrics/tokens.md
# ---------------------------------------------------------------------------
cat > "$PROJECT_DIR/metrics/tokens.md" << TOKEOF
---
project: $SLUG
created_at: $TIMESTAMP
---

# Token Usage · $SLUG

| date | session | task | stop reason | tokens | cost |
|------|---------|------|-------------|--------|------|
TOKEOF

# ---------------------------------------------------------------------------
# metrics/burndown.md
# ---------------------------------------------------------------------------
cat > "$PROJECT_DIR/metrics/burndown.md" << BURNEOF
---
project: $SLUG
created_at: $TIMESTAMP
total_tasks: 0
---

# Burndown · $SLUG

| date | stage | complete | total | remaining | pct |
|------|-------|----------|-------|-----------|-----|

## Stage Completion Log

| stage | completed_at | tasks_merged | notes |
|-------|--------------|--------------|-------|
BURNEOF

# ---------------------------------------------------------------------------
# decisions.md stub
# ---------------------------------------------------------------------------
cat > "$PROJECT_DIR/decisions.md" << DECEOF
---
project: $SLUG
---

# Decisions · $SLUG

<!-- Seeded by planner with architectural decisions from project-brief.md.
     All agents append here. Never delete entries. -->
DECEOF

# ---------------------------------------------------------------------------
# blockers.md stub
# ---------------------------------------------------------------------------
cat > "$PROJECT_DIR/blockers.md" << BLOCKEOF
---
project: $SLUG
---

# Blockers · $SLUG

<!-- Append-only. Supervisor reads the bottom-most unresolved entry.
     post-blocker-write hook fires on every write here. -->
BLOCKEOF

# ---------------------------------------------------------------------------
# Per-project CLAUDE.md with Obsidian back-links
# ---------------------------------------------------------------------------
cat > "$PROJECT_DIR/CLAUDE.md" << CLAUDEOF
---
project: $SLUG
---

# $SLUG

> [[home]] · [[projects/$SLUG/project-brief|project-brief]] · [[projects/$SLUG/stages|stages]]

## Project Rules

- All work for this project stays under \`projects/$SLUG/\`
- Do not modify files outside this directory without explicit orchestrator instruction
- Token costs are logged automatically to \`metrics/tokens.md\` via stop hook
- Update \`stages.md\` task \`status\` fields at every lifecycle transition

## Key Files

| file | purpose | mutability |
|------|---------|------------|
| \`project-brief.md\` | approved specification — source of truth for WHAT | immutable after approval |
| \`scope.md\` | concise spec derived from brief — agents reference this | immutable |
| \`stages.md\` | task graph + live status — THE source of truth for HOW | updated by all agents |
| \`decisions.md\` | append-only ADR log | append only |
| \`blockers.md\` | append-only blocker log | append only |
| \`handoffs/\` | per-task completion notes | written once per task |
| \`metrics/tokens.md\` | token cost log (auto by stop hook) | append only |
| \`metrics/burndown.md\` | stage completion tracking | updated by merger |

## Ambiguity Rule

If you cannot execute a task without guessing: **stop immediately**.
1. Write an ambiguity report to \`handoffs/task-{{ID}}.md\`
2. Set \`status: ambiguous\` in \`stages.md\`
3. Exit — do not write any implementation code

The orchestrator routes ambiguous tasks back to the planner for brief revision.
CLAUDEOF

# ---------------------------------------------------------------------------
# Insert initial row into home.md Active Projects table
# ---------------------------------------------------------------------------
HOME_MD="$WORKSPACE_ROOT/home.md"
if [[ -f "$HOME_MD" ]]; then
  bash "$WORKSPACE_ROOT/.claude/hooks/update-projects-row.sh" \
    "$SLUG" \
    "IDEATION · stage 0/?" \
    "active" \
    "0/0 done" \
    "$DATE_ONLY" \
    "$HOME_MD"
  echo "init-project: added $SLUG to home.md Projects table" >&2
fi

echo "init-project: $SLUG scaffolded at $PROJECT_DIR" >&2
exit 0
