# Create Sections Using Excel | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/5b7b06864ee54336b8f3c20e3d9a82ca.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Solution Design


	
Managing Section


	
Create Sections Using Excel
	
Create Sections using Section Builder
	
Edit and Filter Sections
	
Section Calculations
	
Add and Allocate Products to Sections
	
Section Distribution
	
Section Totals
	
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
Create Sections Using Excel

The ability to import sections through Excel allows users to handle multiple sections easily, with minimal manual effort. This feature can be useful for handling tender documentation, when there’s a predefined set of sections in an Excel file that you aren’t allowed to change. In that case, you can upload the Excel with sections, populate them with products, handle the calculation and consequently download the Excel with values for each section.

Procedure
In the Solution Design tab on the quote, click Excel Template.

An Excel file is downloaded.

The file name contains the quote number. All cells are formatted as Text and the local formatting of Excel files isn’t automatically applied.

Populate the file with this data:

Hierarchy - the ordered number of sections and subsections

Section Name - names of sections and subsections

Can contain products (Yes/No) - populate with either 1, Yes or True each section to which you wish to add products.

If there are quote item custom fields for which users have the editing rights, they also have a dedicated column in the Excel and you can populate them with values.

Can be distributed (Yes/No) - populate with either 1, Yes or True each section that you wish to distribute.

Solution Team - populate with the name of the team to which the section should be assigned. If the team doesn't already exist in the system, it’s created automatically. You can add multiple teams if they’re separated by a comma. Also, each team must have a unique name.

Tip

The first row in the Excel template is hidden and you shouldn't remove or change it in any way. The row contains original names of quote item custom fields and the system updates those fields based on their original names. Since quote item custom field names are unique in the system and their translated names aren’t, if there are multiple fields with the same translated value, the correct field is updated.

Click Excel Upload and select the populated template.

A grid displays in the tab.

Sections and subsections are created following the hierarchy in the template.

Yes
No