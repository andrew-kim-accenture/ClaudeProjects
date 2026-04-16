# IAction

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/688db90f-5c78-42ac-01ac-bcf236af4963.htm

## Overview

Represents a Quote Action within SAP CPQ's scripting system.

## Properties

| Name | Type | Description |
|------|------|-------------|
| AutomaticallyUpdatesProductVersion | Boolean | Gets the flag indicating product version update will be automatically updated |
| EndStatusId | (not specified) | Gets the id of the quote status after action is executed |
| EndStatusName | String | Gets the name of the quote status after action is executed |
| Id | (not specified) | Gets the id |
| ImageName | String | Gets the image name |
| IsPrimaryAction | Boolean | Gets the flag indicating the action is primary |
| Name | String | Gets the name |
| PromptsUserForVersionUpdate | Boolean | Gets the flag indicating user should be prompted for version update |
| TranslatedName | String | Gets the translated name |

## Code Examples

```python
for action in Quote.Actions:
    if action.Name == "Reprice" and action.IsPrimaryAction:
        Quote.ExecuteAction(action.Id)
        break
```
