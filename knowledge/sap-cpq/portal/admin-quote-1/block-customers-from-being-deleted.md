# Block Customers from Being Deleted | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/101958933e36446e94fc90cf45444edf.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security


	Setup Help

	
DKIM Support for Outbound Emails
	
Automatic Data Deletion


	
Blocked Data


	
Block Customers from Being Deleted
	
Block Quotes from Being Deleted
	
Block Users from Being Deleted
	
Block Business Partners from Being Deleted
	
General Deletion
	
Audit Trail Deletion
	
Personally Identifiable Information
	
Personal Data Log
	
WSDL and Certificate Management
	
Credential Management
	
Trusted Applications
	
Password Policy
	
Content Security Policy in SAP CPQ
	
Multi-factor Authentication
	
Security Recommendations
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Block Customers from Being Deleted

You can block customers from being deleted.

To prevent customers from being deleted:

Go to Setup  Security  Data Deletion.

A new page displays.

In Blocked Data  Blocked Customers, enter either the first name, last name, or email address of the customer you want to block from deletion.

The field offers autocomplete suggestions as you start typing a search query. Customers matching the input are displayed as suggestions. Alternatively, you can select a customer from the dropdown list.

Click Save.

A confirmation message displays.

Restrictions for Blocked Customers
When you block a customer:

The customer details can’t be edited. You can only view the details.

The customer can’t be deleted manually or via the API.

The customer can’t be added to quote.

On the Customer Info tab, the blocked customer doesn’t appear in autocomplete suggestions. Moreover, when adding customers via Lookup, a customer’s blocked status is displayed in the Actions column.

In case a customer was first attached to a quote and got blocked afterwards, if a user performs certain actions on the quote that process the customer information (for example, generate documents or place order), a message displays, notifying the user that the customer is blocked and that another customer should be added to the quote.

Yes
No