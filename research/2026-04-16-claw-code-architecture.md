# claw-code Architecture Research

**Repo:** https://github.com/ultraworkers/claw-code
**Date:** 2026-04-16
**Purpose:** Read-only architectural investigation

---

## What It Is

Claw Code is a **Rust reimplementation of the Claude Code CLI agent harness**, built as a multi-provider AI coding agent CLI. Its stated purpose is two-fold:

1. **Functional:** Provide a multi-provider AI coding agent CLI (`claw`) that drives interactive and automated coding sessions via the Anthropic API (and compatible providers), with full tool execution, session persistence, permission enforcement, plugin support, and MCP integration.
2. **Demonstrative:** Serve as a public proof-of-concept of an autonomous software development pipeline — the repository itself was built by coordinated AI agents with humans providing only high-level direction through a Discord channel.

The repo is **not affiliated with Anthropic**. It is an independent re-implementation with ~48,600 tracked Rust LOC across 9 crates, and 185K+ GitHub stars.

---

## Architecture Diagram

```
┌─────────────────────────────────────────────────────────────────┐
│                    HUMAN ENTRY POINTS                            │
│   Terminal REPL  │  claw "prompt"  │  claw <subcommand>         │
└───────────────────────────┬─────────────────────────────────────┘
                             │
                             ▼
┌─────────────────────────────────────────────────────────────────┐
│                   rusty-claude-cli (binary)                       │
│  ┌────────────┐  ┌─────────────┐  ┌───────────┐  ┌──────────┐  │
│  │ REPL       │  │ Slash Cmds  │  │  Renderer │  │  init /  │  │
│  │ (rustyline)│  │ (commands   │  │ (markdown │  │  doctor  │  │
│  │ tab-       │  │  crate, 50+)│  │  + syntax │  │  status  │  │
│  │ complete   │  │             │  │  highlight│  │          │  │
│  └─────┬──────┘  └──────┬──────┘  └───────────┘  └──────────┘  │
└────────┼────────────────┼────────────────────────────────────────┘
         │                │ skill invocation / output
         ▼                ▼
┌─────────────────────────────────────────────────────────────────┐
│                  ConversationRuntime  [runtime crate]            │
│                                                                  │
│  ┌──────────────────────────────────────────────────────────┐   │
│  │ Turn loop (iterate until no tool calls remain)           │   │
│  │  1. SystemPromptBuilder                                  │   │
│  │     └─ static scaffold + cwd + date + git context       │   │
│  │         + CLAUDE.md files                                │   │
│  │  2. ApiClient.stream(request) ──► SSE AssistantEvents   │   │
│  │  3. HookRunner.PreToolUse ──► may deny / mutate input   │   │
│  │  4. PermissionEnforcer.authorize(tool, input)           │   │
│  │  5. ToolExecutor.execute(tool, input)                   │   │
│  │  6. HookRunner.PostToolUse                              │   │
│  │  7. auto-compact if tokens > threshold                  │   │
│  └──────────────────────────────────────────────────────────┘   │
│                                                                  │
│  Session (JSONL)   UsageTracker   PromptCache   GitContext       │
└───────┬─────────────────────────────────┬────────────────────────┘
        │                                 │
        ▼                                 ▼
┌──────────────────┐         ┌────────────────────────────────────┐
│   api crate       │         │         tools crate                │
│                  │         │  GlobalToolRegistry                 │
│  AnthropicClient │         │                                    │
│  (SSE streaming, │         │  File:  read/write/edit/glob/grep  │
│   backoff, cache)│         │  Shell: bash (+ sandbox + valid.)  │
│                  │         │  Web:   WebFetch, WebSearch         │
│  OpenAiCompat    │         │  Skill: Skill, ToolSearch          │
│  (OpenAI, xAI,  │         │  Meta:  TodoWrite, Notebook        │
│   DashScope,    │         │  Human: AskQuestion, SendMessage    │
│   Ollama,       │         │  Agent: Agent, Worker*              │
│   OpenRouter)   │         │  Task:  Task*, Team*, Cron*         │
│                 │         │  MCP:   McpBridge tools             │
│  ProviderClient  │         │  LSP:   Diagnostics, Hover, etc.   │
│  (trait)         │         │  Plugins: dynamic tools            │
└──────────────────┘         └────────────┬───────────────────────┘
                                          │
               ┌──────────────────────────┼──────────────────┐
               │                          │                  │
               ▼                          ▼                  ▼
  ┌─────────────────────┐   ┌──────────────────────┐  ┌──────────────┐
  │  Plugin System       │   │   MCP Bridge          │  │ LSP Registry │
  │  PluginManager       │   │   McpServerManager    │  │              │
  │  ├─ builtin          │   │   ├─ stdio processes  │  │  diagnostics │
  │  ├─ bundled          │   │   ├─ SSE endpoints    │  │  hover       │
  │  └─ external         │   │   ├─ HTTP             │  │  definition  │
  │                      │   │   └─ WebSocket        │  │  references  │
  │  per-plugin:         │   │                       │  │  completion  │
  │  tools / cmds /      │   │   JSON-RPC 2.0        │  │  format      │
  │  hooks / lifecycle   │   │   tools/list          │  └──────────────┘
  └─────────────────────┘   │   tools/call          │
                             └──────────────────────┘

┌─────────────────────────────────────────────────────────────────┐
│              MULTI-AGENT PIPELINE LAYER  [runtime crate]         │
│                                                                  │
│  WorkerRegistry          TaskRegistry         CronRegistry       │
│  (sub-agent processes)   (named tasks)        (recurring tasks)  │
│   Spawning               Created              ──► fires tasks    │
│   TrustRequired          Running                                 │
│   ReadyForPrompt         Completed                               │
│   Running                Failed/Stopped                          │
│   Finished/Failed                                                │
│                                                                  │
│  LaneEvents (pipeline event bus)                                 │
│   started → ready → red/green → commit → PR → merge → finished  │
│                                                                  │
│  PolicyEngine                                                    │
│   GreenAt, StaleBranch, ReviewPassed → MergeToDev, Escalate,    │
│   Reconcile, Notify, Block                                       │
└─────────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────────┐
│                 EXTERNAL ECOSYSTEM (separate repos)              │
│                                                                  │
│  oh-my-codex (OmX)      clawhip             oh-my-openagent     │
│  planning keywords /    event/notification  multi-agent coord:  │
│  execution modes /      router:             planning, handoffs,  │
│  parallel dispatch      git, tmux, GitHub,  disagreement        │
│                         agent lifecycle     resolution, verify  │
│                                                                  │
│  All interact with claw via CLI interface + Discord direction    │
└─────────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────────┐
│                 CROSS-CUTTING                                     │
│  Config (5-level .claw.json hierarchy)                           │
│  Telemetry (SessionTracer → JSONL, identifies as "claude-code")  │
│  compat-harness (validates Rust port vs upstream TypeScript)     │
│  mock-anthropic-service (deterministic test server)             │
└─────────────────────────────────────────────────────────────────┘
```

