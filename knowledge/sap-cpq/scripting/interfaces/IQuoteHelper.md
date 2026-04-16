# IQuoteHelper

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/1fb7a625-3715-8518-2743-8875ee158c46.htm

## Overview

Helper class which allows globally manipulating quotes.

## Properties

| Name | Type | Description |
|------|------|-------------|
| ItemCustomFields | IItemCustomFieldCollection | Gets the item custom field collection |

## Methods

### AddItem(Int32 productId)
- **Returns:** void
- **Description:** Adds item to the quote by product ID. Quote created if nonexistent. Default quantity is 1. Throws validation exception on failure.

### AddItem(String partNumber)
- **Returns:** void
- **Description:** Adds item to the quote by part number. Quote created if nonexistent. Default quantity is 1. Throws validation exception on failure.

### AddItem(Int32 productId, Int32 quantity)
- **Returns:** void
- **Description:** Adds item to the quote by product ID with specified quantity. Quote created if nonexistent.

### AddItem(String partNumber, Int32 quantity)
- **Returns:** void
- **Description:** Adds item to the quote by part number with specified quantity. Quote created if nonexistent.

### Copy(String compositeNumber)
- **Returns:** IQuoteInfo
- **Description:** Copies quote. Cannot copy currently loaded quote without first disposing it.

### CreateNewQuote()
- **Returns:** IQuoteInfo
- **Description:** Creates new empty quote owned by the user who created it in default status (as set up in Workflow).

### Delete(String compositeNumber)
- **Returns:** void
- **Description:** Deletes quote. Cannot delete currently loaded quote without disposing first.

### Edit(String compositeNumber)
- **Returns:** void
- **Description:** Edits quote without reconfiguration.

### Edit(Int32 ownerId, Int32 quoteId)
- **Returns:** void
- **Description:** Edits quote by owner and quote ID without reconfiguration.

### Edit(String compositeNumber, Boolean reconfigure)
- **Returns:** void
- **Description:** Edits quote with reconfiguration option.

### Reassign(String compositeNumber, String userName)
- **Returns:** IQuoteInfo
- **Description:** Reassigns quote to specified user; changes status by default.

### Reassign(String compositeNumber, String userName, Boolean changeStatus)
- **Returns:** IQuoteInfo
- **Description:** Reassigns quote to specified user with status control option.

## Code Examples

```python
# Reassign quote
quoteInfo = QuoteHelper.Reassign("00021520", "jsmith", True)

# Delete currently loaded quote
quoteCompositeNumber = Quote.CompositeNumber
Quote.Dispose()
QuoteHelper.Delete(quoteCompositeNumber)
```
