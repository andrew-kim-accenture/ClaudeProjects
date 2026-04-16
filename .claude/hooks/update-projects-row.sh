#!/usr/bin/env bash
# update-projects-row.sh
# Shared helper: upserts a row in home.md's Active Projects table by project slug.
#
# Usage:
#   bash .claude/hooks/update-projects-row.sh \
#     "<slug>" "<stage-label>" "<status>" "<tasks>" "<last-activity>" "<home-md-path>"
#
# Example:
#   bash .claude/hooks/update-projects-row.sh \
#     "my-project" "EXECUTION · stage 2/3" "active" "4/9 done" "2026-04-01" \
#     "/c/Users/andrew.c.kim/ClaudeProjects/home.md"
#
# The slug is the unique key. Must match the project folder name exactly.
# Stage labels may contain · and / — awk handles these safely (sed would not).
# Uses tmp-then-mv for atomic replacement on Git Bash/Windows.

set -euo pipefail

SLUG="$1"
STAGE="$2"
STATUS="$3"
TASKS="$4"
LAST_ACTIVITY="$5"
HOME_MD="$6"

[[ -z "$SLUG" ]]          && { echo "update-projects-row: missing slug"          >&2; exit 1; }
[[ -z "$HOME_MD" ]]       && { echo "update-projects-row: missing home-md path"  >&2; exit 1; }
[[ ! -f "$HOME_MD" ]]     && { echo "update-projects-row: home.md not found at $HOME_MD" >&2; exit 1; }

NEW_ROW="| ${SLUG} | ${STAGE} | ${STATUS} | ${TASKS} | ${LAST_ACTIVITY} |"

# Case 1: Row for this slug already exists — replace it in-place
if grep -qF "| ${SLUG} |" "$HOME_MD"; then
  awk -v slug="$SLUG" -v row="$NEW_ROW" '
    index($0, "| " slug " |") == 1 { print row; next }
    { print }
  ' "$HOME_MD" > "${HOME_MD}.tmp" && mv "${HOME_MD}.tmp" "$HOME_MD"

# Case 2: Placeholder row exists (first project ever) — replace placeholder
elif grep -q '_(none yet)_' "$HOME_MD"; then
  awk -v row="$NEW_ROW" '
    /\| _\(none yet\)_/ { print row; next }
    { print }
  ' "$HOME_MD" > "${HOME_MD}.tmp" && mv "${HOME_MD}.tmp" "$HOME_MD"

# Case 3: Table exists but no placeholder — insert before the **Stages:** legend line
else
  awk -v row="$NEW_ROW" '
    /^\*\*Stages:\*\*/ { print row; print $0; next }
    { print }
  ' "$HOME_MD" > "${HOME_MD}.tmp" && mv "${HOME_MD}.tmp" "$HOME_MD"
fi

exit 0
