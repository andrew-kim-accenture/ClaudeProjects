# Customize Templates | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/0504fd066650400d899197a5ea2dd7e9.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration
	
Business Partners
	
User Administration
	
User Interface Design


	Setup Help

	
Branding
	
Catalog Layout
	
Responsive Templates


	
Responsive Template Customization in Setup


	
Customize Templates
	
Razor Validation in Responsive Templates
	
Limiting Customized Templates to Specific User Groups
	
Responsive Design Customizations
	
Template Versions
	
Freeze Templates
	
Obsolete Features
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Customize Templates

Templates can be customized in the Responsive Templates page (Setup  UI Design  Responsive Templates) by copying the provided original template, editing it and making it Default in the environment.

Context

We recommend that you avoid template customizations in your environments. SAP CPQ UI design is regularly updated, so each time you customize a template, the risk of breaking changes increases. If you do customize templates, try to add small changes to them.

Procedure
Go to Setup  UI Design  Responsive Templates.

A page with listed customized templates and the Freeze Templates feature displays.

Click Add New.

The Template tab is opened. Here, you can select an original template and customize it.

From the Page dropdown, select the page which you wish to change.
From the Template dropdown, select the template you wish to customize.

The template content is displayed in the Default template box.

In the Name field, write the name of the customized template.

The list of invalid characters includes, but is not limited to: ASCII/Unicode characters 1 through 31, quotation marks (“), less than (<), greater than (>), pipe (|), backspace (\b), null (\0) and tab (\t).

Note

Even though slash (/) is an invalid character, the templates that contain it in their names, and were created before the 1911 release, remain unchanged. You can properly manage and use them without removing the character from their name.

(Optional) Write the template’s description.
Click Copy default template below the Default template box to copy the CSS file into the New Template box.

The template is copied into the designated box.

Apply the changes to the template in the New Template box.
Note

Self-closing tags like <br /> aren't supported in responsive templates.

Enable the Is Default toggle if you wish to apply the custom template in SAP CPQ instead of the original one.

If you enable the Is Default toggle, the template version which was previously default will be deselected.

Click Save.
Next Steps

If you wish to reuse a customized template on several different pages, simply add the @Html.PartialCustomTemplate(“Customized_Template_Name”) function to another template in which you want it to be displayed.

On this page
Context
Procedure
Next Steps
Yes
No