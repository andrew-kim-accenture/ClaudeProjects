# Quote Custom Sections | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/4f794e8185ea41f3a387e34940f54413.html?locale=en-US&state=PRODUCTION&version=2603
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


	Setup Help

	
Fields, Calculations, Layout


	
Quote 2.0 Calculations
	
Quote Custom Sections
	
Quote Layout
	
Quote Layout Permissions
	
Item Types
	
Shipping
	
Effective Date on Quote Item
	
Document Generation
	
Custom Quote Tabs
	
Quote Tables
	
Quote Fields
	
Quote Tab Permissions
	
Quote List Settings
	
Bulk Quote Deletion
	
Quote Visibility
	
Quote Acceptance Settings
	
Partner Functions
	
Solution Design
	
Quote Teams
	
Filtering Items in Quote
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Quote Custom Sections

Admins can now create sections on Quote tabs in Quote 2.0 to logically group custom fields and quote tables based on business needs. When defining fields or tables, they can assign them to specific sections, streamlining the layout and improving navigation. This eliminates the need to display all fields and tables directly on the tab and is applicable across all Quote tabs, including the Quotation tab, for a better quoting experience.

Sections

Sections allow you to logically group custom fields and/or quote tables into categories based on their nature and purpose. This improves navigation and streamlines the quoting process by addressing the limitations of displaying all fields and tables directly on a tab. Sections are available across all tabs, both standard and custom.

Note

If custom templates are in use, they must be adapted to ensure the new sections display correctly and to prevent template issues.

Creating a Custom Section

Navigate to Setup   Quotes  Fields, Calculations, Layout   Custom Sections and select Add New option.

Define the following details:

Section Name

Tab to which the section will be added.

Add Custom fields or Quote tables to section

Note

One custom field or quote table can only be assigned to one section on one tab (standard Custom fields section included)

In order to make this section visible to users, it needs to be added to Quote Layout. Go to Setup   Quotes   Layout and select option Add Sections. On pop-up with list of available sections select appropriate section.

Setting Permissions for Custom Sections
It is possible to define permission rules for custom sections that will control which users will be able to see which section. This is done in following way:

Go to Setup   Quotes   Layout Permissions

Select appropriate permission group, user type or other property used for permissions

In Sections menu select sections that should be visible to users assigned to permission group, user type or other property used for permissions selected in previous step

Note

Permission for custom fields or quote tables are following the same restrictions like previously set on standard section

Note

Responsive design customizations are available for Quote Custom sections.

Update of Responsive Design templates for Quote Custom Sections

If customized templates are used for templates Cart   CartPage   CustomFieldsPage, you need to perform changes described below in order to use Quote Custom sections.

In customized template Cart   CartPage :

Add these lines from the 15th line:



@Html.PartialWithNameAsComment("Templates/CartCustomFieldTemplates")                    
@if (CartController.HasQuoteTablesOnCurrentTab() || CartController.HasQuoteTablesOnCurrentCustomSection())                     
{                         
    @Html.PartialWithNameAsComment("Templates/CartTableTemplate")                         
    @Html.PartialWithNameAsComment("Templates/CartTableCellTemplates")                         
    @Html.PartialWithNameAsComment("EditablePagerTemplate")                     
}


In customized template Cart   CustomFieldsPage:

Remove the lines 47-52:



@if (CartController.HasQuoteTablesOnCurrentTab())
{     
    @Html.PartialWithNameAsComment("Templates/CartTableTemplate")     
    @Html.PartialWithNameAsComment("Templates/CartTableCellTemplates")     
    @Html.PartialWithNameAsComment("EditablePagerTemplate") 
}


Add lines on top of the page(starting from 2nd line)



@if (CartController.HasQuoteTablesOnCurrentTab() || CartController.HasQuoteTablesOnCurrentCustomSection()){     
    @Html.PartialWithNameAsComment("Templates/CartTableTemplate")     
    @Html.PartialWithNameAsComment("Templates/CartTableCellTemplates")     
    @Html.PartialWithNameAsComment("EditablePagerTemplate") 
}

Scenarios for Adding Custom Fields and Quote Tables to Custom Sections
Adding New Custom Fields and Quote Tables to Custom Sections

Leave the Tab value blank and set the Rank value to 0 while creating the custom field or quote table.

Navigate to Setup   Quotes   Fields, Calculation, Layout   Custom Sections and add the new field or table to the desired section.

Arrange the sequence of custom fields and quote tables within the custom section using drag-and-drop.

Moving Existing Custom Fields and Quote Tables from the Standard Custom Fields Section to Custom Sections

First, navigate to the details page of the custom field or quote table. Change the tab and rank to their default values: leave the tab value blank and set the rank value to 0.

After updating the custom field or quote table, go to Setup   Quotes   Fields, Calculation, Layout . Finally, add it to the appropriate custom section.

Set the order of the field or table within the custom section using drag-and-drop.

Moving Existing Custom Fields and Quote Tables Between Custom Sections

Navigate to Setup   Quotes   Fields, Calculation, Layout   Custom sections. Remove the custom field or quote table from the current section.

Navigate to Setup   Quotes   Fields, Calculation, Layout   Custom sections. Choose the custom field or quote table to add it to the new section.

Moving Existing Custom Fields and Quote Tables to the Standard Custom Fields Section

Navigate to Setup   Quotes   Fields, Calculation, Layout   Custom sections and remove custom field or quote table from section.

Visit the details page of the custom field or quote table. Adjust the tab and rank to the appropriate values.

Limitations

The Standard Custom Fields section can only be reordered through the Layout settings on the Quotation tab.

On all other tabs, the Standard Custom Fields section is fixed at the top of the page and cannot be repositioned.

On this page
Sections
Scenarios for Adding Custom Fields and Quote Tables to Custom Sections
Limitations
Yes
No