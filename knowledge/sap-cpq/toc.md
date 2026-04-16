# SAP CPQ Knowledge Base — Table of Contents

> **For agents:** Read this file first. It tells you what exists, where it is, and what still needs to be crawled.
> Check `crawl-progress.md` to see pending/completed status of each source.

---

## Directory Structure

```
knowledge/sap-cpq/
├── toc.md                          ← You are here
├── CLAUDE.md                       ← Agent usage instructions
├── crawl-progress.md               ← Crawl job tracker (resume point)
│
├── scripting/                      ← SAP CPQ IronPython Scripting API
│   ├── namespaces/                 ← Namespace overview pages (8 total)
│   │   ├── root.md                 ← SAP CPQ Scripting Documentation (index)
│   │   ├── crm-mscrmservice.md     ← Crm.MSCrmService namespace
│   │   ├── scripting.md            ← Scripting namespace (150+ interfaces)
│   │   ├── scripting-jwt.md        ← Scripting.Jwt namespace
│   │   ├── scripting-quote.md      ← Scripting.Quote namespace (Quote 2.0)
│   │   ├── scripting-quote-approvals.md
│   │   ├── scripting-quote-events.md
│   │   ├── scripting-quotetables.md
│   │   └── scripting-test.md
│   └── interfaces/                 ← Individual interface/class detail pages (~243 total)
│       └── [interface-name].md
│
├── rest-api/                       ← SAP CPQ REST API (Swagger/OpenAPI)
│   ├── swagger.json                ← Raw OpenAPI v2 spec
│   ├── summary.md                  ← Human-readable endpoint index
│   └── endpoints/                  ← Per-tag or per-resource markdown files
│
└── portal/                         ← SAP Help Portal guide docs (JS-rendered)
    └── [requires Playwright crawler — see crawl-progress.md]
```

---

## Content Sources

| Source | URL | Format | Status |
|--------|-----|--------|--------|
| Scripting API index | `help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/d75eb659-*.htm` | Static HTML | See progress |
| Scripting interfaces | 243 pages under same base URL | Static HTML | See progress |
| REST API spec | `default-us1-prd-01.cpq.cloud.sap/swagger/docs/v1` | JSON | See progress |
| Help Portal guides | `help.sap.com/docs/SAP_CPQ` | JS-rendered SPA | Needs Playwright |

---

## How to Use This Knowledge Base

### For scripting questions (IronPython)
- Start at `scripting/namespaces/scripting.md` for the full interface list
- Then go to `scripting/interfaces/[InterfaceName].md` for method signatures
- Key interfaces: `IQuote`, `IMainItem`, `IProduct`, `ISqlHelper`, `IRestClient`

### For REST API questions
- Start at `rest-api/summary.md` for the endpoint index
- Detailed schemas and parameters are in `rest-api/swagger.json`

### For general CPQ feature docs
- `portal/` — not yet crawled (requires Playwright)

---

## Scripting Interface Quick Index

> Populated as interfaces are crawled. See `scripting/interfaces/` for files.

### Core Quote Objects
- `IQuote` — main quote, all actions/items/fields
- `IMainItem` — primary line item
- `ILineItem` — sub-item under a main item
- `IQuoteItem` — abstract base for main/line items
- `IQuoteCustomField` — quote-level custom field
- `IQuoteItemCustomField` — item-level custom field

### Products
- `IProduct` — product info and attribute management
- `IProductHelper` — global product utilities (AddToQuote, etc.)
- `IProductAttribute` / `IProductAttributeValue`

### Data & Integration
- `ISqlHelper` — SQL SELECT/INSERT/UPDATE/DELETE
- `IRestClient` / `IAuthorizedRestClient` / `IAsyncRestClient`
- `IJsonHelper` / `IXmlHelper`
- `ISession` — persist objects across scripts

### Utilities
- `ILog` / `ITrace` — logging and debug output
- `ICryptography` — crypto utilities
- `IMailMessage` / `ISmtpClient` — email
- `IScriptExecutor` — call scripts from scripts
- `IJwtTokenProvider` — JWT generation

### Quote 2.0 (Scripting.Quote namespace)
- `IQuote` (v2) — Quote 2.0 with approval workflows
- `IQuoteHelper` — create/reassign/delete quotes
- `IQuoteFieldAccessContext` — field access control

### Events (Scripting.Quote.Events)
- Item events: `IAfterItemAddedArgs`, `IBeforeItemAddedArgs`, etc.
- Field events: `IOnCustomFieldChangedArgs`, `IOnCurrencyChangedArgs`, etc.
- Quote events: `IAfterQuoteIsCreatedArgs`, `IOnQuoteEditedArgs`
