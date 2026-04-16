# IShipping

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/859d8b85-6035-164e-e096-f0e4f947efdc.htm

## Overview

Represents shipping configuration and properties within SAP CPQ scripting context.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Editable | Boolean | Gets a value indicating whether shipping is editable |
| Selected | Boolean | Gets a value indicating whether shipping is selected |
| ShippingId | Int32 | Gets the shipping id |
| ShippingName | String | Gets the shipping name |
| StaticCostFormula | String | Gets the static cost formula |

## Code Examples

```python
# Assign selected shipping name to custom field
if Quote.SelectedShipping is not None:
    Quote.GetCustomField("Custom Field 1").Content = Quote.SelectedShipping.ShippingName

# Set total shipping cost
if Quote.IsShippingLoadedForAllItems and item.IsMainItem and (Quote.SelectedShipping is not None) and \
(Quote.SelectedShipping.Editable is False):
    Quote.Total.ShippingCost += item.AsMainItem.ShippingCost * item.AsMainItem.Quantity
```
