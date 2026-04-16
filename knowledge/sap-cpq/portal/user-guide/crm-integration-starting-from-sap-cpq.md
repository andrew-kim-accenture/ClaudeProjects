# CRM Integration - Starting from SAP CPQ | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/244b097a6cb24e3287b5aa2bc4d9064e.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ User GuideVersion: 2603English
Provide feedback on our search

	
Who is this Guide for?
	
Add Items in Bulk
	
Approval Process
	
Quote Creation
	
Document Generation Journey
	
Load Existing Quotes
	
Quote
	
User Page
	
Register as New User
	
Favorites
	
Accessibility
	
Unlock Account
	
Single Sign-On
	
Effective Date
	
CRM Integration Use


	
CRM Integration - Starting from CRM
	
CRM Integration - Starting from SAP CPQ
	
Quote Collaboration/Comments
	
Revision Management
	
Compare Quotes and Revisions (Quote 2.0)
	
Formula Validator
	
Manage Customers
CRM Integration - Starting from SAP CPQ

This method is used mainly for resellers of a company. It allows them to completely bypass the CRM application and use only SAP CPQ. In this way, the parent company of the resellers can track quotes created by users with opportunities, and forecast based on these opportunities.

Opportunity Creation/Update

Depending on how the administrator has set up the integration, opportunity fields are updated as actions behind the quote actions that you perform. Alternatively, if a new quote has been created then SAP CPQ creates an opportunity with the information from the quote. For instance, when you click Generate Quote, the system exports the data from SAP CPQ to CRM.

Alternatively, the administrator can set it up so that you need to export the data to CRM yourself. The export is done through the Create/Update Opportunity quote action. Performing this action exports the data from SAP CPQ to a new opportunity, or the existing one that the current quote is associated with.

Note

Because the system needs to connect with CRM when exporting the data from SAP CPQ, the process of creating or updating an opportunity from SAP CPQ can take additional time. If CRM response is taking too much time, or if it's not responding, then a message pops up.

Customer Import

When in SAP CPQ, you can create a quote as you normally would. Once on the quote screen, you can import account and contact information from CRM into the appropriate customer role (Bill To, Ship To, End User) through the Customer Info tab.

When integrating SAP CPQ with CRM starting from SAP CPQ, the company user's SAP CPQ account that has been added is used. This company must be associated with an account in CRM. With this connection established, you can browse the partner and child accounts of that account. Then, you can import contacts and accounts that are associated with the account.

Once a contact has been imported, that contact is added as a local customer for the given SAP CPQ account. This customer can be used again without having to be from CRM. If the customer already exists as a local customer for a certain SAP CPQ account, then the information is updated with the information from CRM.

On this page
Opportunity Creation/Update
Customer Import
Yes
No