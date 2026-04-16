# Custom Calculations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/522a78ec4fed4a2da279e681fc25beb3.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create a Script
	
Global Script Events
	
Custom Actions
	
Custom Calculations
	
Script Workbench
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Custom Calculations

Administration for custom quote calculations can be found under SAP CPQ Setup  Develop  Custom Quote Calculations.

Note

Documentation for scripting can be found on this page.

When user clicks on sub-menu Custom Quote Calculations, table with all custom quote calculations is displayed. Admin is able to edit calculation by clicking on the ‘Edit’ action button, delete calculation by clicking on the ‘Delete’ action button or create new calculation by clicking on the ‘Add New’ button.

Administrator will be able to define:

Calculation name (required)

Active (checked by default)

Row Type (Cart Item selected by default, Product Type Item or Cart Total)

Script Engine Type (only Python available currently)

Description

Script

Note

Call IQuote.Calculate method to execute the calculation attached to a specified field.

Yes
No