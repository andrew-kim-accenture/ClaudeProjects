# IContainerRow

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/628e8768-5646-b61b-d975-2c9372be34e3.htm

## Overview

Represents a row in a product container.

## Properties

| Name | Type | Description |
|------|------|-------------|
| BomPosition | (not specified) | Gets or sets the external BomPosition |
| Columns | IContainerColumnCollection | Gets the columns of container row |
| CrmId | String | Gets or sets the CRM id |
| IsSalesRelevant | Boolean | Gets or sets whether the row is Sales Relevant |
| IsSelected | Boolean | Gets or sets value indicating if container row is selected. If container attribute is set to execute rules once, product rules will be executed |
| Item | Object | Gets or sets the value with the specified column name |
| ParentContainer | IContainer | Gets parent container |
| Product | IProduct | Gets product |
| RowIndex | Int32 | Gets or sets container row index |
| UniqueIdentifier | String | Gets or sets unique identifier |

## Methods

### ApplyProductChanges()
- **Returns:** void
- **Description:** Applies the changes of the product configuration on the container row level.

### Calculate()
- **Returns:** void
- **Description:** Calculates the container row.

### GetColumnByName(String name)
- **Returns:** IContainerColumn
- **Description:** Gets the container column by its name.

### SetColumnValue(String columnName, IEnumerable\<String\> values)
- **Returns:** void
- **Description:** Sets the attribute value of container column.

### SetColumnValue(String columnName, String value)
- **Returns:** void
- **Description:** Sets the value of container column.