---

## Entry Points

### Primary binary: `claw`
- **Source:** `rust/crates/rusty-claude-cli/src/main.rs`
- Built via: `cargo build --workspace` from `rust/`

### CLI invocation modes
```
claw [OPTIONS] [COMMAND]            # implicit interactive REPL if no command
claw prompt "<text>"                # one-shot prompt
claw "<text>"                       # shorthand one-shot
claw --resume [latest|<path>|<id>]  # resume persisted session
claw --output-format json prompt …  # machine-readable mode
```

### Direct subcommands
`status`, `sandbox`, `agents`, `mcp`, `skills`, `system-prompt`, `init`, `acp [serve]`, `dump-manifests`, `bootstrap-plan`, `version`, `help`

### Secondary binary: `mock-anthropic-service`
Deterministic local Anthropic-compatible server for parity testing.

---

## Core Modules

The workspace lives under `rust/crates/` with 9 crates:

### `rusty-claude-cli` — CLI binary
| File | Responsibility |
|---|---|
| `main.rs` | Argument parsing, REPL loop, one-shot dispatch, all subcommand handlers, streaming display, hook/plugin boot, signal handling |
| `render.rs` | Terminal rendering — markdown-to-ANSI via `pulldown-cmark` + `syntect`, animated spinner |
| `input.rs` | REPL input via `rustyline` with tab-completion for slash commands, model aliases, permission modes |
| `init.rs` | `claw init` — detects project type and scaffolds `.claw.json` + CLAUDE.md |

