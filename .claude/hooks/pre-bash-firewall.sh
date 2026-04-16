#!/usr/bin/env bash
# pre-bash-firewall.sh
# Pre-tool-use hook for the Bash tool.
# Blocks dangerous commands and logs all commands to .claude/logs/audit.log.
#
# To make executable (run once): chmod +x .claude/hooks/pre-bash-firewall.sh

set -euo pipefail

# ---------------------------------------------------------------------------
# Setup
# ---------------------------------------------------------------------------
WORKSPACE_ROOT="$(git -C "$(dirname "$0")" rev-parse --show-toplevel 2>/dev/null || echo "/c/Users/andrew.c.kim/ClaudeProjects")"
LOG_DIR="$WORKSPACE_ROOT/.claude/logs"
AUDIT_LOG="$LOG_DIR/audit.log"
mkdir -p "$LOG_DIR"

# ---------------------------------------------------------------------------
# Read stdin JSON (Claude passes tool input as JSON on stdin)
# ---------------------------------------------------------------------------
INPUT_JSON="$(cat)"

COMMAND="$(echo "$INPUT_JSON" | jq -r '.tool_input.command // ""')"
SESSION_ID="$(echo "$INPUT_JSON" | jq -r '.session_id // "unknown"')"

TIMESTAMP="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
CMD_TRUNCATED="${COMMAND:0:200}"

# ---------------------------------------------------------------------------
# Logging helper
# ---------------------------------------------------------------------------
log_entry() {
  local status="$1"
  printf '%s | %s | %s | %s\n' "$TIMESTAMP" "$SESSION_ID" "$status" "$CMD_TRUNCATED" >> "$AUDIT_LOG"
}

# ---------------------------------------------------------------------------
# Block helper — logs, prints reason to stderr, exits 2
# ---------------------------------------------------------------------------
block() {
  local reason="$1"
  log_entry "BLOCKED"
  echo "BLOCKED: $reason" >&2
  exit 2
}

# ---------------------------------------------------------------------------
# Guard: empty command passes through
# ---------------------------------------------------------------------------
if [[ -z "$COMMAND" ]]; then
  log_entry "ALLOWED"
  exit 0
fi

# ---------------------------------------------------------------------------
# Rule 1: rm -rf on absolute paths or tilde
#   Block: rm -rf /  rm -rf ~/  rm -rf /some/abs/path
#   Allow: rm -rf build/  rm -rf ./dist
# ---------------------------------------------------------------------------
if echo "$COMMAND" | grep -qE 'rm\s+-[a-zA-Z]*r[a-zA-Z]*f[a-zA-Z]*\s+[/~]|rm\s+-[a-zA-Z]*f[a-zA-Z]*r[a-zA-Z]*\s+[/~]'; then
  block "rm -rf on absolute path or home directory is not allowed. Use relative paths (e.g. rm -rf build/) instead."
fi

# ---------------------------------------------------------------------------
# Rule 2: curl or wget piped to bash/sh/zsh
# ---------------------------------------------------------------------------
if echo "$COMMAND" | grep -qE '(curl|wget)[^|]*\|[^|]*(bash|sh|zsh)'; then
  block "Piping curl/wget output directly into a shell interpreter is not allowed."
fi

# ---------------------------------------------------------------------------
# Rule 3: git push --force or git push -f
# ---------------------------------------------------------------------------
if echo "$COMMAND" | grep -qE 'git\s+push\s+.*--force|git\s+push\s+.*-f(\s|$)'; then
  block "Force pushing is not allowed. Rewrite history locally and coordinate with the team."
fi

# ---------------------------------------------------------------------------
# Rule 4: git push to main/master from an agent worktree
#   Agent worktrees have branch names starting with agent/
# ---------------------------------------------------------------------------
if echo "$COMMAND" | grep -qE 'git\s+push'; then
  CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo "")"
  if echo "$CURRENT_BRANCH" | grep -qE '^agent/'; then
    if echo "$COMMAND" | grep -qE 'git\s+push.*\s+(main|master)(\s|$)|git\s+push\s+[^ ]+\s+(main|master)(\s|$)'; then
      block "Agents running in worktrees (branch: $CURRENT_BRANCH) are not allowed to push directly to main/master."
    fi
  fi
fi

# ---------------------------------------------------------------------------
# Rule 5: git reset --hard
# ---------------------------------------------------------------------------
if echo "$COMMAND" | grep -qE 'git\s+reset\s+--hard'; then
  block "git reset --hard is not allowed. Use git revert or stash to undo changes safely."
fi

# ---------------------------------------------------------------------------
# Rule 6: git branch -D main or master
# ---------------------------------------------------------------------------
if echo "$COMMAND" | grep -qE 'git\s+branch\s+-D\s+(main|master)'; then
  block "Deleting the main or master branch is not allowed."
fi

# ---------------------------------------------------------------------------
# Rule 7: Potential credential leakage in command
#   Patterns: API_KEY=, SECRET=, PASSWORD=
# ---------------------------------------------------------------------------
if echo "$COMMAND" | grep -qE '(API_KEY|SECRET|PASSWORD)\s*=\s*\S+'; then
  block "Command appears to contain credentials (API_KEY=, SECRET=, or PASSWORD= pattern). Store secrets in environment variables or a secrets manager, not inline in commands."
fi

# ---------------------------------------------------------------------------
# Rule 8: Writing to absolute paths outside home with echo/tee/cat>
#   Allow /tmp, allow relative paths, block /etc /usr /var etc.
# ---------------------------------------------------------------------------
if echo "$COMMAND" | grep -qE '(echo|tee|cat)\s*.*>\s*/[^t/]|cat\s*>>\s*/[^t/]'; then
  # Allow /tmp explicitly
  if ! echo "$COMMAND" | grep -qE '(echo|tee|cat)\s*.*>+\s*/tmp/'; then
    block "Writing to absolute paths outside /tmp using echo/tee/cat> is not allowed."
  fi
fi

# ---------------------------------------------------------------------------
# Rule 9: DROP TABLE / TRUNCATE TABLE (case insensitive)
# ---------------------------------------------------------------------------
if echo "$COMMAND" | grep -qiE '(DROP\s+TABLE|TRUNCATE\s+TABLE)'; then
  block "Destructive SQL statements (DROP TABLE, TRUNCATE TABLE) are not allowed."
fi

# ---------------------------------------------------------------------------
# All rules passed — allow
# ---------------------------------------------------------------------------
log_entry "ALLOWED"
exit 0
