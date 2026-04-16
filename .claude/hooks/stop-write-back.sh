#!/usr/bin/env bash
# stop-write-back.sh
# Stop hook — fires at the end of every agent session.
# Logs session metrics and detects pipeline continuation signals.
#
# To make executable (run once): chmod +x .claude/hooks/stop-write-back.sh

set -euo pipefail

# ---------------------------------------------------------------------------
# Setup
# ---------------------------------------------------------------------------
WORKSPACE_ROOT="$(git -C "$(dirname "$0")" rev-parse --show-toplevel 2>/dev/null || echo "/c/Users/andrew.c.kim/ClaudeProjects")"
LOG_DIR="$WORKSPACE_ROOT/.claude/logs"
SESSIONS_LOG="$LOG_DIR/sessions.log"
mkdir -p "$LOG_DIR"

# ---------------------------------------------------------------------------
# Read stdin JSON
# ---------------------------------------------------------------------------
INPUT_JSON="$(cat)"

STOP_REASON="$(echo "$INPUT_JSON"   | jq -r '.stop_reason // "unknown"')"
SESSION_ID="$(echo "$INPUT_JSON"    | jq -r '.session_id // "unknown"')"
CWD="$(echo "$INPUT_JSON"           | jq -r '.cwd // ""')"
INPUT_TOKENS="$(echo "$INPUT_JSON"  | jq -r '.usage.input_tokens // 0')"
OUTPUT_TOKENS="$(echo "$INPUT_JSON" | jq -r '.usage.output_tokens // 0')"
COST="$(echo "$INPUT_JSON"          | jq -r '.total_cost_usd // 0')"

TIMESTAMP="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
DATE_ONLY="$(date -u +"%Y-%m-%d")"

# ---------------------------------------------------------------------------
# Step 1: Compute total tokens
# ---------------------------------------------------------------------------
TOTAL_TOKENS=$(( INPUT_TOKENS + OUTPUT_TOKENS ))

# ---------------------------------------------------------------------------
# Step 2: Append to sessions.log
# ---------------------------------------------------------------------------
printf '%s | %s | %s | %stok | $%s\n' \
  "$TIMESTAMP" "$SESSION_ID" "$STOP_REASON" "$TOTAL_TOKENS" "$COST" \
  >> "$SESSIONS_LOG"

# ---------------------------------------------------------------------------
# Step 3: Detect project name from cwd
# ---------------------------------------------------------------------------
PROJECT_NAME=""
if echo "$CWD" | grep -q '/projects/'; then
  PROJECT_NAME="$(echo "$CWD" | sed 's|.*/projects/\([^/]*\).*|\1|')"
fi

# ---------------------------------------------------------------------------
# Step 4: Detect agent worktree and extract task_id
# ---------------------------------------------------------------------------
TASK_ID="orchestrator"
if echo "$CWD" | grep -q '/worktrees/'; then
  WORKTREE_NAME="$(echo "$CWD" | sed 's|.*/worktrees/\([^/]*\).*|\1|')"
  # Worktree names follow the pattern agent-{{task_id}}
  TASK_ID="$(echo "$WORKTREE_NAME" | sed 's/^agent-//')"
fi

# ---------------------------------------------------------------------------
# Step 4b: Append to home.md Session Log
# ---------------------------------------------------------------------------
HOME_MD="$WORKSPACE_ROOT/home.md"
if [[ -f "$HOME_MD" ]]; then
  SHORT_SESSION="${SESSION_ID:0:8}"
  NEW_ROW="| $DATE_ONLY | $SHORT_SESSION | ${PROJECT_NAME:-—} | ${TASK_ID:-—} | $TOTAL_TOKENS | \$$COST | $STOP_REASON |"
  if grep -q '_(no sessions yet)_' "$HOME_MD"; then
    awk -v row="$NEW_ROW" '
      /\| _\(no sessions yet\)_/ { print row; next }
      { print }
    ' "$HOME_MD" > "${HOME_MD}.tmp" && mv "${HOME_MD}.tmp" "$HOME_MD"
  else
    printf '%s\n' "$NEW_ROW" >> "$HOME_MD"
  fi
fi

# ---------------------------------------------------------------------------
# Step 5: Append to tokens.md if it exists
# ---------------------------------------------------------------------------
if [[ -n "$PROJECT_NAME" ]]; then
  TOKENS_MD="$WORKSPACE_ROOT/projects/$PROJECT_NAME/metrics/tokens.md"
  if [[ -f "$TOKENS_MD" ]]; then
    printf '| %s | %s | %s | %s | %s | $%s |\n' \
      "$DATE_ONLY" "$SESSION_ID" "$TASK_ID" "$STOP_REASON" "$TOTAL_TOKENS" "$COST" \
      >> "$TOKENS_MD"
  fi

  # ---------------------------------------------------------------------------
  # Step 6: Detect usage_limit or rate_limit and append pause notices
  # ---------------------------------------------------------------------------
  if echo "$STOP_REASON" | grep -qE 'usage_limit|rate_limit'; then
    PAUSE_MSG="<!-- PAUSE: Session $SESSION_ID hit $STOP_REASON at $TIMESTAMP. Token usage: ${TOTAL_TOKENS}tok. Resume when limits reset. -->"

    STAGES_MD="$WORKSPACE_ROOT/projects/$PROJECT_NAME/stages.md"
    if [[ -f "$STAGES_MD" ]]; then
      printf '\n%s\n' "$PAUSE_MSG" >> "$STAGES_MD"
    fi

    if [[ -f "$TOKENS_MD" ]]; then
      printf '\n%s\n' "$PAUSE_MSG" >> "$TOKENS_MD"
    fi
  fi
fi

exit 0
