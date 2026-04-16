# IKeyAttribute

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/35f91327-c581-faa0-e4a3-12eb14229150.htm

## Overview

Enables search criteria configuration through Key Attributes, allowing users to search quotes based on attribute values and set input values via scripting.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Expression | String | Gets or sets the expression |
| Label | String | Gets the label |
| ParsedValue | Object | Gets or sets the parsed value. This value is equal to evaluated expression |

## Methods

### SetInputValue(String value)
- **Returns:** void
- **Description:** Sets the key attribute text without reconfigure.

### SetInputValue(String value, Boolean reconfigure)
- **Returns:** void
- **Description:** Sets the key attribute text.

### SetValue(String value)
- **Returns:** void
- **Description:** Sets the key attribute value without reconfigure.

### SetValue(String value, Boolean reconfigure)
- **Returns:** void
- **Description:** Sets the key attribute value.
