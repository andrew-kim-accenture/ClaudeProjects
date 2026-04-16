# Display Custom Field in Product Type Section | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/42e1f6553ba449e497456a0891a504fd.html?locale=en-US&state=PRODUCTION&version=2603
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
Display Custom Field in Product Type Section

This procedure shows you how to make a custom field display in the Product Type section.

Procedure
Create new template Sections/ProductTypes in the Cart page.
Change this part of template:


<!-- ko foreach: values -->
  <td data-bind="attr: { 'data-title': $root.productTypes.columnLabels()[$index()] }">
      <!-- ko template : { name : template }  -->
      <!-- /ko -->
  </td>
<!-- /ko -->



With this:



<!-- ko if: $data.productTypeName !== 'Hardware' -->
  <!-- ko foreach: values -->
    <td data-bind="attr: { 'data-title': $root.productTypes.columnLabels()[$index()] }">
          <!-- ko template : { name : template }  -->
        <!-- /ko -->
    </td>
  <!-- /ko -->
<!-- /ko -->
<!-- ko if: $data.productTypeName === 'Hardware' -->
  <!-- ko foreach: values -->
    <!-- ko if: $data.column.name === 'DiscountPercent' -->
    <td>
        <!-- ko foreach: $root.customFields -->
          <!-- ko if: $data.id === 55 -->
            <input data-bind="value: content, enable: editable, incrementalTabIndex: 'customFields'" class="form-control" />
            <span data-bind="text: error, enable: editable" class="required"></span>
          <!--/ko -->
        <!--/ko -->
    </td>
    <!-- /ko -->
  <!-- ko if: $data.column.name !== 'DiscountPercent' -->
    <td data-bind="attr: { 'data-title': $root.productTypes.columnLabels()[$index()] }">
        <!-- ko template : { name : template }  -->
        <!-- /ko -->
    </td>
  <!-- /ko -->
  <!-- /ko -->
<!-- /ko -->

Results
In this example we write value of custom field with ID equal to 55 into column in section Product Types with name DiscountPercent, but only for product type Hardware.
On this page
Procedure
Results
Yes
No