### `runtime` — Core engine (largest crate)
| File | Responsibility |
|---|---|
| `conversation.rs` | `ConversationRuntime<C, T>` — drives multi-turn cycles: assemble → stream → collect tool calls → execute → append → loop |
| `session.rs` | `Session` — JSONL-persisted conversation messages with rotation (256 KB threshold, 3 rotated files) |
| `config.rs` | `RuntimeConfig` — 5-level config hierarchy; parses hooks, plugins, MCP, OAuth, sandbox, aliases, permissions |
| `permissions.rs` | `PermissionPolicy`, `PermissionMode` enum (ReadOnly / WorkspaceWrite / DangerFullAccess / Prompt / Allow) |
| `permission_enforcer.rs` | `PermissionEnforcer` — gating layer called before each tool execution |
| `hooks.rs` | `HookRunner` — executes lifecycle shell commands for PreToolUse / PostToolUse / PostToolUseFailure |
| `mcp_stdio.rs` | `McpServerManager` — JSON-RPC 2.0 over stdio to local MCP server processes |
| `mcp_client.rs` | Transport abstraction: Stdio, SSE, HTTP, WebSocket, SDK, ManagedProxy |
| `mcp_tool_bridge.rs` | `McpToolRegistry` — stateful registry of connected MCP servers and their tool/resource inventories |
| `prompt.rs` | `SystemPromptBuilder` — static template + dynamic context (cwd, date, git status/diff, CLAUDE.md files) |
| `compact.rs` | `compact_session()` — token-budget-based session summarization |
| `sandbox.rs` | `SandboxStatus` — Linux namespace isolation via `unshare` |
| `bash.rs` | `execute_bash()` — runs shell commands with timeout, background execution, sandbox wrapping |
| `file_ops.rs` | `read_file`, `write_file`, `edit_file`, `glob_search`, `grep_search` — with workspace boundary guards |
| `worker_boot.rs` | `WorkerRegistry` — sub-agent lifecycle control plane (Spawning → TrustRequired → ReadyForPrompt → Running → Finished/Failed) |
| `task_registry.rs` | `TaskRegistry` — in-memory task lifecycle (Created / Running / Completed / Failed / Stopped) |
| `team_cron_registry.rs` | `TeamRegistry`, `CronRegistry` — backing TeamCreate/Delete and CronCreate/Delete/List |
| `lane_events.rs` | `LaneEvent` — event schema for multi-agent pipeline coordination |
| `policy_engine.rs` | `PolicyEngine` — rule-based lane orchestration (MergeToDev, Escalate, Reconcile, Notify, Block) |
| `usage.rs` | `UsageTracker`, `ModelPricing` — per-turn and cumulative token counting with USD cost estimation |

### `api` — Provider clients and streaming
| File | Responsibility |
|---|---|
| `providers/anthropic.rs` | `AnthropicClient` — `reqwest`-based HTTP with exponential backoff (1s → 128s, 8 retries), SSE streaming, prompt-cache tracking |
| `providers/openai_compat.rs` | Shared client for OpenAI, xAI (Grok), DashScope (Qwen), Ollama, OpenRouter via `/v1/chat/completions` |
| `providers/mod.rs` | `detect_provider_kind()`, `MODEL_REGISTRY`, `resolve_model_alias()`, `ProviderKind` enum |
| `types.rs` | Full Anthropic Messages API type tree — `MessageRequest`, `StreamEvent`, `ContentBlockDelta`, `ToolDefinition` |
| `prompt_cache.rs` | FNV-hashed request fingerprinting, disk-backed completion TTL cache |

### `tools` — Tool catalog and executor
- `lib.rs`: `mvp_tool_specs()` returns all 48+ built-in tool specs with JSON schemas. `GlobalToolRegistry` manages builtin + plugin + runtime tools. `execute_tool()` is the top-level dispatch.

### `commands` — Slash command registry
- 50+ slash commands, `CommandRegistry`, skill invocation dispatch, MCP/agents/plugins slash handlers.

### `plugins` — Plugin system
- `PluginManager`, `PluginManifest` — three tiers: builtin, bundled, external. Per-plugin: tools, commands, hooks, lifecycle.

### `telemetry` — Session tracing
- `SessionTracer` → JSONL + in-memory sinks. Identifies as `app_name: "claude-code"`, `runtime: "rust"`.

### `compat-harness` — Parity tooling
- Reads upstream TypeScript source (`src/commands.ts`, `src/tools.ts`) and builds `ExtractedManifest` for diff against the Rust implementation.

### `mock-anthropic-service` — Test mock
- Deterministic TCP server serving `/v1/messages` with scripted responses keyed by `PARITY_SCENARIO:` system prompt prefix.

---

## Data Flow

### Interactive REPL turn (end-to-end)

