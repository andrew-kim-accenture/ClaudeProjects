# IProductMessages

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/422d1d05-eb32-ed1f-ce43-fedefb3ec696.htm

## Overview

Product configuration template messages. Messages are shown in the responder part of the configurator. Inherits from `IReadOnlyProductMessages`.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Count | Int32 | Gets the count (inherited from IReadOnlyProductMessages) |
| Item | String | Gets the message at the specified index (inherited from IReadOnlyProductMessages) |

## Methods

### Add(String message)
- **Returns:** void
- **Description:** Adds new message that will be shown in the responder part of the configurator.

### Clear()
- **Returns:** void
- **Description:** Clears collection of messages.

### Contains(String message)
- **Returns:** Boolean
- **Description:** Determines whether message is already added to the product messages.
