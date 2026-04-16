# PartialWithNameAsComment Function | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/327c0ae146504bc4936c890e4497dd96.html#procedure
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


	Setup Help

	
Branding
	
Catalog Layout
	
Quote Layout
	
Responsive Templates


	
Responsive Template Customization in Setup
	
Responsive Design Customizations


	
Prerequisites
	
Knockout Extension Functions
	
Customization Examples
	
Advanced Customization Examples
	
Server Side Rendering


	
Translation function
	
PartialWithNameAsComment Function
	
How to Reuse Custom Templates
	
Url.MTContent
	
Manage Custom CSS/JS Files with File Manager
	
Upgrade Templates to Newer Versions with Newer Releases
	
Template Versions
	
Freeze Templates
	
Obsolete Features
	
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
PartialWithNameAsComment Function

Function PartialWithNameAsComment renders the specified partial view as an HTML-encoded string and adds the name of file as a comment in html.

Context

Syntax:



@Html.PartialWithNameAsComment(partialViewName)

@Html.PartialWithNameAsComment(partialViewName, model)

@Html.PartialWithNameAsComment(partialViewName, viewData)

@Html.PartialWithNameAsComment(partialViewName, model, viewData)

These functions will render the partial view and add the name of the source file as a HTML comment.

We want to add a custom cshtml template on our main page, but we would also like to see a message that from a certain part in our main page begins the custom template part. That message will be visible as an HTML comment when debugging our page in the browser.

Procedure
Create new template.
In your main page add the following part:

XML:



@Html.PartialWithNameAsComment("CustomTemplateCF")
When debugging the main page in the browser you should see:
On this page
Context
Procedure
Yes
No