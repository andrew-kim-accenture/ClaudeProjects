# ISqlHelper

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/32d070bc-9b7a-2e2e-27e7-417e618658ab.htm

## Overview

Helper class which allows pulling data from database using SQL select statements.

## Methods

### CreateParameter()
- **Returns:** ISqlParameter
- **Description:** Creates an SqlParameter object.

### CreateTable()
- **Returns:** ITableInfo
- **Description:** Creates a new custom table.

### Delete(ITableInfo tableInfo)
- **Returns:** ISqlHelperInfo
- **Description:** Deletes data in a custom table.

### DeleteTable(String tableName)
- **Returns:** void
- **Description:** Deletes a custom table.

### GetFirst(String query)
- **Returns:** Object
- **Description:** Gets the first element of an SQL query result, or NULL value if result is empty.

### GetFirst(String query, ISqlParameter parameter)
- **Returns:** Object
- **Description:** Gets the first element of an SQL query result with parameter support, or NULL if empty.

### GetList(String query)
- **Returns:** List
- **Description:** Gets the list object based on the provided SQL query.

### GetList(String query, ISqlParameter parameter)
- **Returns:** List
- **Description:** Gets the list object based on the provided SQL query with parameter support.

### GetSingle(String query)
- **Returns:** Object
- **Description:** Gets the only element of result, throws exception if more than one element found.

### GetSingle(String query, ISqlParameter parameter)
- **Returns:** Object
- **Description:** Gets the only element of result with parameter support, throws exception if more than one.

### GetTable(String tableName)
- **Returns:** ITableInfo
- **Description:** Gets the table information.

### Upsert(ITableInfo tableInfo)
- **Returns:** ISqlHelperInfo
- **Description:** Inserts or Updates data in a custom table.

## Code Examples

```python
# Insert/Update
tableInfo = SqlHelper.GetTable("ITEMMASTERFROMNS")
tablerow = { "item_internal_id" : itemInternalId, "item_sku" : sku }
tableInfo.AddRow(tablerow)
upsertResult = SqlHelper.Upsert(tableInfo)

tablerow = { "CpqTableEntryId" : currentQuoteCpqTableEntryId, "OpportunityId" : oppId, "QuoteNumber" : Quote.CompositeNumber, "IsPrimary" : 1 }
tableInfo.AddRow(tablerow)
SqlHelper.Upsert(tableInfo)

# Delete
primaryQueryItems = SqlHelper.GetList("select CpqTableEntryId, OpportunityId, QuoteNumber, ItemGuid, OpportunityProductID from OpportunityQuoteItems where OpportunityId = '{0}' and QuoteNumber={1}".format(oppId, primaryQuoteNumber))
tableInfo = SqlHelper.GetTable("OpportunityQuoteItems")
for primaryItem in primaryQueryItems:
    tableInfo.AddRow(primaryItem)
SqlHelper.Delete(tableInfo)
```