```
User types input (rustyline)
    │
    ├─ Slash command? → handle in commands crate → print output → loop
    │
    └─ Prompt text
        │
        ▼
Session.append_user_message()
        │
        ▼
SystemPromptBuilder.build()
  - Static scaffold
  - ProjectContext (cwd, date, git status/diff, CLAUDE.md files)
        │
        ▼
ConversationRuntime.run_turn(prompt)
  ┌─────────────────────────────────────────────────┐
  │  Loop (until MessageStop with no tool calls):   │
  │                                                  │
  │  1. Assemble ApiRequest {system, messages}       │
  │  2. ApiClient.stream(request)                    │
  │     → SSE stream → TextDelta, ToolUse, Usage     │
  │  3. Emit events to CLI renderer (live ANSI)      │
  │  4. For each ToolUse event:                      │
  │     a. HookRunner.PreToolUse                     │
  │        → may deny / mutate input                 │
  │     b. PermissionEnforcer.authorize              │
  │     c. ToolExecutor.execute → JSON result        │
  │     d. HookRunner.PostToolUse                    │
  │     e. Append ToolResult to session              │
  │  5. Auto-compaction check                        │
  └─────────────────────────────────────────────────┘
        │
        ▼
Session written to .claw/sessions/<id>.jsonl
UsageTracker updated → display cost summary
```

---

## Key Abstractions

| Trait / Type | Description |
|---|---|
| `ConversationRuntime<C, T>` | Generic over `ApiClient + ToolExecutor`; owns the entire model loop |
| `ApiClient` trait | `stream(ApiRequest) → Vec<AssistantEvent>` — model connection contract |
| `ToolExecutor` trait | `execute(tool_name, input) → Result<String, ToolError>` — tool dispatch contract |
| `Session` | Mutable conversation state: messages, compaction metadata, fork info, model |
| `ContentBlock` | Union: `Text | ToolUse | ToolResult` |
| `AssistantEvent` | Streamed events: `TextDelta | ToolUse | Usage | PromptCache | MessageStop` |
| `PermissionPolicy` | Active mode + allow/deny/ask rule lists |
| `LaneEvent` | Multi-agent pipeline event with status, failure class, provenance |
| `WorkerRegistry` | Thread-safe map of sub-agent workers with lifecycle state machine |
| `PolicyEngine` | Rule-based evaluator: condition → action for lane orchestration |

---

## External Dependencies

### Rust crates (key)
| Crate | Role |
|---|---|
| `reqwest` | HTTP client for all API calls |
| `tokio` | Async runtime for MCP stdio process management |
| `serde` / `serde_json` | Serialization throughout |
| `rustyline` | Interactive REPL with history and tab completion |
| `pulldown-cmark` | Markdown parsing for terminal rendering |
| `syntect` | Syntax highlighting in terminal code blocks |
| `crossterm` | Cross-platform terminal cursor/style control |

### External APIs / services
| Service | Usage |
|---|---|
| **Anthropic Messages API** | Primary model provider; SSE streaming |
| **OpenAI-compatible endpoints** | Secondary provider; OpenAI, xAI, DashScope, Ollama, OpenRouter |
| **MCP servers** (any) | External tool servers via JSON-RPC 2.0 |
| **GitHub** | Git integration for `/pr`, `/commit`, `/issue` slash commands |
| **LSP servers** (any) | Code intelligence: diagnostics, hover, definition, references |

---

## Agent / AI Architecture

Five tiers:

### Tier 1 — Single-turn assistant
`ConversationRuntime` drives user ↔ model loop. Iterates until no tool calls remain.

### Tier 2 — Sub-agent workers
`WorkerRegistry` + `worker_boot.rs` spawns peer agent processes. State machine: `Spawning → TrustRequired → ReadyForPrompt → Running → Finished/Failed`. Tools exposed to model: `WorkerCreate`, `WorkerSendPrompt`, `WorkerObserve`, `WorkerTerminate`, etc. The `Agent` tool wraps this: spawn → deliver prompt → wait.

### Tier 3 — Task system
`TaskRegistry` tracks named tasks (`Created → Running → Completed/Failed/Stopped`). Tasks grouped into `Team`s. Tools: `TaskCreate`, `TaskGet`, `TaskList`, `TaskUpdate`, `TaskOutput`, `TeamCreate`.

### Tier 4 — Cron scheduler
`CronRegistry` backs `CronCreate`, `CronDelete`, `CronList` — recurring task scheduling within a session.

### Tier 5 — Lane / pipeline orchestration
`lane_events.rs` + `policy_engine.rs` — event bus for coordinating multi-agent pipelines:
- Events: `started → ready → red/green → commit → PR → merge → finished/reconciled`
- Policy engine evaluates conditions (`GreenAt`, `StaleBranch`, `ReviewPassed`) and fires actions (`MergeToDev`, `Escalate`, `Reconcile`, `Block`)

