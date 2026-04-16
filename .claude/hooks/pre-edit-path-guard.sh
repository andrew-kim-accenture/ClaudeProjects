#!/usr/bin/env bash
# pre-edit-path-guard.sh
# Pre-tool-use hook for Edit and Write tools.
# Blocks writes to protected paths. Soft-warns on scope.md writes.
#
# To make executable (run once): chmod +x .claude/hooks/pre-edit-path-guard.sh

set -euo pipefail

# ---------------------------------------------------------------------------
# Setup
# ---------------------------------------------------------------------------
WORKSPACE_ROOT="$(git -C "$(dirname "$0")" rev-parse --show-toplevel 2>/dev/null || echo "/c/Users/andrew.c.kim/ClaudeProjects")"
LOG_DIR="$WORKSPACE_ROOT/.claude/logs"
AUDIT_LOG="$LOG_DIR/audit.log"
mkdir -p "$LOG_DIR"

# ---------------------------------------------------------------------------
# Read stdin JSON
# ---------------------------------------------------------------------------
INPUT_JSON="$(cat)"

# Both Edit and Write pass the target file path; field name differs by tool.
FILE_PATH="$(echo "$INPUT_JSON" | jq -r '.tool_input.path // .tool_input.file_path // ""')"
SESSION_ID="$(echo "$INPUT_JSON" | jq -r '.session_id // "unknown"')"
TIMESTAMP="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"

# ---------------------------------------------------------------------------
# Logging helper
# ---------------------------------------------------------------------------
log_blocked() {
  local reason="$1"
  printf '%s | %s | BLOCKED | %s\n' "$TIMESTAMP" "$SESSION_ID" "$FILE_PATH" >> "$AUDIT_LOG"
  echo "BLOCKED: $reason" >&2
}

# ---------------------------------------------------------------------------
# Guard: no path provided — allow
# ---------------------------------------------------------------------------
if [[ -z "$FILE_PATH" ]]; then
  exit 0
fi

# ---------------------------------------------------------------------------
# Rule 1: .env files (allow .env.example)
# ---------------------------------------------------------------------------
if echo "$FILE_PATH" | grep -qE '(^|/)\.env$|(^|/)\.env\.[^e]|(^|/)\.env\.[^.]{1}[^x]|(^|/)\.env\.[^.]{2}[^a]'; then
  # Simplified: block any .env file that is NOT .env.example
  BASENAME="$(basename "$FILE_PATH")"
  if [[ "$BASENAME" == ".env" ]] || (echo "$BASENAME" | grep -qE '^\.env\.' && [[ "$BASENAME" != ".env.example" ]]); then
    log_blocked ".env files are protected. Use .env.example for templates."
    exit 2
  fi
fi

# Also catch bare .env at path end
if [[ "$(basename "$FILE_PATH")" == ".env" ]]; then
  log_blocked ".env files are protected. Use .env.example for templates."
  exit 2
fi

# ---------------------------------------------------------------------------
# Rule 2: node_modules/
# ---------------------------------------------------------------------------
if echo "$FILE_PATH" | grep -qE '(^|/)node_modules/'; then
  log_blocked "Writing inside node_modules/ is not allowed. These files are managed by the package manager."
  exit 2
fi

# ---------------------------------------------------------------------------
# Rule 3: Lock files
# ---------------------------------------------------------------------------
BASENAME="$(basename "$FILE_PATH")"
if [[ "$BASENAME" == "package-lock.json" || "$BASENAME" == "yarn.lock" || "$BASENAME" == "pnpm-lock.yaml" ]]; then
  log_blocked "Lock files ($BASENAME) are managed by the package manager and must not be edited directly."
  exit 2
fi

# ---------------------------------------------------------------------------
# Rule 4: .git/ internals
# ---------------------------------------------------------------------------
if echo "$FILE_PATH" | grep -qE '(^|/)\.git/'; then
  log_blocked "Writing to .git/ internals is not allowed."
  exit 2
fi

# ---------------------------------------------------------------------------
# Rule 5: ~/.ssh/ and ~/.aws/ paths
# ---------------------------------------------------------------------------
HOME_EXPANDED="${HOME:-/c/Users/andrew.c.kim}"
if echo "$FILE_PATH" | grep -qE '(^|~/)\.ssh/|(^|~/)\.aws/'; then
  log_blocked "Writing to ~/.ssh/ or ~/.aws/ is not allowed. These paths contain sensitive credentials."
  exit 2
fi
if echo "$FILE_PATH" | grep -qE "^$HOME_EXPANDED/\.(ssh|aws)/"; then
  log_blocked "Writing to ~/.ssh/ or ~/.aws/ is not allowed. These paths contain sensitive credentials."
  exit 2
fi

# ---------------------------------------------------------------------------
# Rule 6: scope.md — soft warning only, do NOT block (exit 0)
# ---------------------------------------------------------------------------
if [[ "$BASENAME" == "scope.md" ]]; then
  echo "WARNING: scope.md is intended to be immutable after approval. Proceeding, but please confirm this edit is intentional." >&2
  exit 0
fi

# ---------------------------------------------------------------------------
# Rule 7: project-brief.md — block if frontmatter status is 'approved'
# ---------------------------------------------------------------------------
if [[ "$BASENAME" == "project-brief.md" ]] && [[ -f "$FILE_PATH" ]]; then
  # Read the file and check for frontmatter status field
  # Frontmatter is between --- delimiters at the top of the file
  STATUS="$(awk '/^---/{found++; next} found==1 && /^status:/{print; exit}' "$FILE_PATH" | sed 's/^status:\s*//' | tr -d '"'"'"' | tr '[:upper:]' '[:lower:]' | tr -d '[:space:]')"
  if [[ "$STATUS" == "approved" ]]; then
    log_blocked "project-brief.md has status 'approved' and is now immutable. Create a new brief or request re-approval to make changes."
    exit 2
  fi
fi

# ---------------------------------------------------------------------------
# All rules passed — allow
# ---------------------------------------------------------------------------
exit 0
