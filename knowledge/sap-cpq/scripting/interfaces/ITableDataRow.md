# ITableDataRow

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/bac4ee56-5d5e-21bb-412a-3de709c0c5e8.htm

## Overview

Data in a row that will be used to insert, update or delete a row in custom table.

## Properties

| Name | Type | Description |
|------|------|-------------|
| CpqTableEntryId | Int32 | Gets or sets row id. If 0 indicates new row. |
| Values | IDictionary | Gets data values as column name/column value pairs |

## Methods

### AddValue(String columnName, String value)
- **Returns:** void
- **Description:** Adds column value. Column value is always a string regardless of data type in db. It will be converted to right db value upon insert/update.
