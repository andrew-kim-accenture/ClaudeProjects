# Time Zones | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/8abb2b71b70948f998421a1141a60d7b.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings


	Setup Help
	
Time Zones
	
Custom Tabs
	
Recurring Background Jobs Executed on Tenants
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Time Zones

If your company has departments in different countries/regions, in different time zones, or simply your users are scattered around the world, SAP CPQ can be set up SAP CPQ to display information in their own time zone.

SAP CPQ administrators can set time zone globally - at the tenant level or at the user level. Once set globally, the time zone is applied for each user. If some user needs different time zone it can be set by SAP CPQ administrator, or by the user if they are allowed.

Setting Time Zone at tenant level

To set default time zone at the tenant level, go to Setup  General  Application Parameters , then under “General Parameters” tab find the parameter “Default Time Zone” and make the desired selection. This will apply the defined default time zone to all users.

Setting Time Zone at user level

As an SAP CPQ administrator you are allowed to set time zone for each user separately. You can decide whether the user can change time zone on its own or not.

Administrators can also set the time zone for multiple users in bulk - using the import/export feature. The user import/export template contains two columns for this purpose: timezone and Allow timezone change.

In user import/export template there is a sheet labeled ”timezones”. This sheet contains information about all SAP CPQ system timezones that you can enter in the sample template column Timezone under the users sheet.

Users that are allowed to change their time zone can change it by selecting the desired time zone from the drop-down list on the User Page.

Users that are not allowed to change their time zone by the administrator will have the user time zone field disabled in the User Page.

When a user creates a quote, all date information will be presented in their selected time zone. When user goes to the quote list page, they will see the list of quotes - their own and from the others. For each quote, ”Date Created” field will be presented to the user is in their selected time zone.

Example

User1 has created the quote in PST time zone on 06JUL2016 at 23:57:16.

User2 is in CET time zone. User2 will see that User1’s quote was created on 07JUL2016 at 08:57:16.

The same rule applies for Date Modified field. Otherwise, you can disable timezone conversion for fields which contain date-only information (to ensure that the same date is displayed to all users regardless of their timezones) via General  Application Parameters  General Parameters  Disable timezone conversion for date field. Timezone conversion is always disabled for those fields in Quote 2.0.

CTX Tags and Time Zones

Time zones are supported by the CTX tag. CTX Tag can be instructed to return the time zone value of a Quote custom field that is of type Date.

CTX Tag	Description


<*CTX( Date(09/13/2011).InUsertimezone)*>

	

Displays provided time in user time zone




<*CTX( Quote.CustomField(QuoteCustomField).InUsertimezone )*>

	

Displays value of QuoteCustomField in user time zone




<*CTX(Quote.CurrentItem.CustomField(QuoteItemCustomField).InUsertimezone)*>

	

Displays value of QuoteItemCustomField in user time zone

Iron Python Scripting and Time Zones

Iron Python Scripting now exposes the timezone property in the IUser interface. It can be used in scripts to ensure that the result of the script execution will be presented to the user in the selected time zone.

The next line of Iron Python code will return the users time zone and set the content of the custom field named Quote message:


Quote.GetCustomField('Quote message').Content = User.timezone.Id
On this page
Setting Time Zone at tenant level
Setting Time Zone at user level
CTX Tags and Time Zones
Iron Python Scripting and Time Zones
Yes
No