# IQuoteTotal

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/3aabe132-8692-00b8-5cfb-b18a905289bb.htm

## Overview

Represents quote total functionality in SAP CPQ, providing access to pricing, discounts, taxes, shipping, and related financial calculations for quotes.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Cost | Decimal | Gets or sets the cost |
| CostInMarket | Decimal | Gets cost for selected market |
| CustomColumn1 | Decimal | Gets or sets custom column 1 |
| CustomColumn1InMarket | Decimal | Gets custom column 1 for selected market |
| CustomColumn2 | Decimal | Gets or sets custom column 2 |
| CustomColumn2InMarket | Decimal | Gets custom column 2 for selected market |
| CustomColumn3 | Decimal | Gets or sets custom column 3 |
| CustomColumn3InMarket | Decimal | Gets custom column 3 for selected market |
| CustomColumn4 | Decimal | Gets or sets custom column 4 |
| CustomColumn4InMarket | Decimal | Gets custom column 4 for selected market |
| CustomColumn5 | Decimal | Gets or sets custom column 5 |
| CustomColumn5InMarket | Decimal | Gets custom column 5 for selected market |
| CustomColumn6 | Decimal | Gets or sets custom column 6 |
| CustomColumn6InMarket | Decimal | Gets custom column 6 for selected market |
| MarginAmount | Decimal | Gets or sets the margin amount |
| MarginAmountInMarket | Decimal | Gets margin amount for selected market |
| MarginPercent | Decimal | Gets or sets the margin percent |
| MrcSubtotalAmount | Decimal | Gets or sets the monthly recurring subtotal amount |
| MrcSubtotalAmountInMarket | Decimal | Gets monthly recurring subtotal for selected market |
| MrcTaxAmount | Decimal | Gets or sets the monthly recurring tax amount |
| MrcTotalAmount | Decimal | Gets or sets the monthly recurring total amount |
| MrcTotalAmountInMarket | Decimal | Gets monthly recurring total for selected market |
| MrcVatAmount | Decimal | Gets or sets the monthly recurring vat amount |
| OverallDiscountPercent | Decimal | Gets or sets the overall discount percent |
| QuoteComment | String | Gets or sets the quote comment |
| ShippingCost | Decimal | Gets or sets the shipping cost |
| ShippingCostInMarket | Decimal | Gets shipping cost for selected market |
| SubtotalAmount | Decimal | Gets or sets the subtotal amount |
| SubtotalAmountInMarket | Decimal | Gets subtotal for selected market |
| TaxAmount | Decimal | Gets or sets the tax amount |
| TaxPercent | Decimal | Gets or sets the tax percent |
| TotalAmount | Decimal | Gets or sets the total amount |
| TotalAmountInMarket | Decimal | Gets total for selected market |
| TotalListPrice | Decimal | Gets or sets the total list price |
| TotalListPriceInMarket | Decimal | Gets total list price for selected market |
| VatAmount | Decimal | Gets or sets the vat amount |
| VatPercent | Decimal | Gets or sets the vat percent |

## Methods

### IsFieldEditable(String fieldName)
- **Returns:** Boolean
- **Description:** Determines whether quote total column is editable.

### IsFieldModified(String fieldName)
- **Returns:** Boolean
- **Description:** Determines whether quote total item column is modified.

## Code Examples

```python
# Set shipping cost based on list price
if Quote.Total.TotalListPriceInMarket > 15000:
    Quote.Total.ShippingCost = Quote.Total.TotalListPrice - Quote.Total.Cost

# Set tax percent from state data
if ((Quote.Total.IsFieldEditable("TaxPercent") is False) and
    (Quote.Total.IsFieldEditable("TaxAmount") is False)):
    taxPercent = 0.0
    if Quote.ShipToCustomer is not None and len(Quote.ShipToCustomer.StateAbbreviation) > 0:
        taxPercent = SqlHelper.GetFirst(
            "select SALES_TAX_RATE from STATE_TAX where STATE_SHORT_NAME='" +
            Quote.ShipToCustomer.StateAbbreviation + "'")
    Quote.Total.TaxPercent = taxPercent

# Set total amount with tax inclusion
result += Quote.Total.ShippingCost
if Quote.IncludeTaxInTotalPrice:
    result += Quote.Total.TaxAmount
    result += Quote.Total.VatAmount
Quote.Total.TotalAmount = result

# Set monthly recurring total
Quote.Total.MrcTotalAmount = (Quote.Total.MrcSubtotalAmount +
                               Quote.Total.MrcVatAmount +
                               Quote.Total.MrcTaxAmount)
```
