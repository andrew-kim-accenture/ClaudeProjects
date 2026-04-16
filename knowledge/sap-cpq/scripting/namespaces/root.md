# SAP CPQ Scripting Documentation

**Source:** `https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/d75eb659-6335-53f6-af7a-81814a21ab7f.htm`
**Version:** 2603

## Overview

Root index of the SAP CPQ Scripting API. Scripts are written in IronPython and execute within the CPQ runtime. The following namespaces are available.

## Namespaces

| Namespace | Description | File |
|-----------|-------------|------|
| `Crm.MSCrmService` | CRM entity management (Account, Contact, Opportunity, etc.) | `crm-mscrmservice.md` |
| `Scripting` | Core scripting interfaces — quote, product, REST, SQL, utilities (150+ interfaces) | `scripting.md` |
| `Scripting.Jwt` | JWT token generation with symmetric/asymmetric signing | `scripting-jwt.md` |
| `Scripting.Quote` | Quote 2.0 interfaces — quotes, items, custom fields, approvals | `scripting-quote.md` |
| `Scripting.Quote.Approvals` | Approval workflow interfaces (Quote 2.0 only) | `scripting-quote-approvals.md` |
| `Scripting.Quote.Events` | Event argument interfaces for Quote 2.0 event hooks | `scripting-quote-events.md` |
| `Scripting.QuoteTables` | Custom quote table interfaces and enumerations | `scripting-quotetables.md` |
| `Scripting.Test` | Test container interfaces for unit testing scripts | `scripting-test.md` |
