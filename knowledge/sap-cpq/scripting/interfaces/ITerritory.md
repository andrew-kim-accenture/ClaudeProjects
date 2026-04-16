# ITerritory

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/a62e9787-ba6d-ab10-156f-10af56d378ad.htm

## Overview

Represents a territory object used in SAP CPQ scripting to access territory-related information.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Id | Int32 | Gets the id |
| Name | String | Gets the name |

## Code Examples

```python
if User.Territory is not None:
    Quote.GetCustomField("Territory").Content = User.Territory.Name
```
