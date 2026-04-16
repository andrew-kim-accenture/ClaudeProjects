# CRM Integration - Starting from CRM | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/231a9f6e79064c9796ada2c7f399d6e4.html?locale=en-US&state=PRODUCTION&version=2603
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
CRM Integration - Starting from CRM

This integration method allows you to access SAP CPQ, along with all the quotes and products, from within CRM. Accessing CRM and keeping track of opportunities outside of SAP CPQ is also easier when this method is employed.

You must log into your CRM, then access SAP CPQ from an opportunity. SAP CPQ is then used to create a quote, import the customer information from CRM, then export the price, line items, status, and any other information set up by the administrator to populate the opportunity.

Opportunity Creation/Update

When starting from CRM, SAP CPQ uses the existing opportunity that came with CRM. You can either use the existing opportunities, or new ones, to access SAP CPQ. The values entered for the fields in CRM are passed to the SAP CPQ quote. For instance, the Opportunity Name may be passed into a custom field in SAP CPQ. The fields that are passed from the opportunity to SAP CPQ are controlled by the administrator. So, different fields, or none of these fields, may be passed into a quote on your installation.

Once the opportunity has been created, you can create a new quote in SAP CPQ by clicking the custom link. The link label is not universal. Ask your administrator if you are unsure which link to use.

Clicking the link opens SAP CPQ within the same window. If this is the first time using this integration method then SAP CPQ asks you to login with your SAP CPQ account login information. After logged in once this way, SAP CPQ makes the connection between the CRM account and the SAP CPQ account, providing you with a single sign-on session every time you access SAP CPQ.

If the session times out while in SAP CPQ, the login screen appears in certain situations. This page can be avoided by reopening the opportunity and clicking the link that brings up SAP CPQ again. You are then logged in through Single Sign On.

Note

This connection between SAP CPQ account and CRM account can be broken by the administrator. If this happens, you need to log into SAP CPQ again, as you had done the first time.

If the opportunity you are coming from has already been associated with a quote in SAP CPQ, then that quote opens up in SAP CPQ. If this opportunity hasn't been associated with quote yet, then the Home screen is displayed where the new quote can be created. You can create a quote in the usual manner, and than go to the quote area where you can import the customer information from the opportunity.

To associate a quote with the opportunity, click the Create/Update Opportunity action. In this way, you are establishing the association in SAP CPQ between that quote and the opportunity you came from. The next time you click the custom link in the opportunity to open up SAP CPQ, this quote is displayed.

If the quote is already associated with the opportunity, the opportunity is updated with the quote’s information. This includes the price, line items, custom fields, quote status, and anything else that administrator has set up. Specifically, though, Opportunity Name and Closing Date are passed to the opportunity. Generally, these values are pulled from custom fields in SAP CPQ. If these fields aren't available, or if the values aren't entered for them, then the Opportunity Name is Webcom-QuoteNumber and the Close Date is 6 months from the current date.

When a quote is associated with the opportunity, any changes made to the quote are updated to the opportunity when Create/Update Opportunity is clicked. If a new quote is created and Create/Update Opportunity is clicked, then that quote is associated with the opportunity. In addition, when coming from the CRM application, if a user goes to a different quote than the one that is associated with the opportunity, two things can happen. If the newly-opened quote already has an opportunity associated with it, and Create/Update Opportunity is clicked, the opportunity is updated with that quote’s information. and not the opportunity from which you came from. If the newly-opened quote doesn't have an opportunity associated with it, then when Create/Update Opportunity is clicked, the opportunity from which you came from is updated with this quote’s information.

Customer Import

When in SAP CPQ, you can create a quote as you would normally do. Once on the quote screen, you can import the account and contact information from CRM into the appropriate customer role (Bill To, Ship To, or End User) through the Customer Info tab.

The customer roles, Bill To, Ship To, End User, can be automatically filled with the opportunity account and the contacts' data, depending on how the administrator has set up the integration. So, the data doesn't need to be populated automatically.

If not, then you can import the opportunity account or contact data. Doing this creates a new local customer for the given SAP CPQ account. This customer can be used again without being imported again from CRM. If the customer already exists as a local customer for the user's SAP CPQ account, the information is updated with the information from CRM.

On this page
Opportunity Creation/Update
Customer Import
Yes
No