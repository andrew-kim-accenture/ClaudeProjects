# IProductTabChangedArgument

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/9f31e61c-9365-05a0-7770-b71cefb83f08.htm

## Overview

Product tab change argument is passed when the product tab change event occurs.

## Properties

| Name | Type | Description |
|------|------|-------------|
| NameOfCurrentTab | String | Gets the name of the current tab |
| NameOfPreviousTab | String | Gets the name of the previous tab |

## Code Examples

```python
if arg.NameOfCurrentTab == 'Second tab':
    Product.Attributes.GetByName("Message").AssignValue("You have changed tab from " + arg.NameOfPreviousTab + " to " + arg.NameOfCurrentTab)
```
