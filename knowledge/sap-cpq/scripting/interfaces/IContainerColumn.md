# IContainerColumn

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/699292ca-ddb8-f316-1808-828021ce61d7.htm

## Overview

Represents a column in a product container.

## Properties

| Name | Type | Description |
|------|------|-------------|
| CalculationFormula | String | Gets or sets the calculation formula |
| CalculationRank | Int32 | Gets or sets the calculation rank |
| DataType | String | Gets or sets the data type |
| DecimalPlaces | Int32 | Gets or sets the decimal places |
| DisplayType | String | Gets or sets the display type |
| DisplayValue | String | Gets the display value (used when column references attributes: checkbox, radio, selectlist) |
| FooterLabel | String | Gets or sets the footer label |
| HeaderLabel | String | Gets or sets the header label |
| Height | Int32 | Gets or sets the height |
| IsProductAttribute | Boolean | Gets a value indicating whether column is a product attribute |
| IsProductPartNumber | Boolean | Gets a value indicating whether column is a product part number |
| Name | String | Gets or sets the name |
| Rank | Int32 | Gets or sets the rank |
| ReferencingAttribute | IProductAttribute | Gets the referencing attribute |
| TotalCalculationFormula | String | Gets or sets the total calculation formula |
| TotalType | String | Gets or sets the total type |
| Value | Object | Gets or sets the value |
| Width | Int32 | Gets or sets the width |

## Methods

### SetAttributeValue(String valueCode)
- **Returns:** void
- **Description:** Sets display value for attribute columns; supports multiple values.
