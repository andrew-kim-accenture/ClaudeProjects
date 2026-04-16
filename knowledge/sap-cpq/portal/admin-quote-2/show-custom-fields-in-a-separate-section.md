# Show Custom Fields in a Separate Section | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/ce4fb3c35c994002b8ad2f17ba959dc0.html?locale=en-US&state=PRODUCTION&version=2603
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
Show Custom Fields in a Separate Section

This procedure shows you how to make custom fields display in a separate section.

Procedure
Create new template inside the section where you want your new section to appear. For example, Sections/CustomFields on the Cart page.
Change this part of template:
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

With this:



<div id="custom-fields-section">
   @*Custom fields*@
   <div data-bind="visible: customFields().length > 0">
      <div class="col-md-12">
         <h3 class="alternate">@Translation.Get("xsltQuoteCartCustomFields")</h3>
      </div>
      <div class="clearfix">
         <div data-bind="foreach: customFields" class="custom-fields">
            <!-- ko if: $data.id !== 53 && $data.id !== 57 -->
            <!-- ko template: template -->
            <!--/ko -->
            <!--/ko -->
         </div>
      </div>
      <br />
      <h3 class="tertiary">My section for custom templates</h3>
      <div data-bind="foreach: customFields" class="custom-fields">
         <!-- ko if: $data.id === 53 || $data.id === 57 -->
         <!-- ko template: template -->
         <!--/ko -->
         <!-- /ko -->
      </div>
   </div>
</div>

Results
In this example we create new section with name My section for custom template. We put custom fields with IDs 53 and 57 in new section and remove those custom fields from regular section.
On this page
Procedure
Results
Yes
No