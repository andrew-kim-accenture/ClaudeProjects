# Logged in User Data Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/dd4fee14ac0240d49027096ae3277c48.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Arithmetic Tags
	
Attribute Data Tags
	
External Source Tags
	
Logged in User Data Tags
	
Product Data Tags
	
Sequence Tags
	
Quote Tags
	
Tags for Rules and Triggers
	
Main Item Price Tag
	
XWS Tag
	
Global Information (GI) Variables
	
Formula Validator
Logged in User Data Tags
Tag	Description	Type Retuned	Example


<*VISITORGROUP*>

	

Gives the name of a user group that the currently logged in user belongs to.

	

String

	

[EQ](<* VisitorGroup *>, Webcom) – resolves to true if the currently logged in user is from the Webcom group.




<*VISITORNAME*>

	

Gives the real name of the currently logged in user.

	

String

	

Hello <* VisitorName *> - displays Hello and the user’s full name.




<*VISITORGROUPID*>

	

Gives the group id of the currently logged in user.

	

Number

	

[EQ](<* VisitorGroupID *>, 9) – resolves to true if the currently logged in user’s group id is 9.




<*VISITORID*>

	

Gives the user id of the currently logged in user.

	

Number

	

[EQ](<* VisitorID *>, 112) – resolves to true if the currently logged in user’s id is 112.

Yes
No