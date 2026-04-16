# Scripting.Quote Namespace

**Source:** `https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/bc836bca-7f7c-6a90-e7f2-b31beab8660e.htm`
**Version:** 2603

## Overview

Quote 2.0 scripting interfaces. Distinct from the legacy `Scripting` namespace — these interfaces apply only to Quote 2.0 environments. Covers quotes, items, custom fields, approvals, sales org data, and tables.

> For full method signatures see `../interfaces/` — key files: `IQuote.md`, `IQuoteHelper.md`, `IQuoteItem.md`

## Core Quote Interfaces

| Interface | Description |
|-----------|-------------|
| `IQuote` | Represents a quote — `GetCustomField()`, `AddItem()`, `AddItemsInBulk()`, `CreateNewRevision()`, `ChangeStatus()`, `SubmitForApproval()`, `Approve()`, `Reject()` |
| `IQuoteHelper` | Global quote manipulation — `CreateNewQuote()`, `Reassign()`, `Delete()`, `Get()` |
| `IQuoteContext` | Context for Quote 2.0 operations |
| `IQuoteInfo` | Result from executing a quote action |
| `ISavableQuote` | Quote that can be saved manually |

## Quote Item Interfaces

| Interface | Description |
|-----------|-------------|
| `IQuoteItem` | Abstract base for main and line items; supports indexer access for custom field values |
| `IQuoteItemCollection` | Collection of quote items |
| `IQuoteMainItem` | Abstract base for main items |
| `IQuoteItemAttribute` | Quote item attribute |
| `IQuoteItemAttributeCollection` | All attributes selected in the referenced product |
| `IQuoteItemAttributeValue` | Selected value of a product attribute on a quote item |
| `IQuoteItemCustomField` | Quote item custom field |

## Custom Field Interfaces

| Interface | Description |
|-----------|-------------|
| `IQuoteCustomField` | Quote custom field — properties: `AccessLevel`, `AttributeValue`, `AttributeValueCode`, `AttributeValueTranslated`, `CustomFieldType`, `Label`, `Value` |
| `IQuoteFieldAccessContext` | Configure access levels for quote item custom fields — `SetAccessLevel()`, `SetColumnAccessLevel()`, `SetAccessLevelForProductType()`, `SetAccessLevelForSection()` |

## Sales & Organization Interfaces

| Interface | Description |
|-----------|-------------|
| `ISalesArea` | Sales area (read-only properties) |
| `ISalesOrganization` | Sales organization (read-only properties) |
| `IDistributionChannel` | Distribution channel — property: `Code` |
| `IDivision` | Division — property: `Code` |

## Financial & Logistics Interfaces

| Interface | Description |
|-----------|-------------|
| `ICurrency` | Currency — property: `CurrencyCode` |
| `IPaymentTerms` | Payment terms — property: `Id` |
| `IIncoterm` | Incoterm — property: `Id` |
| `IShippingCondition` | Shipping condition — property: `Id` |

## Quote Structure Interfaces

| Interface | Description |
|-----------|-------------|
| `IQuoteRevision` | Quote revision — `SetActive()`, `SetDescription()` |
| `IQuoteProductType` | Quote product type |
| `IQuoteTotal` | Quote total |
| `ISectionTotalsCollection` | Section totals collection |
| `IQuote2SectionItemCollection` | Section items collection for Quote 2.0 |
| `IQuoteSectionItem` | Quote section item |

## Affected Items & Change Tracking

| Interface | Description |
|-----------|-------------|
| `IQuoteAffectedItemCollection` | Collection of changed items — `GetDelta()` |
| `IQuoteAffectedProductTypesCollection` | Collection of affected product types |
| `IQuoteAffectedSection` | Affected quote sections |
| `IQuoteAffectedSectionsCollection` | Collection of affected sections |

## Additional Entities

| Interface | Description |
|-----------|-------------|
| `IQuoteCustomer` | Quote customer |
| `IQuoteShipToCustomer` | Quote ship-to customer |
| `IQuoteInvolvedParty` | Involved party entity |
| `IMarketBase` | Quote market — property: `Name` |
| `IAsset` | Asset representation |
| `IAssetCollection` | Asset collection |
| `IAssetHistoryItem` | Asset history item |
| `IAssetHistoryItemCollection` | Asset history item collection |

## Documents & Tables

| Interface | Description |
|-----------|-------------|
| `IQuoteAttachedDocument` | Attached document |
| `IQuoteGeneratedDocument` | Generated document |
| `IQuoteTable` | Custom quote table |
| `IQuoteTableCollection` | Collection of quote tables |
| `IAfterQuoteTableExcelUploaded` | Event: Excel uploaded into a quote table |

## Contract Management

| Interface | Description |
|-----------|-------------|
| `IQuoteContractDurationBase` | Contract duration interface |
| `IQuoteContractExtension` | Quote contract extension model |
| `IQuoteMessage` | Quote message entity |

## Enumerations

| Enumeration | Description |
|-------------|-------------|
| `AccessLevel` | Options for access level |
| `MessageLevel` | Message severity level |
| `QuoteFieldAccessLevel` | Access level options for quote item custom fields |
