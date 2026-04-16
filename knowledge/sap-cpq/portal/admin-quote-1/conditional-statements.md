# Conditional Statements | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/be5dc52d70b442f687249dca4f3b19f4.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Operators
	
Tags and Expressions
	
CTX Tags
	
Product Tags
	
Quote Tags
	
Tags for Rules and Triggers
	
Main Item Price Tag
	
XWS Tag
	
Global Information (GI) Variables
	
Formula Validator
Conditional Statements

Conditional statements are an integral part of SAP CPQ modeling and configuration. These statements can be used in any part of SAP CPQ.

This includes product modeling areas (rules, hidden calculations, labels, pricing expression, attribute descriptions), workflow areas (approval rules, discounting rules, visibility rules, actions conditions) and any other area of SAP CPQ that has an input area.

Conditional statements are written in an “IF” format: [If](condition){expression if true}{expression if false –note this is optional}[ENDIF]

A basic statement must have a beginning [IF] tag that ends with an [ENDIF] tag. The condition area must contain an expression that will resolve to true or false. If true then any expression in the first set of curly brackets will be used or performed, depending on what is included. If the condition statement is false then any expression in the second set of curly brackets will be used or performed. Since the second set of curly brackets is optional, though, if they are not used when a statement is false then no action will be performed.

Note

Standard mathematical and programming operators such as >, <, =, = cannot be used in conditional statements. SAP CPQ uses its own operators to perform these actions.

Yes
No