# IProduct

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/7df18883-5cc5-31b3-6ee8-29cc050a835d.htm

## Overview

Represents product information in SAP CPQ scripting. Inherits from `IAliases`. Available as the global `Product` variable in product scripts.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Attributes | IProductAttributeCollection | Gets product attributes |
| CalculateLineItemsInResponder | Boolean | Controls line item calculation in responder; overrides application parameter for current product |
| CostFormula | String | Gets or sets product cost formula |
| CrossDistributionChainStatus | String | Cross-distribution chain status on product master data |
| CrossDistributionChainStatusValidFrom | DateTime | Valid-from date for cross-distribution chain status |
| CrossPlantMaterialStatus | String | Cross-plant material status |
| CrossPlantMaterialStatusValidFrom | DateTime | Valid-from date for cross-plant material status |
| DescriptionFormula | String | Gets or sets product description formula |
| DistributionChainSpecificStatus | String | Status on product sales area |
| DistributionChainSpecificStatusValidFrom | DateTime | Valid-from date for distribution chain status |
| DivisionCode | String | Code of division associated with product sales area |
| ErrorMessages | IProductErrorMessages | Gets the product error messages. Messages are shown in the responder part of the configurator as errors |
| ExecuteRulesOnce | Boolean | Controls whether product rules execute once |
| ExternalConfiguration | String | External configuration content stored in CPQ database. Populated only for products on Quote 2.0 with Variant configuration type |
| ExternalConfigurationId | String | External configuration identifier for variant configuration products |
| ExternalId | String | Gets the external product id |
| FailedValidations | (not specified) | Gets the list of failed validations |
| FamilyCode | String | Gets or sets the family code |
| FlagMaterialForDeletion | Boolean | Flag material for deletion |
| GeneralItemCategoryGroup | String | General item category group on product master data |
| Id | Int32 | Gets the id |
| Image | String | Gets or sets the image name |
| ImageLarge | String | Gets or sets the large image name |
| Inventory | Decimal | Gets or sets the inventory |
| IsComplete | Boolean | Indicates if product is complete; evaluates only current product in hierarchy |
| IsSimple | Boolean | Gets a value indicating whether the product is simple |
| ItemCategoryGroup | String | Item category group of product sales area |
| LabelFormula | String | Gets or sets the label formula |
| LeadTime | Int32 | Gets or sets the lead time |
| Link | String | Gets or sets the link |
| LongDescriptionFormula | String | Gets or sets the long description formula |
| ManufacturedPartNumber | String | Gets or sets the manufactured part number |
| Messages | IProductMessages | Gets product configuration template messages |
| MrcCostFormula | String | Gets or sets the monthly recurring cost formula |
| MrcPriceFormula | String | Gets or sets the monthly recurring price formula |
| Name | String | Gets or sets the product name |
| OldMaterialNumber | String | Old material number on product master data |
| PartNumber | String | Gets product part number |
| PartNumberFormula | String | Gets or sets product part number formula |
| PriceFormula | String | Gets or sets the product price formula |
| PricingCode | String | Gets or sets the product pricing code |
| PricingReferenceMaterial | String | Pricing reference material of product sales area |
| ProductVersion | String | Gets the product version |
| ProductVersionName | String | Gets the product version name |
| QuoteId | Int32 | Quote identifier; 0 when not in quote context |
| QuoteItemDescriptionFormula | String | Gets or sets the quote item description formula |
| QuoteItemId | Int32 | Quote item identifier; 0 when not associated with quote item |
| RecurringCostPeriod | String | Gets or sets the recurring cost period |
| RecurringPricePeriod | String | Gets or sets the recurring price period |
| RootQuoteItemId | Int32 | Root quote item identifier; 0 when not associated |
| SalesUnit | String | Sales unit on product sales area |
| SystemId | String | Gets the system id |
| Tabs | IProductTabCollection | Gets a list of product tabs for the product |
| TotalPrice | Decimal | Gets the total price |
| Type | String | Gets product type of the product |
| UnitOfMeasure | String | Gets or sets the unit of measure for product |
| UniversalProductCode | String | Gets or sets the universal product code |
| Weight | Decimal | Gets or sets the product weight |

## Methods

### AddToQuote()
- **Returns:** void
- **Description:** Inserts new inline product configuration to the quote.

### ApplyRules()
- **Returns:** void
- **Description:** Applies the rules on current product. Note: rules will not be applied if called from IronPython script. This method does not set Allowed property of product attributes to true before the rule is executed.

### ChangeTab(String tabName)
- **Returns:** void
- **Description:** Changes tab to the tab with name specified.

### GetContainerByName(String containerAttributeName)
- **Returns:** IContainer
- **Description:** Gets the container by container attribute name.

### GetContainerBySystemId(String containerSystemId)
- **Returns:** IContainer
- **Description:** Gets the container by container attribute system id.

### GetDescription()
- **Returns:** String
- **Description:** Gets parsed product description.

### GetGlobal(String globalName)
- **Returns:** Object
- **Description:** Gets the value by global name.

### GetLabel()
- **Returns:** String
- **Description:** Gets parsed product label.

### GetLongDescription()
- **Returns:** String
- **Description:** Gets parsed product long description.

### GetMrcTotalPrice()
- **Returns:** Decimal
- **Description:** Gets parsed monthly recurring (mrc) total price.

### GetQuoteDescription()
- **Returns:** String
- **Description:** Gets parsed quote description.

### IsTabVisible(String tabName)
- **Returns:** Boolean
- **Description:** Checks if tab is visible.

### LoadExternalProductFromVariantConfiguration()
- **Returns:** void
- **Description:** Loading configuration into a product that is already configured.

### LoadVariantProductFromVariantConfiguration(String configId, String eTag)
- **Returns:** void
- **Description:** Loading configuration into a product that is already configured.

### LoadVariantProductFromVariantConfiguration(String configId, String eTag, String optionalParam)
- **Returns:** void
- **Description:** Loading configuration into a product that is already configured with an option to provide an E-Tag of the configuration.

### ParseString(String inputString)
- **Returns:** String
- **Description:** Parses the string.

### SetGlobal(String globalName, Object value)
- **Returns:** void
- **Description:** Sets the value by global name.

### UpdateQuote()
- **Returns:** void
- **Description:** Updates inline product configuration in the quote.

### Inherited from IAliases
- `AllowAttr(String attributeName)` — Enables attribute
- `AllowAttrValues(String attributeName, ...)` — Allows attribute values
- `Attr(String attributeName)` → IProductAttribute — Gets attribute by name
- `AttrValue(String attributeName, String valueCode)` → IProductAttributeValue — Gets attribute value
- `DeselectAttrValues(...)` — Deselects attribute values
- `DisallowAttr(String attributeName)` — Disables attribute
- `DisallowAttrValues(...)` — Disallows (and deselects) attribute values
- `ResetAttr(String attributeName)` — Resets attribute
- `SelectAttrValues(...)` — Selects attribute values
- `SetOptional(String attributeName)` — Makes attribute optional
- `SetRequired(String attributeName)` — Makes attribute required
- `SetQty(String attributeName, Decimal qty)` — Sets attribute quantity
