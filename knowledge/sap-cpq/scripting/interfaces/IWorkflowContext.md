# IWorkflowContext

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/4ed6891c-d465-975f-64cf-841f673cbe78.htm

## Overview

This class is shared within pre and post actions.

## Properties

| Name | Type | Description |
|------|------|-------------|
| BreakWorkflowExecution | Boolean | Gets or sets flag to cancel action execution chain if validation fails in pre-action |
| CartId | Int32 | Gets the cart identifier |
| ChangeQuoteStatus | Boolean | Gets or sets whether quote status changes per workflow settings during custom action execution |
| ClientData | String | Gets or sets data sent to the client |
| ClientScript | String | Gets or sets client-side script execution (deprecated in responsive design) |
| Custom | Object | Gets or sets additional data needed for action execution |
| Message | String | Gets or sets action execution result message |
| NewCartId | Int32 | Gets the new cart identifier |
| NewOwnerId | Int32 | Gets the new owner identifier |
| OwnerId | Int32 | Gets the owner identifier |
| RedirectToURL | String | Gets or sets redirect URL post-execution (supports relative/absolute URLs) |
| Success | Boolean | Gets or sets flag indicating successful action execution |

## Code Examples

```python
# Setting ChangeQuoteStatus (Quote 2.0)
context.WorkflowContext.ChangeQuoteStatus = True

# Setting ChangeQuoteStatus (Quote 1.0)
WorkflowContext.ChangeQuoteStatus = True
```
