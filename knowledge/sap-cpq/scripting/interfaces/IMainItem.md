# IMainItem

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/8d1533ab-8207-68ad-3ad7-f0c92e91d06b.htm

## Overview

Represents a main item in SAP CPQ scripting. Inherits from `IQuoteItem`. Main items are top-level product items in a quote, which can have child line items.

## Properties

### IMainItem-Specific Properties

| Name | Type | Description |
|------|------|-------------|
| Actions | IItemActionCollection | Gets the quote item actions |
| AliasProductId | Int32 | Gets the alias product id |
| Children | IMainItemCollection | Gets the child items of system main item |
| IsComplete | Boolean | Gets or sets a value indicating whether this instance is complete |
| IsInvalid | Boolean | Gets or sets a value indicating whether this instance is invalid |
| IsSimple | Boolean | Gets or sets a value indicating whether this instance is simple |
| KeyAttributes | IKeyAttributeCollection | Gets the key attributes |
| LineItems | ILineItemCollection | Gets the line items |
| ShippingCost | Decimal | Gets or sets the shipping cost |
| ShippingCostInMarket | Decimal | Gets the shipping cost for selected market |
| VCItemPricingPayload | String | Gets part of pricing response payload related to current main item |
| VCPricingPayload | String | Gets full pricing response payload for root main item (empty if not root) |

### Rolled-Up Properties (Non-MRC)

| Name | Type | Description |
|------|------|-------------|
| RolledUpCost | Decimal | Gets or sets rolled-up cost |
| RolledUpCostInMarket | Decimal | Gets or sets rolled-up cost in market |
| RolledUpDiscountAmount | Decimal | Gets or sets rolled-up discount amount |
| RolledUpDiscountAmountInMarket | Decimal | Gets or sets rolled-up discount amount in market |
| RolledUpDiscountPercent | Decimal | Gets or sets rolled-up discount percent |
| RolledUpEndCustomerExtendedPrice | Decimal | Gets or sets rolled-up end customer extended price |
| RolledUpEndCustomerExtendedPriceInMarket | Decimal | Gets or sets rolled-up end customer extended price in market |
| RolledUpEndCustomerUnitPrice | Decimal | Gets or sets rolled-up end customer unit price |
| RolledUpEndCustomerUnitPriceInMarket | Decimal | Gets or sets rolled-up end customer unit price in market |
| RolledUpExtendedAmount | Decimal | Gets or sets rolled-up extended amount |
| RolledUpExtendedAmountInMarket | Decimal | Gets or sets rolled-up extended amount in market |
| RolledUpExtendedCost | Decimal | Gets or sets rolled-up extended cost |
| RolledUpExtendedCostInMarket | Decimal | Gets or sets rolled-up extended cost in market |
| RolledUpExtendedListPrice | Decimal | Gets or sets rolled-up extended list price |
| RolledUpExtendedListPriceInMarket | Decimal | Gets or sets rolled-up extended list price in market |
| RolledUpListPrice | Decimal | Gets or sets rolled-up list price |
| RolledUpListPriceInMarket | Decimal | Gets or sets rolled-up list price in market |
| RolledUpMargin | Decimal | Gets or sets rolled-up margin |
| RolledUpMarginInMarket | Decimal | Gets or sets rolled-up margin in market |
| RolledUpNetPrice | Decimal | Gets or sets rolled-up net price |
| RolledUpNetPriceInMarket | Decimal | Gets or sets rolled-up net price in market |

### Rolled-Up Properties (MRC)

| Name | Type | Description |
|------|------|-------------|
| MrcRolledUpCost | Decimal | Gets or sets MRC rolled-up cost |
| MrcRolledUpCostInMarket | Decimal | Gets or sets MRC rolled-up cost in market |
| MrcRolledUpDiscountAmount | Decimal | Gets or sets MRC rolled-up discount amount |
| MrcRolledUpDiscountAmountInMarket | Decimal | Gets or sets MRC rolled-up discount amount in market |
| MrcRolledUpDiscountPercent | Decimal | Gets or sets MRC rolled-up discount percent |
| MrcRolledUpEndCustomerExtendedPrice | Decimal | Gets or sets MRC rolled-up end customer extended price |
| MrcRolledUpEndCustomerExtendedPriceInMarket | Decimal | Gets or sets MRC rolled-up end customer extended price in market |
| MrcRolledUpEndCustomerUnitPrice | Decimal | Gets or sets MRC rolled-up end customer unit price |
| MrcRolledUpEndCustomerUnitPriceInMarket | Decimal | Gets or sets MRC rolled-up end customer unit price in market |
| MrcRolledUpExtendedAmount | Decimal | Gets or sets MRC rolled-up extended amount |
| MrcRolledUpExtendedAmountInMarket | Decimal | Gets or sets MRC rolled-up extended amount in market |
| MrcRolledUpExtendedCost | Decimal | Gets or sets MRC rolled-up extended cost |
| MrcRolledUpExtendedCostInMarket | Decimal | Gets or sets MRC rolled-up extended cost in market |
| MrcRolledUpExtendedListPrice | Decimal | Gets or sets MRC rolled-up extended list price |
| MrcRolledUpExtendedListPriceInMarket | Decimal | Gets or sets MRC rolled-up extended list price in market |
| MrcRolledUpListPrice | Decimal | Gets or sets MRC rolled-up list price |
| MrcRolledUpListPriceInMarket | Decimal | Gets or sets MRC rolled-up list price in market |
| MrcRolledUpMargin | Decimal | Gets or sets MRC rolled-up margin |
| MrcRolledUpMarginInMarket | Decimal | Gets or sets MRC rolled-up margin in market |
| MrcRolledUpNetPrice | Decimal | Gets or sets MRC rolled-up net price |
| MrcRolledUpNetPriceInMarket | Decimal | Gets or sets MRC rolled-up net price in market |

