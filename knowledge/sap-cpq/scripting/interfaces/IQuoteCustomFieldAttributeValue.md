# IQuoteCustomFieldAttributeValue

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/70d3a838-0ecb-75e1-dd64-5f38f80e121c.htm

## Overview

Quote Custom Field Attribute Value.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Allowed | Boolean | Gets or sets attribute value allowed |
| DisplayValue | String | Gets the attribute value display value |
| SystemId | String | Gets the attribute value system id |
| ValueCode | String | Gets the attribute value code |

## Code Examples

```python
# Disallow a custom field attribute value
customField = Quote.GetCustomField("CD or DVD drive")
for value in customField.AttributeValues:
    if value.DisplayValue == "Combo DVD/CD-R 12/52/16/52":
        value.Allowed = False

# Set custom field attribute value code as custom field content
customField = Quote.GetCustomField("CD or DVD drive")
for value in customField.AttributeValues:
    if value.DisplayValue == "Combo DVD/CD-R 12/52/16/52":
        Quote.GetCustomField("Custom Field 1").Content = value.ValueCode
```
