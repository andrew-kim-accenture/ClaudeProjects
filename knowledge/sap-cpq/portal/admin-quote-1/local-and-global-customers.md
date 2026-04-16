# Local and Global Customers | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/9244e730b68d4aeb93ba54e7df6290ac.html?locale=en-US&state=PRODUCTION&version=2603
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
Local and Global Customers

The types of customer entities available in SAP CPQ are local and global customers.

Note

Customers are available only in Quote 1.0. In Quote 2.0, organizational and transactional relationships are recorded via involved parties.

Local customers can be created either in Manage Customers or by directly adding a customer in the Customer Info quote tab. By default, local customers are visible only to the user who created them. However, their visibility can be expanded to the user’s entire company to via Setup  Customers/Customer Roles  Local Customer Visibility. Local customers can also be automatically created when landing to SAP CPQ from an external system, in which case they are visible to the user who landed to SAP CPQ, and are also affected by the SAP CPQ local customer visibility rules.

Local customers are different from global customers, which are created and maintained by administrators in the Setup, where their visibility is defined in Global Customer Visibility. Global customers can’t be related to any individual user. Instead, they exist on the domain level.

When customers are created via API, local customers are created when the payload contains the OwnerId node, in which case they are assigned to the user with that ID. If the payload doesn’t contain OwnerId, a global customer is created, instead.

Note

Editability of customer roles depends on whether you are the customer owner or not. Ship-to is the only role that is always editable for all users. Other roles are editable only for the respective customer owners.

Related Information
Manage Customers
Global Customers
Local Customer Visibility
Global Customer Visibility
Yes
No