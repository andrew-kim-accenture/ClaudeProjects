# Quote Item Custom Field as Dropdown | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/67d86880f21e4e9aa5af9690abf04937.html#results-1
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
	
Quote Item Custom Fields Customization


	
Quote Item Custom Field as Checkbox
	
Quote Item Custom Field as Dropdown
	
Display Image in Item Custom Column
	
Use Item column value in first column
	
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
Quote Item Custom Field as Dropdown

This procedure shows you how to customize a quote item custom field to appear as a dropdown.

Procedure
Create custom field (for example someNameDropDownCF), and set its type to Text.
In Pricing/Calculations  Cart Fields Administration for appropriate status and user type set this custom field to be editable.
In Quotes  Quote Layout Permissions set visibility permission for this custom field.
In UI Design  Quote Layout set this custom field to be visible in Cart.
In UI Design  Responsive Templates create new responsive template. For Page select Cart, for template set Sections/ItemsTable, set Name and check Default.
In new template change this part:
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
if (Model.Cells[i].ColumnName == "someNameDropDownCF") 
{
    <!-- ko template : { name : 'dropDownTemplate', data: values[@i] }  -->
    <!-- /ko -->
}
else 
{
    <td data-title="@Model.Cells[i].CellLabel">
      <!-- ko template : { name : values[@i].template, data: values[@i] }  -->
      <!-- /ko -->
   </td>
}


At the end of template add this part:


<script type="text/html" id="dropDownTemplate">
    <div class="pull-right">
        <select data-bind="options: ko.observable(['Status 1', 'Status 2', 'Status 3']), value: value"></select>
    </div>
</script>

Results
In this example there are three statuses - Status 1, Status 2 and Status 3 in observable array that will be displayed as options in dropdown, but you can create tour own custom observable array.
On this page
Procedure
Results
Yes
No