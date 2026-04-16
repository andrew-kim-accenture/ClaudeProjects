# IWorkflowExecutor

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/d570140a-2bb5-17ac-ac2e-a6dc444031cd.htm

## Overview

Allows execution of custom actions using CPQ Workflow engine.

## Methods

### ExecuteActionOnQuote(Int32 actionId, Int32 quoteId)
- **Returns:** void
- **Description:** Executes a custom action with given action Id on a quote with given quote Id.

### IsActionAvailableForQuote(Int32 actionId, Int32 quoteId)
- **Returns:** Boolean
- **Description:** Checks if a custom action with given action Id can be executed on a quote with given quote Id.

## Code Examples

```python
# Check action availability
actionId = 3001
quoteId = 12345
canBeExecuted = WorkflowExecutor.IsActionAvailableForQuote(actionId, quoteId)

# Execute custom action
actionId = 3001
quoteId = 12345
WorkflowExecutor.ExecuteActionOnQuote(actionId, quoteId)
```
