# IQuoteOrderStatus

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/4f8269d2-4d24-efc5-cbb3-bbab971daa53.htm

## Overview

Represents quote order status information within SAP CPQ scripting.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Id | Int32 | Gets the id |
| Name | String | Gets the name |
| NameTranslated | String | Gets the translated quote order status name |

## Code Examples

```python
if Quote.OrderStatus is not None:
    if Quote.OrderStatus.NameTranslated == "Waiting for Approval":
        Quote.ChangeQuoteStatus("Approved")
```
