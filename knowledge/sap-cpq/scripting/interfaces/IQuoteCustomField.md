# IQuoteCustomField

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/f2f30dff-3558-6a60-85e2-3cd2e8d72ecc.htm

## Overview

Quote Custom Field interface for managing custom fields within SAP CPQ quotes.

## Properties

| Name | Type | Description |
|------|------|-------------|
| AttributeValues | IQuoteCustomFieldAttributeValueCollection | Gets attribute values associated with the custom field |
| CalculationFormula | String | Gets or sets the formula used for calculations |
| Content | String | Gets or sets the custom field's content |
| Editable | Boolean | Gets or sets whether the field can be edited |
| FreeFormCharacterLimit | Int32 | Gets the character limit for free form custom fields |
| Id | Int32 | Gets the unique identifier |
| Label | String | Gets or sets the display label |
| Rank | Int32 | Gets or sets the display order |
| Required | Boolean | Gets or sets whether the field is mandatory |
| StrongName | String | Gets the custom field's strong name |
| Type | String | Gets the custom field type ("Free Form", "Attribute", "Date", "Long Text") |
| Visible | Boolean | Gets or sets field visibility |

## Code Examples

```python
# Setting content
Quote.GetCustomField("Custom Field 1").Content = "new content"

# Getting content
if Quote.GetCustomField("Custom Field 1") is not None:
    cf = Quote.GetCustomField("Custom Field 1").Content

# Setting visibility
Quote.GetCustomField("Custom Field 2").Visible = False

# Setting label
if Quote.GetItemByQuoteItem(1) is not None:
    Quote.GetCustomField("Custom Field 3").Label = Quote.GetItemByQuoteItem(3).AsLineItem.AttributeName
```
