# IQuoteItemCustomField

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/5101f462-13ae-b593-925f-8755d5033ebc.htm

## Overview

Quote item custom fields are additional quote columns that can store values of different types (number, currency, date or text).

## Properties

| Name | Type | Description |
|------|------|-------------|
| FieldCalculatedValue | Decimal/DateTime/String | Gets the field calculated value |
| Value | Object | Gets or sets value for quote item custom field |
| ValueCode | String | Gets value code for quote item custom field which is an autocomplete attribute |

## Code Examples

```python
Quote.GetItemByUniqueIdentifier("4dbc4075-67a3-43ab-b121-9792f0abc18b")["textfield"].Value = "some text"
Quote.GetItemByUniqueIdentifier("4dbc4075-67a3-43ab-b121-9792f0abc18b")["numberfield"].Value = 123
```
