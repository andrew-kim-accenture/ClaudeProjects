# IProductTypeItem

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/6870e946-3134-171b-687b-5d3cd8eb658d.htm

## Overview

Represents a product type quote item in SAP CPQ scripting.

## Properties

| Name | Type | Description |
|------|------|-------------|
| AddToCrm | Boolean | Gets or sets product type add to CRM |
| ChannelCommissionAmount | Decimal | Gets or sets channel commission amount |
| ChannelCommissionAmountInMarket | Decimal | Gets channel commission for selected market |
| ChannelCommissionPercent | Decimal | Gets or sets channel commission percent |
| ChannelCost | Decimal | Gets or sets channel cost |
| ChannelCostInMarket | Decimal | Gets channel cost for selected market |
| ChannelMarginAmount | Decimal | Gets or sets channel margin amount |
| ChannelMarginAmountInMarket | Decimal | Gets channel margin for selected market |
| ChannelMarginPercent | Decimal | Gets or sets channel margin percent |
| ChannelMarkupAmount | Decimal | Gets or sets channel markup amount |
| ChannelMarkupAmountInMarket | Decimal | Gets channel markup for selected market |
| ChannelMarkupPercent | Decimal | Gets or sets channel markup percent |
| Cost | Decimal | Gets or sets cost |
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
| DefaultDiscountPercent | Decimal | Gets or sets default discount percent |
| DefaultMrcDiscountPercent | Decimal | Gets or sets default monthly recurring discount percent |
| DefaultMrcMultiplier | Decimal | Gets or sets default monthly recurring multiplier |
| DefaultMultiplier | Decimal | Gets or sets default multiplier |
| DiscountAmount | Decimal | Gets or sets discount amount |
| DiscountAmountInMarket | Decimal | Gets discount for selected market |
| DiscountPercent | Decimal | Gets or sets discount percentage |
| EndUserSubtotal | Decimal | Gets or sets end user subtotal |
| EndUserSubtotalInMarket | Decimal | Gets end user subtotal for selected market |
| Item | Decimal | Gets total for quote item custom field for current product type |
| ListSubtotal | Decimal | Gets or sets list subtotal |
| ListSubtotalInMarket | Decimal | Gets list subtotal for selected market |
| MarginAmount | Decimal | Gets or sets margin amount |
| MarginAmountInMarket | Decimal | Gets margin for selected market |
| MarginPercent | Decimal | Gets or sets margin percentage |
| MaxDiscountPercent | Decimal | Gets or sets maximum discount percent |
| MaxMrcDiscountPercent | Decimal | Gets or sets maximum monthly recurring discount percent |
| MaxMrcMultiplier | Decimal | Gets or sets maximum monthly recurring multiplier |
| MaxMultiplier | Decimal | Gets or sets maximum multiplier |
| MinDiscountPercent | Decimal | Gets or sets minimum discount percent |
| MinMrcDiscountPercent | Decimal | Gets or sets minimum monthly recurring discount percent |
| MinMrcMultiplier | Decimal | Gets or sets minimum monthly recurring multiplier |
| MinMultiplier | Decimal | Gets or sets minimum multiplier |
| MrcChannelMarginPercent | Decimal | Gets or sets monthly recurring channel margin percent |
| MrcChannelMarkupAmount | Decimal | Gets or sets monthly recurring channel markup amount |
| MrcChannelMarkupAmountInMarket | Decimal | Gets monthly recurring channel markup for selected market |
| MrcChannelMarkupPercent | Decimal | Gets or sets monthly recurring channel markup percent |
| MrcCost | Decimal | Gets or sets monthly recurring cost |
| MrcCostInMarket | Decimal | Gets monthly recurring cost for selected market |
| MrcDiscountAmount | Decimal | Gets or sets monthly recurring discount amount |
| MrcDiscountAmountInMarket | Decimal | Gets monthly recurring discount for selected market |
| MrcDiscountPercent | Decimal | Gets or sets monthly recurring discount percent |
| MrcEndUserSubtotal | Decimal | Gets or sets monthly recurring end user subtotal |
| MrcEndUserSubtotalInMarket | Decimal | Gets monthly recurring end user subtotal for selected market |
| MrcListSubtotal | Decimal | Gets or sets monthly recurring list subtotal |
| MrcListSubtotalInMarket | Decimal | Gets monthly recurring list subtotal for selected market |
| MrcMarginAmount | Decimal | Gets or sets monthly recurring margin amount |
| MrcMarginAmountInMarket | Decimal | Gets monthly recurring margin amount for selected market |
| MrcMarginPercent | Decimal | Gets or sets monthly recurring margin percent |
| MrcMultiplier | Decimal | Gets or sets monthly recurring multiplier |
| MrcMultiplierAmount | Decimal | Gets or sets monthly recurring multiplier amount |
| MrcMultiplierAmountInMarket | Decimal | Gets monthly recurring multiplier amount for selected market |
| MrcSubtotal | Decimal | Gets or sets monthly recurring subtotal |
| MrcSubtotalInMarket | Decimal | Gets monthly recurring subtotal for selected market |
| Multiplier | Decimal | Gets or sets multiplier |
| MultiplierAmount | Decimal | Gets or sets multiplier amount |
| MultiplierAmountInMarket | Decimal | Gets multiplier amount for selected market |
| ProductModelSubtotal | Decimal | Gets or sets product model subtotal |
| ProductTypeId | Int32 | Gets or sets product type ID |
| ProductTypeName | String | Gets or sets product type name |
| ProductTypeNameTranslated | String | Gets or sets product type name translated |
| ProductTypeRank | Int32 | Gets or sets product type rank |
| ProductTypeSystemId | String | Gets or sets product type system ID |
| PromoDiscountAmount | Decimal | Gets or sets promo discount amount |
| PromoDiscountPercent | Decimal | Gets or sets promo discount percent |
| Subtotal | Decimal | Gets or sets subtotal |
| SubtotalInMarket | Decimal | Gets subtotal for selected market |
| UserCommissionAmount | Decimal | Gets or sets user commission amount |
| UserCommissionAmountInMarket | Decimal | Gets user commission for selected market |
| UserCommissionPercent | Decimal | Gets or sets user commission percent |

## Methods

### IsFieldEditable(String columnName)
- **Returns:** Boolean
- **Description:** Determines whether quote product type item column is editable.

### IsFieldModified(String columnName)
- **Returns:** Boolean
- **Description:** Determines whether quote product type item column is modified.

## Code Examples

```python
for productTypeItem in Quote.ProductTypes:
    if productTypeItem.SubtotalInMarket > 1500:
        productTypeItem.DiscountAmount = 250
    else:
        productTypeItem.DiscountAmount = 50
```
