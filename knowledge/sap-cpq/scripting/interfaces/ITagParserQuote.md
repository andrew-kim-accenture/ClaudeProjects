# ITagParserQuote

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/5b4de4a0-0bcd-79c8-bbd8-e3597f5aefd5.htm

## Overview

Tag parser quote — provides functionality for parsing expressions within quote contexts in SAP CPQ scripting.

## Methods

### ParseString(String expression)
- **Returns:** String
- **Description:** Parses the string — processes tag expressions and returns the evaluated result.

## Code Examples

```python
if TagParserQuote.ParseString("<* CustomerCompany *>") == "SAP":
    Quote.GetCustomField("Customer company") = "SAP company"
```
