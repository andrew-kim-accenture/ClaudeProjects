# Create GI Variables | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/668bc25c55164339a521bc62fc5da899.html?locale=en-US&state=PRODUCTION&version=2603
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
Create GI Variables

GI Variables can be created in two ways: explicitly and implicitly.

Explicitly, GI variables are created by using the tag setGI in product rules, triggers, and so on.

To create a GI variable within an expression, use the tag <*setGI(key,value)*>. This tag can be used anywhere that an expression can be built: rules, triggers, calculated fields, and so on. To create the GI, enter a key by which the value is retrieved, then enter the value that the GI holds. The value can be text or numeric, from a static value to a dynamic value using another expression. For example, to create a GI in an expression, enter this formula: <*setGI(k100,100)*> (key = k100, value = 100).

Implicitly, GI variables are created via cart aggregates and quote custom fields.

To create GI variables this way, go to Setup  Quotes  Cart Level Aggregates. By clicking Add New, the window for creating a new GI variable displays. Specify the following:

GI Name – The key name by which the value of GI is retrieved.

Expression – Enter value for GI. It can be any text, numerical value, or expression.

A GI variable is also created implicitly when a quote custom field is created in Setup  Quotes  Custom Fields (see the chapter on Quote Custom Fields).
Related Information
Retrieve GI Variables
GI Tags
Yes
No