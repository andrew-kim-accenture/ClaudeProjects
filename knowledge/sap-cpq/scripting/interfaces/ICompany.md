# ICompany

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/991adec4-4ac1-e256-a2a9-fcd9b0819588.htm

## Overview

Provides access to company information within SAP CPQ scripting contexts.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Address1 | String | Gets the address1 |
| Address2 | String | Gets the address2 |
| Approved | Boolean | Gets a value indicating whether this ICompany is approved |
| City | String | Gets the city |
| CompanyCode | String | Gets the company code |
| Country | String | Gets the country/region |
| Description | String | Gets the description |
| Email | String | Gets the email |
| Fax | String | Gets the fax |
| Id | Int32 | Gets the id |
| Name | String | Gets the name |
| Notes | String | Gets the notes |
| Phone | String | Gets the phone |
| Province | String | Gets the province |
| State | String | Gets the state |
| WebAddress | String | Gets the web address |
| Zip | String | Gets the zip |

## Code Examples

```python
if User.Company.Name == "SAP":
    WorkflowContext.ClientScript = "alert('Welcome to SAP!')"
```
