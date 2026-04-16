# IProductAttributeValue

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/1014340d-586f-5020-1248-32492a919465.htm

## Overview

Represents product attribute value information within SAP CPQ scripting.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Allowed | Boolean | Gets or sets a value indicating whether the attribute value is allowed |
| AttributeValueId | (not specified) | Gets the attribute value identifier |
| BillingPeriod | String | Gets the attribute value billing period. Only applicable for Billing Cycle attribute type |
| CostFormula | String | Gets or sets the cost formula |
| DefaultQuantity | Decimal | Gets or sets the default quantity |
| DescriptionFormula | String | Gets or sets the description formula |
| Display | String | Gets or sets the display |
| Id | Int32 | Gets id |
| ImageOff | String | Gets or sets the image-off name |
| ImageOffAltText | String | Gets or sets the image-off alt text |
| ImageOn | String | Gets or sets the image-on name |
| ImageOnAltText | String | Gets or sets the image-on alt text |
| IsPreselected | Boolean | Gets or sets a value indicating whether the attribute value is preselected |
| IsSelected | Boolean | Gets or sets a value indicating whether the attribute value is selected |
| ListAsLineItemWhenPriceIsZero | Boolean | Gets or sets a value indicating whether the attribute value can be added to the quote as line item although the price may be zero |
| MrcCostFormula | String | Gets or sets monthly recurring (mrc) cost formula |
| MrcPriceFormula | String | Gets or sets monthly recurring (mrc) price formula |
| PartNumber | String | Gets the part number |
| PartNumberFormula | String | Gets or sets the part number formula |
| PriceFormula | String | Gets or sets the price formula |
| PricingCode | String | Gets or sets the pricing code |
| Quantity | Decimal | Gets or sets the quantity |
| Rank | Int32 | Gets or sets the rank |
| SystemId | String | Gets the attribute value unique identifier |
| TranslatedDisplay | String | Gets translated display |
| Unit | String | Gets the attribute value unit. Only applicable for Contract Duration attribute type |
| UsePricebook | Boolean | Gets or sets a value indicating whether the attribute value uses pricebook |
| UserInput | String | Gets or sets the user input |
| ValueCode | String | Gets or sets attribute value code |

## Methods

### GetCost()
- **Returns:** Decimal
- **Description:** Gets parsed attribute value cost.

### GetDescription()
- **Returns:** String
- **Description:** Gets parsed attribute value description.

### GetMrcPrice()
- **Returns:** Decimal
- **Description:** Gets parsed attribute value monthly recurring (mrc) price.

### GetPrice()
- **Returns:** Decimal
- **Description:** Gets parsed attribute value price.

### MrcCost()
- **Returns:** Decimal
- **Description:** Gets parsed attribute value monthly recurring (mrc) cost.
