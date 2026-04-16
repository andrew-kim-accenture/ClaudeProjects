# IAdditionalDiscount

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/687c0ba7-a072-e3b1-675a-18f58d58069e.htm

## Overview

Represents additional discounts applicable to quotes, allowing users to programmatically add, modify, and remove discounts.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Description | String | Gets or sets the description |
| DiscountAmount | Decimal | Gets or sets the discount amount |
| DiscountPercent | Decimal | Gets or sets the discount percent |

## Code Examples

```python
# Creating and adding an additional discount
ad = Quote.NewAdditionalDiscount()
ad.DiscountPercent = 10
ad.Description = "New discount added via scripting"
Quote.AddAdditionalDiscount(ad)

# Modifying an existing discount
ad = Quote.GetAdditionalDiscount("New discount added via scripting")
ad.DiscountPercent = 5

# Removing a discount
Quote.RemoveAdditionalDiscount("New discount added via scripting")
```
