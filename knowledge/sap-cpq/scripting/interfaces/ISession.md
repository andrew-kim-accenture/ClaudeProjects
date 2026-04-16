# ISession

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/06e9af60-9a9c-b704-782f-fc24aa1dc568.htm

## Overview

A class designed for maintaining objects within a session that can be shared across multiple scripts. Lifetime of these objects ends when the user signs out.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Item | Object | Gets or sets the Object with the specified key |

## Code Examples

```python
# Set session variable "OpportunityId" on the "When user arrives from CRM" event
Session["OpportunityId"] = sender.OpportunityId

# Another script:
oppId = Session["OpportunityId"]
# do something with oppId
```
