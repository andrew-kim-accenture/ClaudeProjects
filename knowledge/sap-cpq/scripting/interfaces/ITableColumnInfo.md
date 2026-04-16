# ITableColumnInfo

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/19cdc857-8109-0fe9-2ba7-56f560bab1a3.htm

## Overview

Provides description of a table column including name, type, size and if it can be null.

## Properties

| Name | Type | Description |
|------|------|-------------|
| ColumnName | String | Gets the column name |
| ColumnSize | Int32 | Gets column size — applicable if NVARCHAR or DECIMAL |
| ColumnType | String | Gets column type — NVARCHAR, INT, DECIMAL, BIT |
| IsNullable | Boolean | Gets whether column can have null values |
