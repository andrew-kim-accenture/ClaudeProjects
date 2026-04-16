# IContainerRowCollection

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/763e7097-9ad2-d7b5-0167-4237c060ff6e.htm

## Overview

Container row collection. Implements `IEnumerable<IContainerRow>` and `IEnumerable`.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Count | Int32 | Gets the container rows count |
| Item | IContainerRow | Gets the container row by the specified index |

## Methods

### Clear()
- **Returns:** void
- **Description:** Clears all container rows.

### Contains(IContainerRow row)
- **Returns:** Boolean
- **Description:** Checks whether the collection contains the specified row.

### GetByColumnName(String columnName, String value)
- **Returns:** IContainerRow
- **Description:** Gets the matched row or None if not found.

### GetEnumerator()
- **Returns:** IEnumerator\<IContainerRow\>
- **Description:** Returns an enumerator that iterates through the collection.

### IndexOf(IContainerRow row)
- **Returns:** Int32
- **Description:** Gets the index of container row.
