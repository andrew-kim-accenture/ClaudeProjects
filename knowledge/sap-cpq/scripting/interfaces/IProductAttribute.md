# IProductAttribute

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/8288b3aa-c3fe-ed7a-5623-d48381d03fdf.htm

## Overview

Provides product attribute information within SAP CPQ scripting.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Access | AttributeAccess | Gets or sets the access |
| Allowed | Boolean | Gets or sets a value indicating whether the product attribute is allowed |
| BackgroundColor | String | Gets or sets background color |
| ConfiguratorRank | Int32 | Gets/sets configurator rank (Obsolete) |
| DescriptionFormula | String | Gets or sets description formula |
| DisplayType | String | Gets or sets display type |
| ExecuteRulesOnChange | Boolean | Gets or sets a value indicating whether the rules of the product attribute will be executed when user changes its value |
| ExternalId | String | Gets ExternalId |
| Height | Int32 | Gets or sets height |
| HeightFormula | String | Gets or sets height formula |
| HintFormula | String | Gets hint formula. Set hint formula is deprecated, do not use it |
| Id | Int32 | Gets id |
| IsLineItem | Boolean | Gets or sets a value indicating whether the product attribute is line item |
| IsSpanAttribute | Boolean | Gets or sets a value indicating whether the product attribute is span |
| LabelFormula | String | Gets or sets label formula |
| LowerBoundFormula | String | Gets or sets lower bound formula |
| Name | String | Gets name |
| PositionX | Int32 | Gets or sets position x |
| PositionY | Int32 | Gets or sets position y |
| Product | IProduct | Gets parent product of the product attribute |
| Quantity | Decimal | Gets or sets quantity |
| QuantityFormula | String | Gets or sets quantity formula |
| Required | Boolean | Gets or sets a value indicating whether the product attribute is required |
| ResponderRank | Int32 | Gets or sets responder rank |
| SelectedValue | IProductAttributeValue | Gets the selected attribute value, useful for single select attributes |
| SelectedValues | IProductAttributeValueCollection | Gets the selected values, useful for multiple select attributes |
| ShowInResponder | Boolean | Gets or sets a value indicating whether the product attribute is shown in the responder |
| ShowMrcPrice | Boolean | Gets or sets a value indicating whether the product attribute shows monthly recurring (mrc) price |
| ShowPrice | Boolean | Gets or sets a value indicating whether the product attribute shows price |
| StandardAttributeCode | String | Gets the standard attribute code |
| SystemId | String | Gets the attribute unique identifier |
| TransferToContainer | Boolean | Gets or sets a value indicating whether the product attribute values can be transferred to the container |
| UpperBoundFormula | String | Gets or sets upper bound formula |
| UserInputErrorMessageFormula | String | Gets or sets user input error message formula |
| Values | IProductAttributeValueCollection | Gets attribute values of the product attribute |
| Width | Int32 | Gets or sets width |
| WidthFormula | String | Gets or sets width formula |

## Methods

### AssignValue(String value)
- **Returns:** void
- **Description:** Assigns the value (for free input attributes).

### GetDescription()
- **Returns:** String
- **Description:** Gets parsed product attribute description.

### GetHint()
- **Returns:** String
- **Description:** Gets parsed product attribute hint.

### GetLabel()
- **Returns:** String
- **Description:** Gets parsed product attribute label.

### GetLowerBound()
- **Returns:** Decimal
- **Description:** Gets and parses product attribute lower bound.

### GetUpperBound()
- **Returns:** Decimal
- **Description:** Gets parsed product attribute upper bound.

### GetUserInputErrorMessage()
- **Returns:** String
- **Description:** Gets parsed user input error message.

### GetValue()
- **Returns:** Object
- **Description:** Gets the value contained by this attribute (for FreeInput, Hidden, and Display Only attributes).

### SelectDisplayValue(String displayValue)
- **Returns:** void
- **Description:** Select by display value without forcing change trigger.

### SelectDisplayValue(String displayValue, Boolean forceChangeTrigger)
- **Returns:** void
- **Description:** Select by display value with optional change trigger force.

### SelectDisplayValues(String displayValues)
- **Returns:** void
- **Description:** Select the attribute values of multiple select attribute by display value.

### SelectDisplayValues(Boolean forceChangeTrigger, String displayValues)
- **Returns:** void
- **Description:** Select multiple by display value with change trigger control.

### SelectValue(String valueCode)
- **Returns:** void
- **Description:** Select the attribute value by value code without forcing trigger.

### SelectValue(String valueCode, Boolean forceChangeTrigger)
- **Returns:** void
- **Description:** Select the attribute value by value code with optional trigger force.

### SelectValues(String valueCodes)
- **Returns:** void
- **Description:** Select the attribute values of multiple select attribute by value codes.

### SelectValues(Boolean forceChangeTrigger, String valueCodes)
- **Returns:** void
- **Description:** Select multiple by value codes with change trigger control.
