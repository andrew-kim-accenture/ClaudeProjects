# GI Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/df0a3944f3844435b080e9bb1373df03.html?locale=en-US&state=PRODUCTION&version=2603
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
GI Tags
Tag	Description


<*setGI(key,value)*>

	

Sets Global Info value in a map with key.




<*GI(keyV)*>

	

Gets Global Info from global cashe under key, evaluates to null if there is no info under key.




<*GI*>

	

Sets Global Info value in a map.




<*remGI(key)*>

	

Removes key.




<*clearGI*>

	

Removes all globals.




<*TESTGI(keyValue)*>

	

Returns 1 if GI(keyValue) is defined else returns 0 purpose: it is more convinient to test for the existence of a variable before using it in calculations/conditions.




<*GI(CUSTOMERID)*>

	

Return Customer ID.




<*getAttNumVal(attribute name)*>

	

Read attributes numeric value directly from the database (from the cart items table).




<*GI(QUOTESTATUS)*>

	

Returns information about Quote Status. If the quote is not yet created then ‘default status’ (order status marked as default) will be returned. If a user changes the status of a quote and performes an action that is not marked as autoreconfigure, GI(QUOTESTATUS) will remain unchanged.

Related Information
Create GI Variables
Retrieve GI Variables
Yes
No