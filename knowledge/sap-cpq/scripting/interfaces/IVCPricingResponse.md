# IVCPricingResponse

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/a7198e7d-9fbd-48e6-f508-12cccda6f6bb.htm

## Overview

VC pricing response.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Conditions | IList\<IVCCondition\> | Gets document conditions |
| ConditionsWithPurpose | IList\<IVCConditionsWithPurpose\> | Gets accumulation of conditions with purpose |
| DocumentCurrencyUnit | String | Gets document currency unit |
| FreightValue | Decimal | Gets freight value |
| GrossValue | Decimal | Gets gross value |
| Id | String | Gets identifier for the document |
| Items | IList\<IVCResponseItem\> | Gets pricing item result |
| NetValue | Decimal | Gets net value |
| SubTotals | IList\<IVCSubtotal\> | Gets subtotals |
| TaxValue | Decimal | Gets tax value |
