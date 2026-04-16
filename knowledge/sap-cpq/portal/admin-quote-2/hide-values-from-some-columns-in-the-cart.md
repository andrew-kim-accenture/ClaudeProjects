# Hide Values from Some Columns in the Cart | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/f7670c7a4ef44d86bffb43a786189c7b.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Quote Item Custom Fields Customization
	
Cart Items Table Customizations


	
Hide Values from Some Columns in the Cart
	
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
Hide Values from Some Columns in the Cart

This procedure shows you how to hide values from some columns in the quote.

Procedure
Create new template Sections/ItemsTable in the Cart page.
Change this part of the template:


<td data-title="@Model.Cells[i].CellLabel">
   <!-- ko template : { name : values[@i].template, data: values[@i] }  -->
   <!-- /ko -->
</td>


With this:



<td data-title="@Model.Cells[i].CellLabel">
    <!-- ko if : $data.itemDescription.productTypeName() === 'Accessories' -->
      @if (Model.Cells[i].ColumnName != "someNameColumn")
      {
          <!-- ko template : { name : values[@i].template, data: values[@i] }  -->
          <!-- /ko -->
      }
    <!-- /ko -->
  <!-- ko if : $data.itemDescription.productTypeName() !== 'Accessories' -->
      <!-- ko template : { name : values[@i].template, data: values[@i] }  -->
      <!-- /ko -->
    <!-- /ko -->
</td>

Results
In this example we want to hide values from column with name someNameColumn, but only for products which type is Accessories.
On this page
Procedure
Results
Yes
No