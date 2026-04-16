# Create Custom Field Custom Templates | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/eed44ac6510740eda10f5c1108c4034f.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Header Customizations
	
Configurator Customizations
	
Cart Customizations
	
Quote Custom Fields Customizations


	
Create Custom Field Custom Templates
	
Show Custom Fields in a Separate Section
	
Show Custom Field Value in Shipping Info Form
	
Display Custom Field in Product Type Section
	
Display Custom Field in Product Type Section in Item Total Row
	
Quote Item Custom Fields Customization
	
Cart Items Table Customizations
	
Catalog Customizations
	
Advanced Customization Examples
	
Server Side Rendering
	
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
Create Custom Field Custom Templates

This page contains the procedure for creating custom field custom templates.

Procedure
Create new template Templates/CartCustomFieldTemplate on the Cart page.
Make a copy of the existing templates.
Add your own suffix to the template names.

For example we will add CustomCF:



<script type="text/html" id="CartCustomFieldFreeFormTemplateCustomCF">
    <div data-bind="html: content"></div>
    <span data-bind="text: error, enable: editable" class="required"></span>
</script>

In this example we want to show custom field with id = 57. Name those custom templates wherever you want to use them on Cart page, just by adding this part of HTML:


<!-- ko foreach: $root.customFields -->
       <!-- ko if: $data.id === 57 -->
             <!-- ko template: template + 'CustomCF' -->
            <!--/ko -->
      <!--/ko -->    
<!--/ko -->
Yes
No