# CPQ Field Notes

Running log of discovered platform behaviors, errors, and resolutions.
Not naming conventions (see `NCD.md`) — this is what you learn by running code.

Each entry: **symptom → root cause → fix → verified**.

---

## SQL / SqlHelper

### ORDER BY requires TOP or OFFSET

**Error:**
```
System.Data.SqlClient.SqlException: The ORDER BY clause is invalid in views,
inline functions, derived tables, subqueries, and common table expressions,
unless TOP, OFFSET or FOR XML is also specified.
```
**Root cause:** CPQ's DAL wraps `SqlHelper.GetList` queries in a derived table internally, making bare `ORDER BY` invalid SQL Server syntax.

**Fix:** Pair `ORDER BY` with `TOP` or `OFFSET`. If you just need ordering and don't care about limiting rows, `TOP` with a high value works. If you don't need ordering, drop `ORDER BY` entirely — simpler.

**Note:** `TOP` is capped at 1000 in CPQ's `SqlHelper`. Queries returning more than 1000 rows will be truncated.

**Verified:** TST, 2026-04-17

---

## ScriptWorkbench

### 30-second execution timeout

**Symptom:** Script stops mid-execution with a timeout error, or partial output appears in Trace.

**Root cause:** ScriptWorkbench enforces a hard 30-second execution limit per run.

**Fix options:**
1. **Trim the query** — filter to a subset (e.g. `TABLE_FILTER = "QUOTE"`) and run in multiple passes
2. **Use system logs instead** — attach a script to an event, trigger it via normal CPQ usage, and read the output from the system audit/log viewer rather than the ScriptWorkbench console

**Note:** The 30-second limit applies to the total wall-clock time of the script, including all `SqlHelper` calls. A script looping over 851 tables with one query each may push this limit depending on tenant load.

**Verified:** TST, 2026-04-17

---

## Scripting API

### SqlHelper method is GetList / GetFirst — not ExecuteQuery

**Error:**
```
System.MissingMemberException: 'ISqlHelperProxy' object has no attribute 'ExecuteQuery'
```
**Root cause:** The correct methods on `ISqlHelper` are `GetList()` (multiple rows), `GetFirst()` (first row or None), and `GetSingle()` (exactly one row — throws if more). `ExecuteQuery` does not exist.

**Fix:**
```python
rows = SqlHelper.GetList("SELECT ...")    # multiple rows
row  = SqlHelper.GetFirst("SELECT ...")   # first row or None
```

**Note:** Row columns are accessed with dot notation (`row.COLUMN_NAME`), not bracket notation (`row["COLUMN_NAME"]`).

**Verified:** TST, 2026-04-17
