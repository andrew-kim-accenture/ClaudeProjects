# IUserType

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/3cbe2e0e-c3c8-49c3-f4aa-9e9712687413.htm

## Overview

Represents user type information within the SAP CPQ scripting framework.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Id | Int32 | Gets the id |
| LandingProductSystemId | String | Gets system ID of the chosen configurable product that will open in Configurator as a first page after login |
| Name | String | Gets the name |

## Code Examples

```python
if User.UserType is not None and User.UserType.Name == "Sales Manager":
    User.GetUserCustomFieldByName("User Type").Content = "Sales Manager at SAP"
```
