# IAssetMainItem

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/8673bf23-c2d4-ea34-ab0c-fe17e2a22856.htm

## Overview

Asset main item. Inherits from `IAssetItem`.

## Properties

| Name | Type | Description |
|------|------|-------------|
| AssetLineItems | (not specified) | Gets the asset line items |
| AssetMainItems | (not specified) | Gets the asset main items |
| ProductId | (not specified) | Gets the product identifier for the asset |
| ProductName | String | Gets the name of the product |
| AttributeSystemId | (not specified) | Gets the attribute system identifier (inherited) |
| AttributeValueSystemId | (not specified) | Gets the attribute value system identifier (inherited) |
| CartItemGuid | (not specified) | Gets the cart item unique identifier (inherited) |
| CompositeNumber | (not specified) | Gets the quote composite number (inherited) |
| Configuration | IAssetConfiguration | Gets the asset configuration (inherited) |
| Item | Object | Gets or sets the Object value for the specified asset field name (inherited) |
| ListPrice | Decimal | Gets or sets the list price (inherited) |
| OpportunityId | (not specified) | Gets the opportunity identifier (inherited) |
| OpportunityName | String | Gets the name of the opportunity related to the asset (inherited) |
| Quantity | Decimal | Gets or sets the quantity (inherited) |
| Status | AssetStatus | Gets or sets the status. 0 = Purchased, 1 = Obsolete, 2 = Pending, 3 = Renewed (inherited) |

## Methods

### GetField(String fieldName)
- **Returns:** Object
- **Description:** Gets the asset field value. (Inherited from IAssetItem)

### SetField(String fieldName, Object value)
- **Returns:** void
- **Description:** Sets the asset field value. (Inherited from IAssetItem)
