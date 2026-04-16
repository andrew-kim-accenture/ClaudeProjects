# Solution Design | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/be25a47e60f345a6814dd6d966bca0bf.html?locale=en-US&state=PRODUCTION&version=2603
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
Solution Design

The Solution Design feature enables users to organize items into sections and subsections in a separate tab on quotes.

The Solution Design tab is just another view of the items that are already in the quote (if there are same items in the new tab and the Quotation tab, they aren’t treated as duplicates but as the same and all changes made on an item in either one of the tabs are applied to the same item in the another tab).

Also, the calculations are upgraded to cover sections as well - currently, section calculations are available only for quote item custom fields.

Example

John is a sales lead in a furniture manufacturing company. The company applied to a call for tender for furnishing a new business complex in Stockholm. The tender proposal contains more than 1000 items (chairs, desks, coat hangers, and so on) that are distributed into 3 buildings, each with 11 floors and dozens of offices. The tender documentation contains a tender proposal form in Excel with sections for each building and subsections for floors and offices, respectively.

John uploads the Excel form in the Solution Design tab in SAP CPQ and the system creates sections in the hierarchy indicated in the file. Afterwards, John indicates which sections and subsections can contain products and inserts items either directly within the sections or from the quote.

Once the solution has been completed, John downloads it in an Excel file and submit it for the tender call respecting the required form.



Managing Section

Section Calculations

Add and Allocate Products to Sections

You can either add products to sections from the Solution Design tab or allocate items from the Quotation tab.
Section Distribution

A quote section can be distributed into other sections in the Solution Design tab.
Section Totals

The sections grid in Solution Design contains a row for displaying the total value of each quote item custom field whose type is currency and number. The row is added automatically to the grid, after you create at least one section.
Yes
No