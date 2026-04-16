# ITableInfo

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/4968e50f-3ab9-2c19-9f03-036372e5b483.htm

## Overview

Defines table metadata including name, columns, and configuration for database operations. Used to specify table structure for creation, upsert, and delete operations.

## Properties

| Name | Type | Description |
|------|------|-------------|
| BatchSize | Int32 | Gets or sets batch size (default 1000) that specifies how many rows can be manipulated |
| HiddenTable | Boolean | Gets or sets visibility of custom table in listing |
| IsNew | Boolean | Gets or sets whether this represents a new or existing table |
| LevelOfAudit | Int32 | Gets or sets audit trail configuration: 0 (none), 1 (row-level), 2 (field-level) |
| TableColumns | IList\<ITableColumnInfo\> | Gets collection of column definitions and metadata |
| TableDataRows | IList\<ITableDataRow\> | Gets rows designated for upsert or delete operations |
| TableName | String | Gets or sets the table's identifier |

## Methods

### AddColumn(String columnName, String dataType, Int32 size, Boolean isPrimaryKey)
- **Returns:** void
- **Description:** Adds new column. Used if creating new table to specify definition.

### AddRow(IDictionary\<String, Object\> row)
- **Returns:** void
- **Description:** Adds data row to collection.

### AddRow(ITableDataRow row)
- **Returns:** void
- **Description:** Adds row object to collection.

### NewBatch()
- **Returns:** void
- **Description:** Clears row collection after batch processing (max 1000 rows).

## Code Examples

```python
tableInfo = SqlHelper.GetTable('TestTable')
tableInfo.AddColumn('Weight', 'NVARCHAR', 250, True)
tableInfo.AddColumn('Price', 'NVARCHAR', 250, True)
tableInfo.AddColumn('Unit', 'NVARCHAR', 250, True)
tableInfo.IsNew = True
SqlHelper.CreateTable(tableInfo)
```
