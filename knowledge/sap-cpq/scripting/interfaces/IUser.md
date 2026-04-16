# IUser

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/4ac7e805-b224-cc3f-31c4-80a97c4b5da0.htm

## Overview

Represents user information and provides access to user properties, custom fields, and permission management functionality.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Address1 | String | Gets the first address line |
| Address2 | String | Gets the second address line |
| ApproveParent | IUser | Gets the approval parent |
| City | String | Gets the city |
| Company | ICompany | Gets the company |
| Country | String | Gets the country/region |
| CountryAbbreviation | String | Gets the country abbreviation |
| Email | String | Gets the email address |
| ExpireDate | DateTime | Gets the expiration date |
| Fax | String | Gets the fax number |
| FirstName | String | Gets the first name |
| GetAvailableMarkets | IScriptingMarketCollection | Gets all available markets for current user |
| Id | Int32 | Gets the user ID |
| IsAdmin | Boolean | Gets whether the user is an administrator |
| LastLogOnClient | String | Gets the last login client |
| LastLogOnIP | String | Gets the last login IP address |
| LastLogOnTime | DateTime | Gets the last login timestamp |
| LastName | String | Gets the last name |
| ManagingParent | IUser | Gets the managing parent |
| Multiplier | Decimal | Gets the multiplier value |
| Name | String | Gets the full name |
| OrderingParent | IUser | Gets the ordering parent |
| Phone | String | Gets the phone number |
| Province | String | Gets the province |
| SelectedDictionary | ISelectedDictionary | Gets the currently selected dictionary for logged in user |
| State | String | Gets the state |
| Territory | ITerritory | Gets the territory |
| TimeZone | String | Gets the user's time zone |
| Title | String | Gets the job title |
| UserCode | String | Gets the user code |
| UserCustomFields | IUserCustomFieldCollection | Gets user custom fields collection |
| UserIdCode | String | Gets the user ID code |
| UserName | String | Gets the username |
| UserType | IUserType | Gets the user type |
| ZipCode | String | Gets the zip code |

## Methods

### BelongsToPermissionGroup(String groupName)
- **Returns:** Boolean
- **Description:** Determines whether the user belongs to permission group. This method applies only to the currently logged-in user.

### GetUserCustomFieldByName(String fieldName)
- **Returns:** IUserCustomField
- **Description:** Retrieves a user custom field by its name.

### IsInPermissionGroup(Object criteria)
- **Returns:** Boolean
- **Description:** Determines whether the user belongs to permission group by any criteria (User, User Type, Company). This method applies only to the currently logged-in user.

### RefreshMarkets()
- **Returns:** void
- **Description:** Refresh available markets for current user. All market visibility formulas will be reevaluated.

### RefreshPricebooks()
- **Returns:** void
- **Description:** Refresh available pricebooks. All pricebook visibility formulas for market will be reevaluated.

### SetDefaultMarket(IScriptingMarket market)
- **Returns:** void
- **Description:** Sets the default market for the current user.

## Code Examples

```python
if User.IsAdmin:
    User.GetUserCustomFieldByName("FloAdmin").Content = "User is admin"
```
