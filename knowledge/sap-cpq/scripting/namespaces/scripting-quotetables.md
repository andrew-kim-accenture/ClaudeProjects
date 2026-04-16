# Scripting.QuoteTables Namespace

**Source:** `https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/e48e3d5c-9e53-44bc-e0ba-c22f2ff6f55b.htm`
**Version:** 2603

## Overview

Interfaces and enumerations for managing custom quote tables in CPQ scripting.

## Interfaces

| Interface | Description |
|-----------|-------------|
| `IQuoteTable` | Custom quote table |
| `IQuoteTableCell` | Quote table cell |
| `IQuoteTableCellBase` | Base implementation for quote table cells |
| `IQuoteTableCellCollection` | Cells on a row |
| `IQuoteTableCellCollectionBase` | Base implementation for cell collections |
| `IQuoteTableCollection` | Collection of quote tables |
| `IQuoteTableColumn` | Quote table column |
| `IQuoteTableColumnBase` | Base column implementation |
| `IQuoteTableColumnValidation` | Quote table column validation |
| `IQuoteTableColumnValidationBase` | Base validation implementation |
| `IQuoteTableColumnValidationCollection` | Collection of column validations |
| `IQuoteTableColumnValidationCollectionBase` | Base validation collection |
| `IQuoteTableRow` | Quote table row |
| `IQuoteTableRowBase` | Base row implementation |
| `IQuoteTableRowCollection` | Collection of quote table rows |
| `IQuoteTableRowCollectionBase` | Base row collection implementation |

## Enumerations

| Enumeration | Values |
|-------------|--------|
| `AccessLevel` | Access level options |
| `ColumnDataType` | `String`, `Number`, `Money` (text box), `Boolean` (checkbox), `Attribute` (dropdown) |
| `ValidationType` | Validation type options |

## Important Usage Note

**Do not iterate over a cloned collection when calling `AddToQuote`.** Calling `IProduct.AddToQuote()` clones the QuoteTables, creating new instances. Use indexed access with re-fetching from the parent collection instead:

```python
# CORRECT approach
for x in range(Quote.QuoteTables["TestAddToQuote"].Rows.Count):
    row = Quote.QuoteTables["TestAddToQuote"].Rows[x]
    if not row["Selection"]:
        continue
    ProductHelper.CreateProduct(row["ProductSystemId"]).AddToQuote(1)
    Quote.QuoteTables["TestAddToQuote"].Rows[x]["Selection"] = False

Quote.QuoteTables["TestAddToQuote"].Save()
```
