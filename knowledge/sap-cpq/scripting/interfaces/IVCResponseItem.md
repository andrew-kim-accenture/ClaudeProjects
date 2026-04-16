# IVCResponseItem

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/d49aca53-c2d0-9ffb-2015-ba6cb3ebf224.htm

## Overview

Pricing item result.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Conditions | IList\<IVCCondition\> | Gets item conditions |
| ConditionsWithPurpose | IList\<IVCConditionsWithPurpose\> | Gets accumulation of item conditions with purpose |
| ExternalId | String | Gets item identifier in a human readable form |
| FreightValue | Decimal | Gets price at which a certain cargo is delivered from one point to another |
| GrossValue | Decimal | Gets accumulation of net value and tax value, expressed in the document currency |
| ItemId | String | Gets unique identifier of an item within a document (e.g. GUID) |
| NetPrice | Decimal | Gets net price |
| NetPriceUnit | String | Gets net price unit |
| NetPriceUnitValue | Decimal | Gets net price unit value |
| NetValue | Decimal | Gets net value of the item, after any discounts and surcharges (taxes not included), expressed in document currency |
| Subtotals | IList\<IVCSubtotal\> | Gets the total of one set of a larger group of figures to be added |
| TaxValue | Decimal | Gets total sales taxes, expressed in the document currency |
