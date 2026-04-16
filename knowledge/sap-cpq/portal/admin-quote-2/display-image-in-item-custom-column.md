# Display Image in Item Custom Column | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/dc27ac33268b41429b91e66e5b548be1.html?locale=en-US&state=PRODUCTION&version=2603
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
Display Image in Item Custom Column

This procedure shows you how to add an image to the item custom column.

Procedure
Go to Setup  General  File Management and upload an image in folder Additional Files.
Create custom field (for example CFWithPicture), set its type to Text and for calculation formula set picture path.

For example: https://yourdomain.cpq.cloud.sap/mt/DEFAULT/additionalfiles/image1.jpg

This example is for devstable environment, default domain and picture with name image1.jp is uploaded in folder additionalfiles

In Quotes  Quote Layout Permissions set visibility permission for this custom field.
In UI Design  Quote Layout set this custom field to be visible in Cart.
In UI Design  Responsive Templates create a new responsive template. For Page select Cart, for Template set Sections/ItemsTable, set Name and check Default.
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
@if(Model.Cells[i].ColumnName == "CFWithPicture")                                 
{
  <img data-bind="attr : { src : values[@i].value}"></img>
} else
{
  <!-- ko template : { name : values[@i].template, data: values[@i] }  -->
  <!-- /ko --> 
}

Results
In this example we change the way of rendering quote item custom field if field name is CFWithPicture. For that custom field we want to render image with path defined in its calculation formula.
On this page
Procedure
Results
Yes
No