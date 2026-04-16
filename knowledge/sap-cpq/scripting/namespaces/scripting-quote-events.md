# Scripting.Quote.Events Namespace

**Source:** `https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/54ca8b50-489a-83b8-8398-8630b4cd4043.htm`
**Version:** 2603

## Overview

Event argument interfaces for Quote 2.0 scripting hooks. All interfaces are Quote 2.0 only.
These are passed as arguments to event handler scripts when the corresponding event fires.

## Item & Product Events

| Interface | Trigger |
|-----------|---------|
| `IAfterItemAddedArgs` | After adding products to quote |
| `IAfterItemCopyArgs` | After copying products in quote |
| `IAfterItemDeleteArgs` | After deleting products from quote |
| `IAfterItemUpdatedArgs` | After editing products in quote |
| `IBeforeItemAddedArgs` | Before adding products to quote |
| `IBeforeItemUpdatedArgs` | Before updating products in quote |

## Quote Lifecycle Events

| Interface | Trigger |
|-----------|---------|
| `IAfterQuoteIsCreatedArgs` | After quote is created |
| `IAfterTabChangedArgs` | After quote tab is changed |
| `IAfterCustomerChangedArgs` | After customer is changed |
| `IOnQuoteEditedArgs` | When quote is edited |

## Quote Table Row Events

| Interface | Trigger |
|-----------|---------|
| `IBeforeAddRowArgs` | Before a row is added to a quote table |
| `IBeforeDeleteRowArgs` | Before a row is deleted from a quote table |
| `IRowAddedArgs` | After a row is added to a quote table |
| `IRowCopiedArgs` | After a row is copied in a quote table |
| `IRowDeletedArgs` | After a row is deleted from a quote table |
| `ICellChangedArgs` | After a quote table cell value changes |

## Field & Configuration Change Events

| Interface | Trigger |
|-----------|---------|
| `IOnCustomFieldChangedArgs` | After a custom field value changes |
| `IOnCurrencyChangedArgs` | After currency is changed |
| `IOnEffectiveDateChangedArgs` | After effective date is changed |
| `IOnPricebookChangedArgs` | After pricebook is changed |
| `IOnSalesAreaChangedArgs` | After sales area is changed |

## Trade & Logistics Events

| Interface | Trigger |
|-----------|---------|
| `IOnIncotermsChangedArgs` | After incoterms are changed |
| `IOnIncotermsLocationChangedArgs` | After incoterms location is changed |
| `IOnShippingConditionChangedArgs` | After shipping condition is changed |
| `IOnMarketChangedArgs` | After market is changed |
| `IOnOnPaymentTermsChangedArgs` | After payment terms are changed |

## Calculation & Action Events

| Interface | Trigger |
|-----------|---------|
| `ICustomMathScriptArgs` | Custom math script execution |
| `IDistributionMathScriptArgs` | Distribution math script execution |
| `ISectionTotalsScriptArgs` | Section totals script execution |
| `ICustomActionEventArgs` | Custom quote action execution |
| `IOnDocumentSentToCustomerArgs` | After document is sent to customer/business partner |
