#!/usr/bin/env bash
# post-stages-update.sh
# PostToolUse hook (async). Fires on every Write|Edit tool call.
# Exits immediately unless the written file is stages.md.
# When stages.md is written, re-derives the project row for home.md
# from frontmatter + task counts and calls update-projects-row.sh.
#
# This is a reconciliation backstop — it keeps the Projects table accurate
# even if an agent forgets to call update-projects-row.sh directly.

set -euo pipefail

INPUT_JSON="$(cat)"
FILE_PATH="$(echo "$INPUT_JSON" | jq -r '.tool_input.path // .tool_input.file_path // ""' 2>/dev/null || echo "")"

# Only proceed if this is a stages.md write
echo "$FILE_PATH" | grep -q 'stages\.md$' || exit 0

[[ ! -f "$FILE_PATH" ]] && exit 0

WORKSPACE_ROOT="$(git -C "$(dirname "$FILE_PATH")" rev-parse --show-toplevel 2>/dev/null \
  || echo "/c/Users/andrew.c.kim/ClaudeProjects")"
HOME_MD="$WORKSPACE_ROOT/home.md"
[[ ! -f "$HOME_MD" ]] && exit 0

# ---------------------------------------------------------------------------
# Parse frontmatter from stages.md
# ---------------------------------------------------------------------------
PROJECT_NAME="$(awk '/^project:/ { print $2; exit }' "$FILE_PATH")"
PROJECT_STATUS="$(awk '/^status:/ { print $2; exit }' "$FILE_PATH")"
CURRENT_STAGE="$(awk '/^current_stage:/ { print $2; exit }' "$FILE_PATH")"
TOTAL_STAGES="$(awk '/^total_stages:/ { print $2; exit }' "$FILE_PATH")"
UPDATED_AT="$(awk '/^updated_at:/ { print $2; exit }' "$FILE_PATH")"

[[ -z "$PROJECT_NAME" ]] && exit 0

DATE_ONLY="${UPDATED_AT:0:10}"
[[ -z "$DATE_ONLY" ]] && DATE_ONLY="$(date -u +"%Y-%m-%d")"

# ---------------------------------------------------------------------------
# Count tasks by status
# ---------------------------------------------------------------------------
TOTAL_TASKS="$(grep -c '^id:' "$FILE_PATH" 2>/dev/null || echo "0")"
COMPLETE_TASKS="$(grep -c '^status: complete' "$FILE_PATH" 2>/dev/null || echo "0")"
TASKS_LABEL="${COMPLETE_TASKS}/${TOTAL_TASKS} done"

# ---------------------------------------------------------------------------
# Derive stage label from project status + current_stage/total_stages
# ---------------------------------------------------------------------------
case "$PROJECT_STATUS" in
  planning|approved)
    STAGE_LABEL="PLANNING · stage ${CURRENT_STAGE:-0}/${TOTAL_STAGES:-?}"
    ;;
  executing)
    STAGE_LABEL="EXECUTION · stage ${CURRENT_STAGE:-1}/${TOTAL_STAGES:-?}"
    ;;
  staged|complete)
    STAGE_LABEL="COMPLETE"
    PROJECT_STATUS="complete"
    ;;
  blocked)
    STAGE_LABEL="BLOCKED · stage ${CURRENT_STAGE:-?}/${TOTAL_STAGES:-?}"
    ;;
  *)
    STAGE_LABEL="IDEATION · stage 0/${TOTAL_STAGES:-?}"
    ;;
esac

# ---------------------------------------------------------------------------
# Update home.md Projects table row
# ---------------------------------------------------------------------------
bash "$WORKSPACE_ROOT/.claude/hooks/update-projects-row.sh" \
  "$PROJECT_NAME" \
  "$STAGE_LABEL" \
  "$PROJECT_STATUS" \
  "$TASKS_LABEL" \
  "$DATE_ONLY" \
  "$HOME_MD"

exit 0