### External ecosystem (separate repos)
- **oh-my-codex (OmX)** — workflow layer: planning keywords, execution modes, parallel multi-agent dispatch
- **clawhip** — event/notification router: watches git, tmux, GitHub issues/PRs, agent lifecycle
- **oh-my-openagent (OmO)** — multi-agent coordination: planning, handoffs, disagreement resolution, verification

---

## Configuration

### Config file hierarchy (later overrides earlier)
1. `~/.claw.json`
2. `~/.config/claw/settings.json`
3. `<project>/.claw.json`
4. `<project>/.claw/settings.json`
5. `<project>/.claw/settings.local.json`

### Key config sections
```json
{
  "model": "claude-opus-4-6",
  "aliases": { "fast": "claude-haiku-4-5-20251213" },
  "permissions": {
    "defaultMode": "dontAsk",
    "allow": ["read_file", "glob_search"],
    "deny": ["bash"],
    "ask": ["write_file"]
  },
  "hooks": {
    "PreToolUse": ["./hooks/pre.sh"],
    "PostToolUse": ["./hooks/post.sh"],
    "PostToolUseFailure": ["./hooks/failure.sh"]
  },
  "plugins": {
    "enabled": { "example-plugin": true },
    "externalDirectories": ["~/.claw/plugins"]
  },
  "mcpServers": {
    "my-server": { "type": "stdio", "command": "node", "args": ["./server.js"] }
  },
  "sandbox": { "enabled": true, "filesystemMode": "workspace-only" }
}
```

### Key environment variables
| Variable | Purpose |
|---|---|
| `ANTHROPIC_API_KEY` | Direct API key auth |
| `ANTHROPIC_AUTH_TOKEN` | Bearer token / OAuth |
| `ANTHROPIC_BASE_URL` | Override Anthropic API base URL |
| `OPENAI_API_KEY` | OpenAI-compat key |
| `XAI_API_KEY` | xAI/Grok key |
| `DASHSCOPE_API_KEY` | Alibaba DashScope key |
| `CLAUDE_CODE_AUTO_COMPACT_INPUT_TOKENS` | Override auto-compaction threshold (default 100K) |
| `HTTPS_PROXY` / `HTTP_PROXY` / `NO_PROXY` | HTTP proxy settings |

---

## Hooks and Extension Points

### Lifecycle hooks (shell scripts)
Three events around every tool invocation:
- **`PreToolUse`**: Runs before execution. Can deny the call, mutate the input (`updated_input`), or override permission.
- **`PostToolUse`**: Runs after successful execution.
- **`PostToolUseFailure`**: Runs when a tool returns an error.

### Plugin system
Plugins are directories with a `plugin.json` manifest defining tools, slash commands, hook scripts, and lifecycle scripts (`Init` / `Shutdown`). Three tiers: builtin, bundled, external (user-installed).

### MCP servers
Any MCP server wired via config (stdio / SSE / HTTP / WebSocket). Once connected, MCP tools appear in the tool registry alongside builtins. `McpAuth` tool handles OAuth for protected servers.

### LSP integration
In-process `LspRegistry` of language server action handlers. `LSP` tool dispatches diagnostics, hover, definition, references, completion, symbols, format to registered LSPs.

### Skill system
Named procedures invocable via `Skill` tool or `/skill-name` slash commands. Live in `.claw/` directories. `skill-writer` agent creates new skills when capability gaps are identified.

### `compat-harness`
Reads upstream TypeScript source files to extract command/tool manifests and diffs against the Rust implementation — automated validation that the port stays in sync.

---

## Key Insights

1. **It is Claude Code with a Rust core and multi-provider support.** Same tool catalog, slash commands, hooks, MCP, and permission system — but Rust, with OpenAI/xAI/Ollama backends alongside Anthropic.

2. **The agent system has 5 tiers.** Single-turn → sub-agent workers → named tasks → cron → lane/pipeline orchestration. The lane layer enables a fully autonomous multi-agent pipeline.

3. **Hooks are the primary extension surface.** `PreToolUse` / `PostToolUse` shell scripts can deny calls, mutate inputs, and override permissions — same model as Claude Code.

4. **Config hierarchy mirrors Claude Code exactly** — 5 levels from global to project-local, same key names, same permission modes.

5. **The `compat-harness` crate actively tracks parity** with upstream TypeScript source — it's self-validating against Claude Code by parsing the TS source and diffing manifests.
