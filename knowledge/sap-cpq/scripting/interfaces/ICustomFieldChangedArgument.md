# ICustomFieldChangedArgument

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/4fb087dd-b659-e273-b238-2cde03cecf70.htm

## Overview

Custom field change argument is passed when the custom field change event occurs. This class can be accessed via the `arg` variable within the custom field change event handler.

## Properties

| Name | Type | Description |
|------|------|-------------|
| NewValue | Object | Gets the new value of custom field |
| OldValue | Object | Gets the old value of custom field |

## Code Examples

```python
diff = float(arg.NewValue) - float(arg.OldValue)
Quote.GetCustomField("CustomField1").Content = "You have changed custom field value for " + str(diff) + " points."
```
