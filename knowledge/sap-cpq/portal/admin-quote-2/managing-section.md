# Managing Section | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/3fcda4cd47cc42999b0d7c400e3a2314.html?locale=en-US&state=PRODUCTION&version=2603
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
Managing Section

To enable users to create sections, you must first create a dedicated tab on quotes. Go to Setup  General  Application Parameters  Shopping Cart and Quotes and set the parameter Enable Solution Design to TRUE. A new tab, Solution Design, is automatically displayed on quotes. Alternatively, you can create the tab manually, using the implementation file (this file isn’t available by default. Contact the SAP CPQ Support team to enable this for your tenant.)

You can create sections either in Excel or using the in-built tool Section Builder. For both workflows, you need to have the Quote 2.0 engine enabled on your tenant and have the Solution Design tab created.



Create Sections Using Excel

The ability to import sections through Excel allows users to handle multiple sections easily, with minimal manual effort. This feature can be useful for handling tender documentation, when there’s a predefined set of sections in an Excel file that you aren’t allowed to change. In that case, you can upload the Excel with sections, populate them with products, handle the calculation and consequently download the Excel with values for each section.
Create Sections using Section Builder

The Section Builder is an SAP CPQ tool for manually creating sections.
Edit and Filter Sections

Yes
No