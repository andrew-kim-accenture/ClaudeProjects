# Quote Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/08cae7e8960646ee87ed9546e7b58903.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Other Quote Tags
	
User and Customer Information
	
Tags for Rules and Triggers
	
Main Item Price Tag
	
XWS Tag
	
Global Information (GI) Variables
	
Formula Validator
Quote Tags

Quote tags are generally used in visibility and approval rules. They can only be used outside of product configuration and they will not work in product rules, descriptions, and so on.

The first three tables provide information about a quote owner (CO), current user (CU), bill to information (BT), or customer information (CO_ST). Tag syntax for these tables is similar. The quote owner and current user information use the same column names. The bill to information is pulled from the Bill To and End User role in the Billing/Shipping tab of a quote. Customer information is pulled from the Ship To role.

EXAMPLE: [EQ](<*CU_INFO(TERRITORY_ID*>, <*CO_INFO(TERRITORY_ID)*>) – returns whether the current user’s territory Id matches the territory Id of the cart owner. This expression can be used in quote visibility rules to allow users to only see quotes from their own territory.

Yes
No