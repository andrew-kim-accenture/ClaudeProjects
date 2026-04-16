# Show Custom Field Value in Shipping Info Form | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/2e49723ca2ab4f969a399dde240ab907.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Show Custom Field Value in Shipping Info Form

This procedure shows you how to make the custom field value display in the Shopping Info form.

Procedure
Create new template CustomerDataTemplate in the Customers page.
Change this part of template:


<div data-bind="foreach: fields">
   <div class="form-group">
      <label class="col-md-5 col-xs-6 control-label" data-bind="text: label, css: { 'required': isRequired }" />
      <div class="col-md-7 col-xs-6">
         <!-- ko if: isListItem() -->
         <select data-bind="options: items, optionsText: 'label', optionsValue: 'value', value: listItemValue" class="form-control" />
         <!-- /ko-->
         <!-- ko if: isTextField() && fieldId !== 'Active'-->
         <input type="text" data-bind="id: fieldId, value: value" class="form-control" />
         <!-- ko if: isPostcodeLookup-->
         <a href="#" data-bind="click: $parent.findAddress">[@Translation.Get("xsltFindAddress")]</a>
         <!-- /ko -->
         <!-- /ko-->
         <!-- ko if: isSpan() && fieldId !== 'Active'-->
         <span data-bind="id: fieldId, text: value" />
         <!-- /ko-->
      </div>
   </div>
</div>


With this:



<div data-bind="foreach: fields">
   <!-- ko if: $data.fieldId !== 'someFieldOnForm'-->
   <div class="form-group">
      <label class="col-md-5 col-xs-6 control-label" data-bind="text: label, css: { 'required': isRequired }" />
      <div class="col-md-7 col-xs-6">
         <!-- ko if: isListItem() -->
         <select data-bind="options: items, optionsText: 'label', optionsValue: 'value', value: listItemValue" class="form-control" />
         <!-- /ko-->
         <!-- ko if: isTextField() && fieldId !== 'Active'-->
         <input type="text" data-bind="id: fieldId, value: value" class="form-control" />
         <!-- ko if: isPostcodeLookup-->
         <a href="#" data-bind="click: $parent.findAddress">[@Translation.Get("xsltFindAddress")]</a>
         <!-- /ko -->
         <!-- /ko-->
         <!-- ko if: isSpan() && fieldId !== 'Active'-->
         <span data-bind="id: fieldId, text: value" />
         <!-- /ko-->
      </div>
   </div>
   <!-- /ko-->
   <!-- ko if: $data.fieldId === 'someFieldOnForm'-->
   <div class="form-group">
      <label class="col-md-5 col-xs-6 control-label" data-bind="text: label, css: { 'required': isRequired }" />
      <div class="col-md-7 col-xs-6">
         <div data-bind="foreach: $root.customFleldsModel.customFields" class="custom-fields">
            <!-- ko if : $data.id === 50 -->
            <span data-bind="html: content" />
            <!-- /ko -->
         </div>
      </div>
   </div>
   <!-- /ko-->
</div>

Results
In this example we write value of custom field with ID equal to 50 into field with name someFieldOnForm.
On this page
Procedure
Results
Yes
No