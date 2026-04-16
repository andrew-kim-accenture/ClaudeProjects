# Setting Up a Landing Page for Users | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/6c83d2a3836048b09ae80556edf0465d.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Users
	
User Types


	
Add a New User Type
	
Setting Up a Landing Page for Users
	
New Project/Quotation Landing Page
	
Permission Groups
	
User Custom Fields
	
Companies
	
Guest User
	
Access Rights
	
Proxy Access
	
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
Setting Up a Landing Page for Users

To define where users land after they exit Setup, log into SAP CPQ and land from CRM, these settings need to be managed.

Start page and Start category in Users   User Types

When creating a new quote, require customer to be selected first - toggle switch in Users   User Types. In previous versions, this option was named Customer Required and it has kept the same behavior.

Default (Pre-populate) with User Info and Default(Pre-populate) with User's Company Info checkboxes in Customers/Customer Roles  Customer Role Defaults for the Bill To customer role. When these options are enabled, the system prepopulates new quotes with the customer bill to information and the company information.

To determine the landing page for a user, the system first evaluates the start page. If the start page isn’t defined, users land into Catalog, regardless of the value of other parameters. If the start page is Catalog - With empty quote and New Quote, the system also evaluates the value of When creating a new quote, require customer to be selected first, Default (Pre-populate) with User Info, and Default(Pre-populate) with User's Company Info. If the selected start page isn’t in the quote context, the parameters aren’t treated and users land to the selected start page.

Note

If When creating a new quote, require customer to be selected first is enabled and the parameters for prepopulating user and company info are on, users land into the Catalog and an empty quote is created in the background.

Related Information
User Types
User Administration
Yes
No