# IQuoteItemContainerRowCollection

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/ea258368-d245-eb9c-8815-82f93b882179.htm

## Overview

Represents collection of rows of quote item's container attribute. Implements `IEnumerable<IQuoteItemContainerRow>` and `IEnumerable`.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Count | Int32 | Gets the container rows count |
| Item | IQuoteItemContainerRow | Gets IQuoteItemContainerRow by specified index |

## Methods

### Contains(IQuoteItemContainerRow item)
- **Returns:** Boolean
- **Description:** Determines whether the collection contains the specified item.

### GetByColumnName(String columnName)
- **Returns:** IQuoteItemContainerRow
- **Description:** Gets the matched row or None if not found.

### GetEnumerator()
- **Returns:** IEnumerator\<IQuoteItemContainerRow\>
- **Description:** Returns an enumerator that iterates through the collection.

### IndexOf(IQuoteItemContainerRow item)
- **Returns:** Int32
- **Description:** Gets the index of container row.