(Plus all properties inherited from IQuoteItem — see IQuoteItem for the full list.)

## Methods

### IMainItem-Specific Methods

### Copy()
- **Returns:** void
- **Description:** Copies quote item.

### CreateFavorite()
- **Returns:** void
- **Description:** Creates favorite product using original product's name/description, visible to everyone.

### CreateFavorite(String name, String description, Boolean isVisibleToEveryone, Boolean includeAttributes)
- **Returns:** void
- **Description:** Creates favorite with specified parameters.

### Delete()
- **Returns:** void
- **Description:** Deletes item.

### Edit()
- **Returns:** void
- **Description:** Inline edits item; user remains on quote with inline configurator.

### EditConfiguration()
- **Returns:** void
- **Description:** Prepares configurator for inline edit.

### NewLineItem()
- **Returns:** ILineItem
- **Description:** Creates new line item.

### UpgradeToNewProductVersion()
- **Returns:** void
- **Description:** Upgrades to new product version.

### Inherited from IQuoteItem

### ChangeItemType(...)
- **Description:** Changes the type of the item.

### GetKeyAttribute(String attributeSystemId)
- **Returns:** IKeyAttribute
- **Description:** Gets key attribute by attribute system id.

### GetKeyAttributeByAttributeName(String attributeName)
- **Returns:** IKeyAttribute
- **Description:** Gets key attribute by attribute name.

### GetKeyAttributeByLabel(String label)
- **Returns:** IKeyAttribute
- **Description:** Gets key attribute by label.

### IsFieldEditable(String columnName)
- **Returns:** Boolean
- **Description:** Determines whether quote item column is editable.

### IsFieldModified(String columnName)
- **Returns:** Boolean
- **Description:** Determines whether quote item column is modified.

### MoveDown()
- **Returns:** void
- **Description:** Moves down quote item.

### MoveUp()
- **Returns:** void
- **Description:** Moves up quote item.

### Reconfigure(...)
- **Returns:** void
- **Description:** Reconfigures quote item.

## Code Examples

```python
# Check copy action availability and execute
for item in Quote.MainItems:
    if item.PartNumber == "PART-NUMBER-123":
        for action in item.Actions:
            if action.Id == Quote.ItemActionId.CopyItemId:
                item.Copy()

# Inline edit of configurable item
for mainItem in Quote.MainItems:
    if mainItem.ProductName == 'Maintenance':
        mainItem.Edit()
        Product.Attributes.GetByName('Maintenance duration').SelectValue('5-YEARS')
        Product.Attributes.GetByName('Contract Type').AssignValue('Updated contract')
        if Product.Attributes.GetByName('1 Year Support').SelectedValue is not None:
            Product.Attributes.GetByName('1 Year Support').SelectedValue.IsSelected = False
        Product.UpdateQuote()
        break

# Calculate rolled-up values
miItems = []
for item in Quote.MainItems:
    miItems.append(item)
miItems.reverse()

for mi in miItems:
    mi.RolledUpListPrice = mi.ListPrice
    mi.RolledUpExtendedListPrice = mi.ExtendedListPrice
    mi.RolledUpNetPrice = mi.NetPrice
    mi.RolledUpExtendedAmount = mi.ExtendedAmount
    mi.RolledUpEndCustomerUnitPrice = mi.EndUserNet
    mi.RolledUpEndCustomerExtendedPrice = mi.EndUserExtendedAmount
    mi.RolledUpCost = mi.Cost
    mi.RolledUpExtendedCost = mi.ExtendedCost
    mi.RolledUpDiscountAmount = mi.DiscountAmount

    for li in mi.LineItems:
        if li.IsOptional:
            continue
        mi.RolledUpListPrice += li.ListPrice
        mi.RolledUpExtendedListPrice += li.ExtendedListPrice
        mi.RolledUpNetPrice += li.NetPrice
        mi.RolledUpExtendedAmount += li.ExtendedAmount
        mi.RolledUpEndCustomerUnitPrice += li.EndUserNet
        mi.RolledUpEndCustomerExtendedPrice += li.EndUserExtendedAmount
        mi.RolledUpCost += li.Cost
        mi.RolledUpExtendedCost += li.ExtendedCost
        mi.RolledUpDiscountAmount += li.DiscountAmount
```
