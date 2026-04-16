# IDocumentPricingResponse

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/b609d0db-0dce-244c-8623-fa3501d0e795.htm

## Overview

Represents pricing condition data used in SAP CPQ scripting.

## Properties

| Name | Type | Description |
|------|------|-------------|
| ChangedManually | Boolean | Flag indicating manual condition modification |
| ConditionBase | (not specified) | Base condition data |
| ConditionCurrency | String | Currency designation for the condition |
| ConditionRate | Decimal | Rate value of the condition |
| ConditionRateConverted | Decimal | Rate after currency conversion |
| ConditionRateNormalized | Decimal | Standardized rate format |
| ConditionType | String | Classification of the condition |
| ConditionTypeDescription | String | Text describing the condition type |
| ConditionUnit | String | Unit of measurement |
| ConditionUnitQuantity | Decimal | Quantity in specified unit |
| ConditionValue | Decimal | Numerical value of the condition |
| DeletionAllowed | Boolean | Controls whether deletion is permitted |
| InactiveFlag | Boolean | Indicates condition status |
| IsVariantCondition | Boolean | Flag for variant condition designation |
| PricingProcedureStep | String | Step identifier in pricing workflow |
| PricingProcedureStepCounter | String | Numeric counter for procedure step |
| VarcondFactor | Decimal | Multiplier from Variant Configuration service |
| VarcondKey | String | Technical identifier for variant condition |
