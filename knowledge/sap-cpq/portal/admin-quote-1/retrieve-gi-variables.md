# Retrieve GI Variables | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/505be3b248124764aa6c6a7fb56240b1.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Product Tags
	
Quote Tags
	
Tags for Rules and Triggers
	
Main Item Price Tag
	
XWS Tag
	
Global Information (GI) Variables


	
Create GI Variables
	
Retrieve GI Variables
	
GI Tags
	
Formula Validator
Retrieve GI Variables

Once a GI has been created, it is accessible from any category, product, or generated document.

Retrieving a value can be done by simply using the tag <*GI(key)*>. This tag can be used anywhere where the value of the GI is needed. In addition, GI variables are accessible by Microsoft Word generated documents (see Document Generation Template). This is done by using the tag «ST_GI(key)». Using this tag in a word quote document will display the value of the specified GI variable.

Retrieve Customer Information
The only way to get customer info for the configuration is using the <*AUX*> tag, customer info table and <*GI(customerID)*> as a condition. When a user does not select a customer, but when the customer gets populated from CRM, it is possible to get customer ID using GI tag <*GI(CUSTOMERID)*>.
Related Information
GI Tags
On this page
Retrieve Customer Information
Related Information
Yes
No