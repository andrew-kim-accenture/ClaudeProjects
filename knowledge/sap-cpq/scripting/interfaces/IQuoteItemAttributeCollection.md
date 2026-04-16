# IQuoteItemAttributeCollection

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/4b3338e2-a11b-d22a-c7d0-a1fd2cf76ebd.htm

## Overview

Collection of all attributes selected in product referenced in Quote Item. Implements `IEnumerable<IQuoteItemAttribute>` and `IEnumerable`.

## Methods

### GetContainerByName(String name)
- **Returns:** IQuoteItemContainerColumn
- **Description:** Gets the container attribute by name within item's configuration.

### GetEnumerator()
- **Returns:** IEnumerator\<IQuoteItemAttribute\>
- **Description:** Returns an enumerator that iterates through the collection. (Inherited from IEnumerable\<IQuoteItemAttribute\>)
