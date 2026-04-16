#!/usr/bin/env bash
# post-blocker-write.sh
# Post-tool-use hook for Write and Edit tools.
# When blockers.md is written, asynchronously spawns a supervisor agent.
#
# To make executable (run once): chmod +x .claude/hooks/post-blocker-write.sh

set -euo pipefail

# ---------------------------------------------------------------------------
# Setup
# ---------------------------------------------------------------------------
WORKSPACE_ROOT="$(git -C "$(dirname "$0")" rev-parse --show-toplevel 2>/dev/null || echo "/c/Users/andrew.c.kim/ClaudeProjects")"
LOG_DIR="$WORKSPACE_ROOT/.claude/logs"
SUPERVISOR_LOG="$LOG_DIR/supervisor.log"
mkdir -p "$LOG_DIR"

# ---------------------------------------------------------------------------
# Read stdin JSON
# ---------------------------------------------------------------------------
INPUT_JSON="$(cat)"

# The written file path — field varies between Write and Edit tool responses
FILE_PATH="$(echo "$INPUT_JSON" | jq -r '.tool_input.path // .tool_input.file_path // ""')"

TIMESTAMP="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"

# ---------------------------------------------------------------------------
# Only act when blockers.md was written
# ---------------------------------------------------------------------------
if ! echo "$FILE_PATH" | grep -q 'blockers\.md'; then
  exit 0
fi

# ---------------------------------------------------------------------------
# Extract project name from the file path
# ---------------------------------------------------------------------------
PROJECT_NAME=""
if echo "$FILE_PATH" | grep -q '/projects/'; then
  PROJECT_NAME="$(echo "$FILE_PATH" | sed 's|.*/projects/\([^/]*\).*|\1|')"
fi

# ---------------------------------------------------------------------------
# Log the detection event
# ---------------------------------------------------------------------------
printf '%s | blocker detected in project "%s", spawning supervisor for file: %s\n' \
  "$TIMESTAMP" "$PROJECT_NAME" "$FILE_PATH" \
  >> "$SUPERVISOR_LOG"

# ---------------------------------------------------------------------------
# Spawn supervisor agent asynchronously
# The supervisor is given context about the blocker and instructed to
# classify it and route it to the appropriate handler.
# ---------------------------------------------------------------------------
PROMPT="New blocker written to $FILE_PATH at $TIMESTAMP. Read it, classify, and route."

nohup claude \
  --dangerously-skip-permissions \
  --agent supervisor \
  -p "$PROMPT" \
  >> "$SUPERVISOR_LOG" 2>&1 &

# ---------------------------------------------------------------------------
# Never block — always exit 0
# ---------------------------------------------------------------------------
exit 0
