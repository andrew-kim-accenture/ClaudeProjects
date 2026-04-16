# ISalesArea

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/8bbf68a8-5223-8d83-3db8-aadd4071ef54.htm

## Overview

Class which allows fetching sales area data. Represents the combination of Sales Organization, Distribution Channel and Division.

## Properties

| Name | Type | Description |
|------|------|-------------|
| DistributionChannel | String | Gets the sales area distribution channel (e.g. "Direct" vs "Indirect"). Returns quote value or default pricebook value if quote not loaded. |
| Division | String | Gets the sales area division (product line, e.g. "Hardware" or "Software"). Returns quote value or SAP_STANDALONE_DIVISION default if quote not loaded. |
| SalesOrganization | String | Gets the sales area sales organization (models organizational aspect, assigned to legal entity). Returns quote value or default market code if quote not loaded. |

## Code Examples

```python
distributionChannel = SalesArea.DistributionChannel
division = SalesArea.Division
salesOrganization = SalesArea.SalesOrganization
```
