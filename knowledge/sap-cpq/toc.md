# SAP CPQ Knowledge Base — Table of Contents

> **For agents:** Read this file first. It tells you what exists, where it is, and how to find what you need.

---

## Directory Structure

```
knowledge/sap-cpq/
├── toc.md                          ← You are here
├── CLAUDE.md                       ← Agent usage instructions
├── crawl-progress.md               ← Crawl job tracker
│
├── scripting/                      ← IronPython Scripting API (static HTML source)
│   ├── namespaces/  (9 files)      ← Namespace overview pages
│   │   ├── root.md                 ← Scripting Documentation index
│   │   ├── crm-mscrmservice.md     ← Crm.MSCrmService namespace
│   │   ├── scripting.md            ← Scripting namespace (150+ interfaces)
│   │   ├── scripting-jwt.md        ← Scripting.Jwt namespace
│   │   ├── scripting-quote.md      ← Scripting.Quote namespace (Quote 2.0)
│   │   ├── scripting-quote-approvals.md
│   │   ├── scripting-quote-events.md
│   │   ├── scripting-quotetables.md
│   │   └── scripting-test.md
│   └── interfaces/  (179 files)    ← Individual interface/class detail pages
│       └── [InterfaceName].md
│
├── rest-api/                       ← SAP CPQ REST API (Swagger/OpenAPI)
│   ├── swagger.json                ← Raw OpenAPI v2 spec
│   └── summary.md                  ← Human-readable endpoint index
│
├── portal/                         ← SAP Help Portal docs (v2603, English)
│   ├── whats-new/        (88 pages)  ← Release notes, breaking changes, schedule
│   ├── admin-quote-1/   (524 pages)  ← Setup & Administration Guide (Quote 1.0)
│   ├── admin-quote-2/   (549 pages)  ← Setup & Administration Guide (Quote 2.0)
│   ├── migration-guide/  (33 pages)  ← Migration Guide: Quote 1.0 → 2.0
│   ├── integration/     (313 pages)  ← SAP CPQ Integration Guide
│   ├── user-guide/       (62 pages)  ← End-user guide
│   ├── api-docs/        (227 pages)  ← API documentation (SOAP + REST)
│   ├── scripting-events/ (90 pages)  ← Scripting events, properties, event pipeline
│   ├── troubleshooting/  (20 pages)  ← Common issues, causes, workarounds
│   ├── known-issues/      (8 pages)  ← Limitations and known issues
│   └── getting-started/  (24 pages)  ← Getting Started Guide for Administrators
│
└── tools/                          ← Crawler scripts (not documentation)
    ├── crawl-portal.js             ← Playwright crawler (targeted, resumable)
    └── rename-portal-files.js      ← One-time rename utility
```

**Total: 2,151 documentation pages**

---

## Content Sources

| Source | Format | Status | Pages |
|--------|--------|--------|-------|
| Scripting API (namespaces + interfaces) | Static HTML | Complete | 188 |
| REST API spec (Swagger) | JSON + summary | Complete | 2 |
| Help Portal — What's New | JS-rendered SPA | Complete | 88 |
| Help Portal — Administration (Quote 1.0) | JS-rendered SPA | Complete | 524 |
| Help Portal — Administration (Quote 2.0) | JS-rendered SPA | Complete | 549 |
| Help Portal — Migration Guide | JS-rendered SPA | Complete | 33 |
| Help Portal — Integration | JS-rendered SPA | Complete | 313 |
| Help Portal — User Guide | JS-rendered SPA | Complete | 62 |
| Help Portal — API Documentation | JS-rendered SPA | Complete | 227 |
| Help Portal — Scripting Events | JS-rendered SPA | Complete | 90 |
| Help Portal — Troubleshooting | JS-rendered SPA | Complete | 20 |
| Help Portal — Known Issues | JS-rendered SPA | Complete | 8 |
| Help Portal — Getting Started | JS-rendered SPA | Complete | 24 |

---

## How to Use This Knowledge Base

### For scripting questions (IronPython)
- Start at `scripting/namespaces/scripting.md` for the full interface list
- Then go to `scripting/interfaces/[InterfaceName].md` for method signatures
- For events and the event pipeline: `portal/scripting-events/`
- Key interfaces: `IQuote`, `IMainItem`, `IProduct`, `ISqlHelper`, `IRestClient`

### For REST API questions
- Start at `rest-api/summary.md` for the endpoint index
- Detailed schemas and parameters are in `rest-api/swagger.json`
- Portal API guide pages: `portal/api-docs/`

### For administration / configuration
- Quote 1.0 engine: `portal/admin-quote-1/`
- Quote 2.0 engine: `portal/admin-quote-2/`
- Migrating between engines: `portal/migration-guide/`

### For integration with other SAP / third-party systems
- `portal/integration/`

### For end-user workflows
- `portal/user-guide/`

### For troubleshooting and known issues
- `portal/troubleshooting/`
- `portal/known-issues/`

### For onboarding / getting started
- `portal/getting-started/`

### For release notes and breaking changes
- `portal/whats-new/`

---

## Scripting Interface Quick Index

> See `scripting/interfaces/` for full detail files.

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
