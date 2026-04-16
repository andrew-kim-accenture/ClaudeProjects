# IAssetItem

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/b5444a18-6d56-ef46-11ea-159d323b6da6.htm

## Overview

Asset line item.

## Properties

| Name | Type | Description |
|------|------|-------------|
| AttributeSystemId | (not specified) | Gets the attribute system identifier |
| AttributeValueSystemId | (not specified) | Gets the attribute value system identifier |
| CartItemGuid | (not specified) | Gets the cart item unique identifier |
| CompositeNumber | (not specified) | Gets the quote composite number |
| Configuration | IAssetConfiguration | Gets the asset configuration |
| Item | Object | Gets or sets the Object value for the specified asset field name |
| ListPrice | Decimal | Gets or sets the list price |
| OpportunityId | (not specified) | Gets the opportunity identifier |
| OpportunityName | String | Gets the name of the opportunity related to the asset |
| Quantity | Decimal | Gets or sets the quantity |
| Status | AssetStatus | Gets or sets the status. 0 = Purchased, 1 = Obsolete, 2 = Pending, 3 = Renewed |

## Methods

### GetField(String fieldName)
- **Returns:** Object
- **Description:** Gets the asset field value.

### SetField(String fieldName, Object value)
- **Returns:** void
- **Description:** Sets the asset field value.
