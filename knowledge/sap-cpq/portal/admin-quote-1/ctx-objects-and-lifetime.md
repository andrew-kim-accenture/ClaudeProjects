# CTX Objects and Lifetime | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/4e4bad5715d84b11818202a4d5e2def9.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags


	
Conditional Statements
	
Tags and Expressions
	
CTX Tags


	
CTX Date Format Strings
	
CTX Objects and Lifetime
	
Enhanced Language Tags
	
SOD Details
	
Product Tags
	
Quote Tags
	
Tags for Rules and Triggers
	
Main Item Price Tag
	
XWS Tag
	
Global Information (GI) Variables
	
Formula Validator
CTX Objects and Lifetime

A CTX tag returns the value of an object property only if that object is already loaded. If the object doesn’t exist or is not loaded the returned value will be empty string.

The Quote object is loaded in the edit action. It exists on the quote, quote property, customers, and all other cart tab pages. The Quote object is also present in the Configurator, with the exception that it doesn’t exist if the user clicked new quote and is configuring the first item. The Quote object exists in the Catalog, but only if add item was executed.

The Quote.CurrentItem object refers to the cart item being iterated in the loops. If used outside of the loop it will use the line item that is being added to the quote. It can be used in discount rules and CRM mappings.

The CTX (Quote.CurrentItem) formula can be used in General Attribute Mappings (with Evaluate per Line Item selected) to send to the variant pricing specific quote item custom field (QICF) from the line item that is being added to the Quote.

The SOD object exists if the SOD integration is enabled and current quote is attached to an opportunity.

The Visitor object is created after the user logs in. It is present the whole all time while user session is valid.

Yes
No