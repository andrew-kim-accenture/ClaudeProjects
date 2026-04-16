# Template Guidelines | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/a4c799170a1842b99fb264b5544fd970.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Import/Export


	
Bulk Product Import/Export
	
Bulk User Import/Export


	
Import Through Template


	
Template Guidelines
	
Update Existing Users
	
Filter and Export Users
	
Bulk Pricebook Import/Export
	
Bulk Product Translation Import/Export
	
Bulk Business Partner Import/Export
	
Attribute Import
	
Import/Export Attribute Translations
	
Companies Export/Import
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Template Guidelines

This topic contains the instructions for filling out the templates for user bulk import.

The Excel template for Bulk Import contains three sheets:

Users - the import sheet with columns that match fields in SAP CPQ.

IMPORTANT INFO - restrictions and requirements for each field.

Timezones - timezone IDs and descriptions.

The Users sheet is a container for information related to users that are to be imported. Each user is placed in a separate row. The system uses IDs to match the records in the template to existing users in SAP CPQ. When importing new users, the column ID should not be populated. However, when updating the existing users, you should not change the ID in the exported file. If you delete or modify the ID of an existing user during editing, the user may be duplicated in SAP CPQ.

Note

The order of columns and column names must stay unchanged, otherwise the import will not be successful.

The Password, Must Change Password and Password Locked columns don’t exist in exported templates and the import of those columns isn’t allowed. The exported templates contain the IsSSOUser column, the value of which should be set to TRUE if a user is going to log in using the Federated Single Sign-On. The default value of IsSSOUser cells is FALSE, and SAP CPQ sets them to FALSE if they are imported without any values.

A populated template that has already been imported into SAP CPQ contains the Status column indicating if a user is successfully imported. In case of an error, a message explains what caused it. Additionally, users that have not been imported are highlighted in red in the template. Unlike in the standard import where you supply the ID for the managing, ordering and approval parents, in Bulk Import you supply their usernames. Also, in Bulk User Import you can define the default market, default dictionary, date format, number format and the expiration date for the underlying users.

Related Information
Bulk User Import/Export
User Administration
Yes
No