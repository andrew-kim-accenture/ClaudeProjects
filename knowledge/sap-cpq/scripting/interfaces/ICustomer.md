# ICustomer

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/37371ac3-5554-9154-7cc5-51e40da35545.htm

## Overview

Represents customer information within the SAP CPQ scripting namespace.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Active | Boolean | Gets or sets the active status |
| Address1 | String | Gets or sets the first address line |
| Address2 | String | Gets or sets the second address line |
| BusinessFax | String | Gets or sets the business fax number |
| BusinessPhone | String | Gets or sets the business phone number |
| City | String | Gets or sets the city |
| CompanyName | String | Gets or sets the company name |
| CountryAbbreviation | String | Gets or sets the country/region abbreviation |
| CrmAccountId | String | Gets or sets the CRM account ID |
| CrmContactId | String | Gets or sets the CRM contact ID |
| CustomerCode | String | Gets or sets the customer code |
| CustomerType | String | Gets or sets the customer type |
| Email | String | Gets or sets the email address |
| FirstName | String | Gets or sets the first name |
| Item | String | Gets or sets a String with the specified custom field name |
| LastName | String | Gets or sets the last name |
| OwnerName | String | Gets or sets the owner name |
| PrimaryIndustry | String | Gets or sets the primary industry |
| Province | String | Gets or sets the province |
| QuoteId | Int32 | Gets or sets the quote ID |
| StateAbbreviation | String | Gets or sets the state abbreviation |
| TerritoryName | String | Gets or sets the territory name |
| Title | String | Gets or sets the title |
| UserId | Int32 | Gets or sets the user ID |
| ZipCode | String | Gets or sets the zip code |

## Code Examples

```python
if Quote.BillToCustomer is not None:
    WorkflowContext.ClientScript = "alert('" + Quote.BillToCustomer.FirstName + " " + Quote.BillToCustomer.LastName + "')"
```
