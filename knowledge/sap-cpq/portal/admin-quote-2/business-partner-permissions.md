# Business Partner Permissions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/5c98b854c1ee4351906dfc76e70c6fc9.html?locale=en-US&state=PRODUCTION&version=2603
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


	
What are Business Partners and Partner Functions?
	
Involved Parties and Customers – Differences
	
Create Business Partner in SAP CPQ


	
Business Partners General Fields
	
Business Partner Custom Fields
	
Business Partner Sales Area Tab
	
Business Partner Permissions
	
Managing Relationships Between Business Partners
	
Create Business Partner in External Systems and Import into SAP CPQ
	
Partner Functions
	
Create Partner Functions in External Systems and Import into SAP CPQ
	
Synchronize Business Partners and Partner Functions
	
Involved Parties
	
Bulk Business Partner Import/Export
	
Business Partner Relationship Category
	
Bulk Delete Business Partners
	
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
Business Partner Permissions

You can create rules to define which users have the permissions to access and edit business partners.

Note

Before any business partner permissions are defined, no business partners are visible to any users. An easy way to make all business partners available to all users is to create a rule in which you will select all available permission groups and enable the switch All business partners are visible to selected groups.

Go to Setup  Business Partners   Business Partner Permissions.

Click Add New to create a new rule.

In Name, enter a name for the rule.

Enable the Active switch to make the rule active in the system.

Move the permission groups which the rule is going to affect from available to selected.

Enable the switch All business partners are visible to selected groups to make all business partners visible to the groups selected in the previous step.

Alternatively, if you disable the switch, the Visibility conditions fields display, where you can create a more complex rule.

Under Visibility conditions, create a rule to define the conditions under which business partners are visible to the selected groups.

For example, you can create the following formula to make sure that a logged-in user belonging to a selected permission group can only access business partners from their own country: Country Equals <* CU_INFO(COUNTRY_ABBREVIATION) *>

Click Save.

Users will now be able to access business partners on the quote in the way that you have defined in this rule.

Yes
No