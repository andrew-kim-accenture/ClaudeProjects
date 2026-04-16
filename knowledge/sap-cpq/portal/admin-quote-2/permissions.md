# Permissions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/6cea6ba759484d1dbebcacf3e9f3065e.html?locale=en-US&state=PRODUCTION&version=2603
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


	Setup Help

	
Fields, Calculations, Layout
	
Document Generation
	
Custom Quote Tabs
	
Quote Tables
	
Quote Fields


	
Quote Standard Fields


	
Permissions
	
Quote Custom Fields
	
Quote Tab Permissions
	
Quote List Settings
	
Bulk Quote Deletion
	
Quote Visibility
	
Quote Acceptance Settings
	
Partner Functions
	
Solution Design
	
Quote Teams
	
Filtering Items in Quote
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Permissions

At the Quote Standard Fields page, you can define editability and visibility permissions for standard quote fields.

At Setup   Quotes   Quote Fields   Quote Standard Fields, with Edit action, you can define how the standard quote field will be displayed to the user based on the user permission group and status of the quote. There are three options that you can define for the field:

Hidden - This is used for the statuses or user groups that you would not like the field displayed for. The field is not displayed at all to the user. If the field is required the user will not be prompted to enter a value for the field.

Read-Only - This is generally used for statuses after the quote has been completed, such as Order Placed or Received Order. The field is not editable. Whatever value had been entered for the field will be displayed as uneditable text. Even when a custom field is read-only for a user type, a script will change the value when triggered.

Editable - This is generally used for the initial statuses in which the quote is being created, such as Open. The field is displayed in whatever format it was defined in.

The permissions for quote standard fields could as well be set through IronPython scripting. Learn more at Setting Permissions for Quote Standard Fields.

Note

Permissions for the fields Is Primary, Revision, and Owner ID are set through action permissions. Learn more at Workflow Permissions.

The Global Comment Editability and Total fields are maintained via Field, Calculations, Layout. Learn more at Quote Field Editability.

Learn more about setting permissions for the Comment field at Enable Quote and Item Comments.

Add custom permissions

When the Add custom permissions toggle is off, the system applies your previously selected default access level (Editable, Read-Only, or Hidden) to all users.

When this setting is on, you can define access levels for specific user permission type (by user type, market, company, brand, or individual user), by user group, and status. The system applies the default access level to all other users for which custom permissions have not been set.

You can also set permission priorities can based on permission type in the Standard Field Permission Priorities section, using Move to Top and Move to Bottom actions.

Yes
No