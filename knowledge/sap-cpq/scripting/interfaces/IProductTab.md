# IProductTab

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/e6326979-68ce-a0db-2fc7-e271ef3e0362.htm

## Overview

Represents product tab information within SAP CPQ scripting.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Attributes | IProductAttributeCollection | Gets a list of product attributes placed on the product tab |
| Id | Int32 | Gets product tab id |
| IsComplete | Boolean | Gets a value indicating whether the product tab is completed |
| IsSelected | Boolean | Gets a value indicating whether the product tab header is selected |
| Name | String | Gets product tab name |
| Rank | Int32 | Gets or sets product tab rank |
| ShowHeader | Boolean | Gets or sets a value indicating whether the product tab header is shown in the configurator |
| Visible | Boolean | Gets a value indicating whether this IProductTab is visible |

## Methods

### GetAttributeRank(String standardAttributeCode)
- **Returns:** Int32
- **Description:** Gets the rank of the attribute with the standardAttributeCode.

### SetAttributeRank(String stdAttributeCode, Int32 rank)
- **Returns:** void
- **Description:** Sets the rank of the attribute with the stdAttributeCode.
