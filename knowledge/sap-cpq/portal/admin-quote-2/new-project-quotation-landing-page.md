# New Project/Quotation Landing Page | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/ffe041275bfb49c99911721034c765aa.html?locale=en-US&state=PRODUCTION&version=2603
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
New Project/Quotation Landing Page

After users click New Project/Quotation, the system evaluates three parameters for redirecting users to a specific page.

The parameters in question are the following:

When creating a new quote, require customer to be selected first

Create Empty Quote First - application parameter in General  Application Parameters  Shopping Cart and Quotes.

Default (Pre-populate) with User Info and Default (Pre-populate) with User's Company Info for the Bill To customer role.

If When creating a new quote, require customer to be selected first is on and the two options for prepopulating data on the Customer Role Defaults page are selected, users land into Catalog with an empty quote in the background since the Customer Info tab has been prepopulated. If When creating a new quote, require customer to be selected first is disabled and Create Empty Quote First is TRUE, users land on the Quotation tab of an empty quote.
Note

Whenever When creating a new quote, require customer to be selected first is enabled, regardless of other settings, a new quote is created in the system. The only scenario in which a new quote isn't created is if both When creating a new quote, require customer to be selected first and Create Empty Quote First are disabled.

Related Information
User Types
User Administration
Yes
No