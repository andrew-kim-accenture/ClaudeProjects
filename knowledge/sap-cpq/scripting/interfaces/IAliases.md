# IAliases

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/3314073f-472a-29f4-634f-7ad1cd5f0a78.htm

## Overview

Provides alias functions for managing product attributes in SAP CPQ scripting contexts. Shortcut methods that delegate to `Product.Attributes`.

## Methods

| Method | Description |
|--------|-------------|
| AllowAttr(String attributeName) | Allows attribute. Same as `Product.Attributes.GetByName(attributeName).Allowed = true` |
| AllowAttrValues(...) | Allows attribute values |
| Attr(String attributeName) | Gets the attribute in current product by attribute name. Same as `Product.Attributes.GetByName(attributeName)` |
| AttrValue(String attributeName, String valueCode) | Retrieves attribute value by name and code |
| DeselectAttrValues(...) | Deselects attribute values |
| DisallowAttr(String attributeName) | Disallows the attribute. Same as `Product.Attributes.GetByName(attributeName).Allowed = false` |
| DisallowAttrValues(...) | Disallows attribute values. Note that disallow also deselects attribute value |
| ResetAttr(String attributeName) | Resets the attribute |
| SelectAttrValues(...) | Selects attribute values |
| SetOptional(String attributeName) | Sets attribute as optional. Same as `Product.Attributes.GetByName(attributeName).Required = false` |
| SetQty(String attributeName, Decimal qty) | Sets attribute quantity. Same as `Product.Attributes.GetByName(attributeName).Quantity = qty` |
| SetRequired(String attributeName) | Sets attribute as required. Same as `Product.Attributes.GetByName(attributeName).Required = true` |
