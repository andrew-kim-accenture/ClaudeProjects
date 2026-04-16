# IQuoteItem

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/d2a333ee-f2f7-d14b-aa88-bc241a77ae67.htm

## Overview

Represents abstract class which exposes common interface for main and line items.

## Properties

| Name | Type | Description |
|------|------|-------------|
| AsLineItem | ILineItem | Converts item to line item format |
| AsMainItem | IMainItem | Converts item to main item format |
| BaseListPrice | Decimal | Gets base list price |
| BaseListPriceInMarket | Decimal | Gets base list price for selected market |
| BaseQuantity | Decimal | Gets base quantity value |
| CanBeMoved | Boolean | Determines moveability |
| CategoryId | Int32 | Gets category ID |
| CategoryName | String | Gets category name |
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
| DiscountPercent | Decimal | Gets or sets discount percentage |
| ExtendedAmount | Decimal | Gets extended amount |
| ExtendedCost | Decimal | Gets extended cost |
| Inventory | (not specified) | Gets stock information |
| IsMainItem | Boolean | Gets whether item is a main item |
| IsLineItem | Boolean | Gets whether item is a line item |
| ListPrice | Decimal | Gets or sets list price |
| MarginAmount | Decimal | Gets or sets margin amount |
| MarginPercent | Decimal | Gets or sets margin percentage |
| MrcExtendedCost | Decimal | Gets monthly recurring extended cost |
| MrcListPrice | Decimal | Gets monthly recurring list price |
| NetPrice | Decimal | Gets or sets net price |
| ParentItem | IMainItem | Gets parent item |
| ParentRolledUpQuoteItem | IQuoteItem | Gets parent rolled up quote item |
| PartNumber | String | Gets part number |
| ProductId | Int32 | Gets product ID |
| ProductName | String | Gets product name |
| Quantity | Decimal | Gets or sets quantity |
| Multiplier | Decimal | Gets or sets multiplier |
| SelectedAttributes | IQuoteItemAttributeCollection | Gets selected attributes |
| UniqueIdentifier | String | Gets unique identifier |

## Methods

### ChangeItemType()
- **Returns:** void
- **Description:** Modifies the item type classification.

### GetKeyAttribute(String attributeSystemId)
- **Returns:** IKeyAttribute
- **Description:** Gets the key attribute by attribute system id.

### GetKeyAttributeByAttributeName(String attributeName)
- **Returns:** IKeyAttribute
- **Description:** Retrieves attribute using name identifier.

### GetKeyAttributeByLabel(String label)
- **Returns:** IKeyAttribute
- **Description:** Locates attribute via display label.

### IsFieldEditable(String columnName)
- **Returns:** Boolean
- **Description:** Verifies column editability status.

### IsFieldModified(String columnName)
- **Returns:** Boolean
- **Description:** Determines if field has changed.

### MoveDown()
- **Returns:** void
- **Description:** Repositions item downward in list.

### MoveUp()
- **Returns:** void
- **Description:** Repositions item upward in list.

### Reconfigure()
- **Returns:** void
- **Description:** Reapplies configuration settings.

## Code Examples

```python
# Access main item property
item = Quote.GetItemByUniqueIdentifier("293f526d-37ad-4c7b-af66-182a7d3f3f0d")
Quote.GetCustomField("Custom Field 1").Content = item.AsMainItem.MrcRolledUpExtendedCostInMarket

# Access line item property
item = Quote.GetItemByUniqueIdentifier("293f526d-37ad-4c7b-af66-182a7d3f3f0d")
Quote.GetCustomField("Custom Field 2").Content = item.AsLineItem.AttributeNameTranslated
```
