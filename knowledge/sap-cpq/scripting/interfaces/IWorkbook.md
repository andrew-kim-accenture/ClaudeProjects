# IWorkbook

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/ef0e62e8-05fd-a6b7-46eb-b72373dd33bf.htm

## Overview

Excel workbook of the file loaded in the product configurator.

## Methods

### GetSheet(String name)
- **Returns:** IWorkbookSheet
- **Description:** Gets the Excel worksheet by name.

## Code Examples

```python
# Get range of cells
cells = Workbook.GetSheet("Sheet1").Cells.GetRange("B2", "B3")
# cells[0,0] has value of B2 cell
# cells[0,1] has value of B3 cell

# Get single cell value
cell = Workbook.GetSheet("Sheet1").Cells.GetValue("B2")
```
