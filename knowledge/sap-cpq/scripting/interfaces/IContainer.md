# IContainer

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/e361d7b6-d54a-6a84-6370-1bdd5944132a.htm

## Overview

Represents a product container (a table-like structure in the configurator).

## Properties

| Name | Type | Description |
|------|------|-------------|
| AddNewOpensConfigurator | Boolean | Gets or sets a value indicating whether new configurator is opened |
| CanAddNewRows | Boolean | Gets or sets a value indicating whether new rows can be added in the container |
| CanCopyRows | Boolean | Gets or sets a value indicating whether rows can be copied |
| CanDeleteRows | Boolean | Gets or sets a value indicating whether container rows can be deleted |
| CanEditRows | Boolean | Gets or sets a value indicating whether container rows can be edited |
| CanReorderRows | Boolean | Gets or sets a value indicating whether container rows can be reordered |
| EnabledPaging | Boolean | Gets or sets a value indicating whether paging is enabled |
| HasSelectedRow | Boolean | Gets a value indicating whether the container has at least one row selected |
| IsValid | Boolean | Gets a value indicating whether container is valid |
| Max | Int32 | Gets or sets the max container rows |
| Min | Int32 | Gets or sets the min container rows |
| Name | String | Gets the container name |
| PageSize | Int32 | Gets or sets the number of rows per container page |
| ParentProduct | IProduct | Gets the parent product of the container |
| PricingCode | String | Gets or sets pricing code |
| Properties | IContainerPropertyCollection | Gets the container properties |
| Rows | IContainerRowCollection | Gets the container rows |
| SelectedRowsIndexes | IEnumerable | Gets the indexes of all selected rows in container |
| TotalRow | IContainerRow | Gets the container total row |

## Methods

### AddNewRow(Boolean calculate)
- **Returns:** void
- **Description:** Adds new empty container row. If calculate is not needed, provide False as input parameter to optimize performance.

### AddNewRow(String systemId, Boolean calculate)
- **Returns:** void
- **Description:** Adds new container row which references product that match provided SystemId.

### Calculate()
- **Returns:** void
- **Description:** Calculates container properties, columns totals and validates container.

### CalculateProperties()
- **Returns:** void
- **Description:** Calculate container properties.

### CalculateTotals()
- **Returns:** void
- **Description:** Calculate container totals.

### ChangeProperty(String propertyName, Object value)
- **Returns:** void
- **Description:** Change the value of property.

### Clear()
- **Returns:** void
- **Description:** Clears container selection.

### CopyRow(Int32 rowIndex)
- **Returns:** void
- **Description:** Copy the container row.

### DeleteRow(Int32 rowIndex)
- **Returns:** void
- **Description:** Delete the container row.

### FindByCrmId(String crmId)
- **Returns:** IContainerRow
- **Description:** Gets the container row by CRM id.

### GetPropertyByName(String name)
- **Returns:** IContainerProperty
- **Description:** Gets the container property by name.

### LoadFromDatabase()
- **Returns:** void
- **Description:** Load container data from database.

### MakeAllRowsSelected()
- **Returns:** void
- **Description:** Select all rows in the container.

### MakeRowSelected(Int32 rowIndex)
- **Returns:** void
- **Description:** Selects the container row.

### MakeRowUnSelected(Int32 rowIndex)
- **Returns:** void
- **Description:** Unselects the container row.

### MoveRowDown(Int32 rowIndex)
- **Returns:** void
- **Description:** Moves row one step down. By default, calculate will be executed.

### MoveRowUp(Int32 rowIndex)
- **Returns:** void
- **Description:** Moves row one step up. By default, calculate will be executed.

### SetPropertyValue(String propertyName, Object value)
- **Returns:** void
- **Description:** Sets the value for the container property.

## Code Examples

```python
container = Product.GetContainerByName("Assets")
for row in container.Rows:
    if row['LicenceKey'] == 'Licence 2':
        container.MoveRowUp(row.RowIndex)
        break
```
