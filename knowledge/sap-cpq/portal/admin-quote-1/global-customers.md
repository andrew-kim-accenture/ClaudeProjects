# Global Customers | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/b942125133c74d4c87ce1a1ea83d5883.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration


	
Customer Field Permissions
	
Customer Actions
	
Customer Custom Fields
	
Customer Role Defaults
	
Local and Global Customers
	
Local Customer Visibility
	
Global Customer Visibility
	
Global Customers
	
Postal Code Lookup
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Global Customers

Global customers are customers managed by administrators. By default, they aren't visible to any users, but this behavior can be altered with visibility rules.

Note

Customers are available only in Quote 1.0. In Quote 2.0, organizational and transactional relationships are recorded via involved parties.

Visibility rules can be created to make global customers available to users. For more information on global customer visibility, see the chapter on Global Customer Visibility. Global customers are managed through the link under Customers/Customer Role administrator menu. The global customers administration screen gives you the option to edit or delete existing global customers.

Adding a new global customer is possible by clicking the Add New button. Standard fields are available when defining the customer. Fields such as Address, City, ZIP, and Country/Region are required because these fields are most often used in visibility rules. If the Company entered has CRM account associated with it, then the CRM Account Id and/or CRM Contact Id can be entered.

You can also fill out the Bill to Role custom fields and End User Role custom fields that appear in the Customer Info tab in the quote. To define them and decide which fields are displayed on the Global Customers section in the Setup and on the Customer Info tab in the quote go to the Customer Custom Fields help page. Global customers cannot be edited in the Customer Info tab via the Bill To Role and End User Role, only via the Ship To Role.

To find the CRM ID for either field, click CRM Lookup. The resulting pop-up window displays the results of the CRM Lookup. The popup window displays the results of the CRM Lookup. When CRM item is chosen from the window, the Id field is automatically populated with the CRM Id. Leave the search field blank to display all the CRM items, accounts or contacts.

Note

The administrative user must be defined in the CRM Administrator Account in order for the CRM Lookup to work correctly.

Ensure the Active field is checked to allow the customer to be available to those users with visibility rights. This field can be helpful if a user wishes to deactivate a customer without deleting the data altogether.

Yes
No