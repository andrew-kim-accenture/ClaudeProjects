# Scripting Rules — TODO

Rules to be formalized into a `scripting-rules.md` guide for the builder agent.
Each rule should state the condition, the preferred pattern, and the reason.

---

## [ ] Rule: Log.Write vs Trace.Write

**Condition:** Determine which logging method to suggest based on script context.

- **ScriptWorkbench context** → prefer `Trace.Write` — output is visible inline in the workbench during development/testing
- **Production/event scripts** → prefer `Log.Write` — persists to the CPQ log system

**Open design question:** `Log.Write` needs a wrapper that checks a Custom Table flag before writing, to enable/disable deep logging per-environment without code changes. The wrapper should:
- Accept same signature as `Log.Write`
- Look up a Custom Table (TBD: table name, column name) for an on/off toggle
- Only call `Log.Write` if the toggle is enabled
- Be defined once and reused across scripts (via `IScriptExecutor` or a shared utility script)

**TODO:**
- [ ] Decide Custom Table schema (table name, column for toggle, any environment/scope columns)
- [ ] Write the wrapper pattern
- [ ] Document when `Trace.Write` is sufficient vs when the wrapper is required

---

## [ ] General rule document structure

When the rule document is built (`scripting-rules.md`), it should cover:
- Logging strategy (above)
- Quote 1.0 vs Quote 2.0 namespace selection
- When to use `ISqlHelper` vs `IRestClient` for data retrieval
- `Save()` vs `CalculateAndSaveCustomFields()` — when each is appropriate
- `RefreshActions()` — when to call it after `Save()`
- QuoteTable iteration pattern (indexed access, not iterator, after `AddToQuote`)
- IronPython 2.7 gotchas (no f-strings, `range` vs `xrange`, `is not None`)
