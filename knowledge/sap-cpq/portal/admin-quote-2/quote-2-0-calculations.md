# Quote 2.0 Calculations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/a16b1b1728d040048b2e2ad194730aec.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Fields and Calculations
	
Quote Field Calculations
	
Quote Field Editability
	
Order of Calculations When Adding, Copying, or Deleting Quote Items
	
Order of Calculations when Changing Quote Field Values
	
Rolled-up and Reverse Calculations
	
Calculations for SAP Subscription Billing Integration
	
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
Quote 2.0 Calculations

To manage calculations for Quote 2.0, access the Fields and Calculations tab in Setup  Quotes  Fields, Calculations, Layout. The page shows in Setup only when Quote 2.0 is on. Otherwise, if using Quote 1.0, calculations should be administered under Pricing/Calculations > Cart Fields Administration.

Note

Note that in the context of calculations, terms quote fields and columns may be used interchangeably when referring to fields on quotes that are calculated via formulas (for example, One-Time List Price, Extended Cost, One-Time Cost, etc.). Additionally, terms formula and calculations may be used interchangeably as well.



Fields and Calculations

The Fields and Calculations tab allows you to manage existing quote default and custom fields in the system and to add new fields.
Quote Field Calculations

Most quote fields are calculated via one predefined formula. However, the value of some of them is calculated via multiple formulas.
Quote Field Editability

In the Field Editability tab, you can select the quote fields that are editable, the permission groups that are able to edit them and the status of the quotes in which the fields are editable. Unlike in the old quote engine, in Quote 2.0, the editability is set per column. This means that if a column is editable, all fields in that column, for all items, are editable. By default, all fields on quotes are read-only until their editability is defined.
Order of Calculations When Adding, Copying, or Deleting Quote Items

Order of Calculations when Changing Quote Field Values

Click on a field to see the default order of calculations that trigger once the value of the respective field is changed. For each field, you will see the name of the calculation as defined in Quote Fields and Calculations, the description of the calculation and the mathematical formula used for calculating the value.
Rolled-up and Reverse Calculations

When handling calculations in Quote 2.0, users can use standard, rolled-up and reverse calculations. Unlike Quote 1.0, Quote 2.0 allows you to handle reverse rolled-up calculations.
Calculations for SAP Subscription Billing Integration

Yes
No