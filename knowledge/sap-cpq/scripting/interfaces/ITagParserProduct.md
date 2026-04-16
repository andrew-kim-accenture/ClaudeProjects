# ITagParserProduct

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/8db76607-995a-8a87-d776-8bed56fe380c.htm

## Overview

Tag parser product — used for parsing product tab expressions in SAP CPQ scripting contexts.

## Methods

### ParseString(String expression)
- **Returns:** String
- **Description:** Parses the string. This method is not allowed when script has been triggered from CPQ rule.

## Code Examples

```python
if float(TagParserProduct.ParseString("<* TotalPrice *>")) > 3000:
    Quote.Total.Cost = 300
```
