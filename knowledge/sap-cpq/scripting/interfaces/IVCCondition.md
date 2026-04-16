# IVCCondition

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/ecf78342-a680-48e3-aacd-262c225f4c29.htm

## Overview

Pricing Condition result.

## Properties

| Name | Type | Description |
|------|------|-------------|
| CalculationType | String | Specifies how the pricing engine calculates condition value (absolute amount, percentage, etc.) |
| ConditionBase | Decimal | Gets condition base |
| ConditionCounter | Int32 | Gets current number of conditions in a step in a pricing procedure |
| ConditionCurrency | String | Gets currency in which condition rate is stored |
| ConditionRate | Decimal | Gets amount or percentage rate in different condition types |
| ConditionType | String | Gets condition type (pricing elements such as prices, surcharges, or discounts) |
| ConditionTypeDescription | String | Gets language-dependent description of the condition type |
| ConditionUnit | String | Gets condition unit |
| ConditionUnitValue | Decimal | Gets condition unit value |
| ConditionValue | Decimal | Gets the value resulting from pricing for a condition, total, or sub-total in a document |
| InactiveFlag | String | Gets status of the condition |
| Purpose | String | Used for displaying subtotals for conditions with similar business purpose; majorly used in leasing |
| Statistical | Boolean | Gets whether statistical (conditions not considered in net price calculations) |
| StepNo | Int32 | Gets number specifying the sequence of a condition in pricing procedure |
| Varcond | Boolean | Gets whether the condition is a variant condition |
| VarcondFactor | Decimal | Gets multiplier from Variant Configuration service that applies to the pricing condition |
| VarcondKey | String | Gets technical identifier for the variant condition |
