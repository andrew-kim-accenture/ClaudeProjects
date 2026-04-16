# Quote Item Custom Field as Checkbox | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/9b78eea4e4c549c68622364ced11def5.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Quote Item Custom Field as Checkbox

This procedure shows you how to customize a quote item custom field to appear as a checkbox.

Procedure
Create a custom field (for example someNameCheckboxCF), of the type Text.

If you want default value (when you enter the quote for first time) of checkbox to be checked set Calculation formula to be true.

If you want default value (when you enter the quote for first time) of checkbox to be unchecked set Calculation formula to be false or leave it empty.

In Pricing/Calculations  Cart Fields Administration for appropriate status and user type set this custom field to be editable.
In QuotesQuotes  Quote Layout Permissions set visibility permission for this custom field.
In UI DesignUI Design  Quote Layout set this custom field to be visible in Cart.
In UI Design  Responsive Templates create a new responsive template.

For Page select Cart, for template set Sections/ItemsTable, set Name and check Default.

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
if (Model.Cells[i].ColumnName == "someNameCheckboxCF") 
{
    <!-- ko template : { name : 'checkBoxTemplate', data: values[@i] }  -->
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
<script type="text/html" id="checkBoxTemplate">
                <div class="pull-right">
                  <input type="checkbox" data-bind="checked: ko.computed({
                                                    read: function(){
                                                    return value() === 'true';
                                                    }, write :function(newValue){
                                                    value(newValue.toString());
                                                    }
                                                    });" />
                </div>
</script>

Yes
No