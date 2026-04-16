# ISqlHelperInfo

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/8e73043b-c7e4-f60e-d7fc-e27da334a4d7.htm

## Overview

Provides result info for SqlHelper methods.

## Properties

| Name | Type | Description |
|------|------|-------------|
| FailedRow | Int32 | Index of the row that failed |
| Message | String | Informative message explaining what caused an error if success is false |
| Results | List | Resulting rows that were manipulated in the table |
| Success | Boolean | Indicates if SqlHelper call was successful |

## Code Examples

```python
sqlInfo = SqlHelper.Upsert(tableInfoData, tableName)
```
