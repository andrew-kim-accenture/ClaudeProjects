# Use Item column value in first column | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/056a988111f04d459f0880646630bf84.html?locale=en-US&state=PRODUCTION&version=2603
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
Use Item column value in first column

This procedure shows you how to make an item column value display in the first columnn.

Context

We are assuming that like in previous example there is the same Item Custom field named CFWithPicture that contains URL. We will add this custom field in first column.

Procedure
In place where we want to display this picture (form quote item custom field) add this part of code in the Sections/ItemsTable template on the Cart page:


<img data-bind="attr : { src : values.filter(function (value) { return value.column.name === 'CFWithPicture' })[0].value }"></img>

We use knockout projections function filter to get column value where column name is CFWithPicture. We could expand our example with hidding this column form items table. We need to remove it from header. Change this part of code:


<thead>
    <tr style="height: 20px;">
        <th rowspan="2" data-bind="visible: canManageItems" class="manage-items">
            <input type="checkbox" class="custom" data-bind="checked: selectAll"/>
            <span class="lbl"></span>
        </th>
        <th rowspan="2">@Translation.Get("docItem")</th>
        @*Complex columns have 2 additional columns in next row sot their rowSpan is 1 and colSpan is 2*@

        @foreach (CartItemColumnVm column in Model.Columns)
        {
            if (column.IsComplex)
            {
                <th colspan="2" rowspan="1">@column.HeaderLabel</th> 
            }
            else
            {
                <th colspan="1" rowspan="2">@column.HeaderLabel</th> 
            }
        }
    </tr>
    <tr>
        @foreach (CartItemColumnVm column in Model.Columns)
        {
            if (column.IsComplex)
            {
                <th>@Translation.Get("xsltNRC")</th>
                <th>@Translation.Get("xsltMRC")</th>
            }
        }
    </tr>
</thead>


With this:



<thead>
    <tr style="height: 20px;">
        <th rowspan="2" data-bind="visible: canManageItems" class="manage-items">
            <input type="checkbox" class="custom" data-bind="checked: selectAll"/>
            <span class="lbl"></span>
        </th>
        <th rowspan="2">@Translation.Get("docItem")</th>
        @*Complex columns have 2 additional columns in next row sot their rowSpan is 1 and colSpan is 2*@

        @foreach (CartItemColumnVm column in Model.Columns)
        {
          if (column.Name != "CFWithPicture")
          {
              if (column.IsComplex)
              {
                  <th colspan="2" rowspan="1">@column.HeaderLabel</th> 
              }
              else
              {
                  <th colspan="1" rowspan="2">@column.HeaderLabel</th> 
              }
          }
        }
    </tr>
    <tr>
        @foreach (CartItemColumnVm column in Model.Columns)
        {
            if (column.IsComplex && column.Name != "CFWithPicture")
            {
                <th>@Translation.Get("xsltNRC")</th>
                <th>@Translation.Get("xsltMRC")</th>
            }
        }
    </tr>
</thead>

We need to skip it when rendering cells. Change this part of code:
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
if(Model.Cells[i].ColumnName != "CFWithPicture")                                 
  {
  <td data-title="@Model.Cells[i].CellLabel">
     <!-- ko template : { name : values[@i].template, data: values[@i] }  -->
     <!-- /ko -->
  </td>
}

On this page
Context
Procedure
Yes
No