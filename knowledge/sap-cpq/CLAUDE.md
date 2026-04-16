# SAP CPQ Knowledge Base — Agent Instructions

This directory is a structured knowledge base for SAP CPQ. Use it when helping with
CPQ scripting (IronPython), REST API calls, or general CPQ configuration questions.

## How to Navigate

1. **Start here**: `toc.md` — full directory map and quick interface index
2. **Check status**: `crawl-progress.md` — see what's been fetched; resume incomplete jobs
3. **Find an interface**: `scripting/interfaces/[InterfaceName].md` — full method signatures
4. **Find a namespace**: `scripting/namespaces/[namespace].md` — overview + member list
5. **Find an API endpoint**: `rest-api/summary.md` or `rest-api/swagger.json`

## File Naming Conventions

| Content | Path pattern |
|---------|-------------|
| Namespace overview | `scripting/namespaces/[kebab-name].md` |
| Interface detail | `scripting/interfaces/[PascalName].md` |
| REST endpoint group | `rest-api/endpoints/[tag].md` |
| Raw Swagger spec | `rest-api/swagger.json` |
| Portal guide pages | `portal/[guide-slug].md` |

## Writing to This Knowledge Base

If you are a crawler agent fetching new pages:

1. Check `crawl-progress.md` before fetching — skip entries marked `completed`
2. Write the file to the correct path per the naming convention above
3. After writing, update the entry in `crawl-progress.md` from `pending` to `completed`
4. If a fetch fails, mark it `failed` with a reason — do not retry in the same session

## Content Format for Interface Files

Each interface file should follow this structure:

```markdown
# [InterfaceName]

**Namespace:** Scripting
**Source:** [URL]

## Overview
[Description]

## Properties
| Name | Type | Description |
...

## Methods
### MethodName(params)
- **Returns:** Type
- **Description:** ...

## Code Examples
\`\`\`python
...
\`\`\`
```

## Key Facts About CPQ Scripting

- Scripts are written in **IronPython 2.7** — Python 2.7 syntax running on the **.NET CLR**
- .NET types are used throughout: `String`, `Int32`, `Decimal`, `DateTime`, `Boolean`, `Byte[]`, `Stream`
- **Razor** templating is used for document templates and some UI rendering
- The `Quote` object is always in scope — it is an `IQuote` instance
- `ProductHelper` is always in scope — it is an `IProductHelper` instance
- Custom fields are accessed via `Quote.GetCustomField("FieldName").Content`
- Quote 2.0 interfaces live under `Scripting.Quote` namespace (distinct from legacy `Scripting`)
- All DB access goes through `SqlHelper` — never raw SQL without parameterization
- IronPython 2.7 does not support f-strings, type hints, walrus operator, or other Python 3 features
- Use `is not None` not `!= None`; use `range()` not `xrange()` for iteration
