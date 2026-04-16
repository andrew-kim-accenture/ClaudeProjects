# IWorkbookCells

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/dd60d598-760e-62a4-c66d-430e91696786.htm

## Overview

Cells object of current Excel worksheet.

## Properties

| Name | Type | Description |
|------|------|-------------|
| GetColumnCount | Int32 | Gets number of columns from current worksheet |
| GetLastColumnPosition | Int32 | Gets last column position from current worksheet |
| GetRowCount | Int32 | Gets number of rows from current worksheet |

## Methods

### GetRange(String startCell, String endCell)
- **Returns:** Object[,]
- **Description:** Gets range of cells from current worksheet (all cells in between the starting and the ending cell).

### GetValue(String cell)
- **Returns:** Object
- **Description:** Gets a value of a single cell.
