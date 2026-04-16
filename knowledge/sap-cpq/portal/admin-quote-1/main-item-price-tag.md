# Main Item Price Tag | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/981c1b5b75f8407db90dad75278e7748.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Formula Validator
Main Item Price Tag

The purpose of this feature is to develop new product tag that will return product price excluding line items.

On user side of the application, implemented tags return:

Unit Price of the main item without line items. The tag is <*MainItemUnitPrice*> and it returns the same value as <*TotalPriceWoLI *>.

Extended Price of the main item without line items. Tag is <*MainItemPrice*> and it returns {<*TotalPriceWoLI *> * <* ItemQuantity *>}.

Description	Tag


Main Item Price Without Line Items (Unit)

	

<*MainItemUnitPrice*>




Main Item Price Without Line Items (Extended)

	

<*MainItemPrice*>

In Debugger opened for product configuration, tag can be found under Variables.

Yes
No