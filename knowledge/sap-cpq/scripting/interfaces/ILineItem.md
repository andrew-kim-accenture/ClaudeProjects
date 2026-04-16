# ILineItem

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/6c94f1e9-9e2d-d9df-cb5a-ce736feb7ebd.htm

## Overview

Represents a line item in SAP CPQ scripting. Inherits from `IQuoteItem`. Line items are child elements of main items within quote structures.

## Properties

### Line Item-Specific Properties

| Name | Type | Description |
|------|------|-------------|
| MainItem | IMainItem | Retrieves the parent main item containing this line item |
| AttributeName | String | Obtains the attribute's name |
| AttributeNameTranslated | String | Retrieves the translated attribute name |

(Plus all properties inherited from IQuoteItem — see IQuoteItem for the full list.)

## Methods

(All inherited from IQuoteItem)

### GetKeyAttribute(String attributeSystemId)
- **Returns:** IKeyAttribute
- **Description:** Retrieves key attribute using system identifier.

### GetKeyAttributeByAttributeName(String attributeName)
- **Returns:** IKeyAttribute
- **Description:** Locates key attribute via attribute name.

### GetKeyAttributeByLabel(String label)
- **Returns:** IKeyAttribute
- **Description:** Finds key attribute by its display label.

### ChangeItemType(...)
- **Returns:** void
- **Description:** Alters item classification.

### IsFieldEditable(String columnName)
- **Returns:** Boolean
- **Description:** Validates column editability.

### IsFieldModified(String columnName)
- **Returns:** Boolean
- **Description:** Confirms column modification status.

### MoveUp()
- **Returns:** void
- **Description:** Repositions item upward in sequence.

### MoveDown()
- **Returns:** void
- **Description:** Repositions item downward in sequence.

### Reconfigure(...)
- **Returns:** void
- **Description:** Reinitializes item configuration.

## Code Examples

```python
# Access key attribute by system ID
for mainItem in Quote.MainItems:
    if mainItem.ProductName == "Laptop":
        for lineItem in mainItem.LineItems:
           if lineItem.ProductName == "Laptop bag":
               Quote.GetCustomField("Custom Field 1").Content = \
                   lineItem.GetKeyAttribute("laptop_bag_cpq").Label

# Access key attribute by name
for mainItem in Quote.MainItems:
    if mainItem.ProductName == "Laptop":
        for lineItem in mainItem.LineItems:
           if lineItem.ProductName == "Laptop bag":
               Quote.GetCustomField("Custom Field 2").Content = \
                   lineItem.GetKeyAttributeByAttributeName("Laptop Bag").Label

# Access key attribute by label
for mainItem in Quote.MainItems:
    if mainItem.ProductName == "Laptop":
        for lineItem in mainItem.LineItems:
           if lineItem.ProductName == "Laptop bag":
               Quote.GetCustomField("Custom Field 3").Content = \
                   lineItem.GetKeyAttributeByLabel("Laptop Bag").ParsedValue

# Using AsLineItem conversion
item = Quote.GetItemByQuoteItem("2.1")
Quote.GetCustomField("Custom Field 4").Content = \
    item.AsLineItem.GetKeyAttributeByLabel("Memory").Label
```
