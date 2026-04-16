# IQuoteTotalCustomField

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/0b581001-c3bf-eb04-aa50-b1c695dee657.htm

## Overview

Total on quote or product type level for quote item custom field.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Count | Int32 | Gets the count value for the current quote item custom field |
| Maximum | Decimal | Gets the maximum value for the current quote item custom field |
| MaximumCV | Decimal | Gets the maximum calculated value for the current quote item custom field |
| Minimum | Decimal | Gets the minimum value for the current quote item custom field |
| MinimumCV | Decimal | Gets the minimum calculated value for the current quote item custom field |
| Summary | Decimal | Gets the summary value for the current quote item custom field |
| SummaryCV | Decimal | Gets the summary calculated value for the current quote item custom field |

## Code Examples

```python
Quote.GetCustomField("Test").Content = str(Quote.Total["mycustomfield"].MaximumCV)

for productTypeItem in Quote.ProductTypes:
    if productTypeItem.ProductTypeName == "Hardware":
        Quote.GetCustomField("Test").Content = str(productTypeItem["mycustomfield"].MaximumCV + 3)
```
