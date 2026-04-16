# Knowledge Base

Shared reference material for Claude Code agents working across projects in this workspace.
Content is crawled from vendor documentation and stored as structured markdown for fast agent lookup.

## Structure

```
knowledge/
└── sap-cpq/                    ← SAP CPQ (Configure Price Quote)
    ├── CLAUDE.md               ← Agent usage instructions
    ├── toc.md                  ← Full content index and quick reference
    ├── crawl-progress.md       ← Crawl job tracker (resume point)
    ├── scripting/              ← IronPython Scripting API reference
    │   ├── namespaces/         ← Namespace overview pages
    │   └── interfaces/         ← Individual interface/class detail pages
    ├── rest-api/               ← REST API (OpenAPI/Swagger spec + summaries)
    └── portal/                 ← SAP Help Portal guide docs
```

## Adding a New Product

Create a new subdirectory under `knowledge/` following the same pattern:
- `CLAUDE.md` — agent instructions and key facts
- `toc.md` — content index
- `crawl-progress.md` — URL tracker with pending/completed/failed status
