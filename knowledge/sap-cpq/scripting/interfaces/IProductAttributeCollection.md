# IProductAttributeCollection

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/64921a0b-5a13-2c43-3033-abfd80a15759.htm

## Overview

Product attribute collection. Implements `IEnumerable<IProductAttribute>` and `IEnumerable`.

## Methods

### GetByName(String attributeName)
- **Returns:** IProductAttribute
- **Description:** Gets the attribute by attribute name.

### GetBySystemId(String systemId)
- **Returns:** IProductAttribute
- **Description:** Gets the attribute by attribute system id.

### GetEnumerator()
- **Returns:** IEnumerator\<IProductAttribute\>
- **Description:** Returns an enumerator that iterates through the collection. (Inherited from IEnumerable\<IProductAttribute\>)
