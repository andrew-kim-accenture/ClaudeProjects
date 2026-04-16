# IUserCustomField

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/d1c22a5d-c408-0e7e-172b-2a1b0c52f642.htm

## Overview

User custom field.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Content | String | Gets or sets the content |
| Name | String | Gets the name |

## Methods

### GetAttributeValues()
- **Returns:** IUserCustomFieldAttributeValueCollection
- **Description:** Gets attribute values.

## Code Examples

```python
if User.GetUserCustomFieldByName("User Company Name") is not None:
    User.GetUserCustomFieldByName("User Company Name").Content = "SAP company"
```
