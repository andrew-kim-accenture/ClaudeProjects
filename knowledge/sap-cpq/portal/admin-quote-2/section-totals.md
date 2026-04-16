# Section Totals | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/9f7d24c51dcd4acebfb587474233dd9b.html?locale=en-US&state=PRODUCTION&version=2603
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
Section Totals

The sections grid in Solution Design contains a row for displaying the total value of each quote item custom field whose type is currency and number. The row is added automatically to the grid, after you create at least one section.

Enable Section Totals

You can select one of the predefined calculations or create a custom calculation for calculating the section totals.

Prerequisite: to have the sections set up in Solution Design.

Go to Quotes  Quote Fields and Calculations  .

Under the tab,Field and Calculations expand Sections.

Select a quote item custom field.

In Total Calculation Type, select one of the predefined types:

None – selected by default. No calculations are applied if this option is selected and - - displays in the empty cell in the quote.

Sum - the values of all parent sections are summarized.

Average – the average value of all parent sections is calculated and displayed in quote.

Custom – enables creating a custom calculation for calculating all quote item custom fields. The script can be created in the Custom Total Calculation pop-up under Section Fields.

Click Save.

Custom Total Calculations
If you need a calculation more complex than the standard calculations Sum and Average, you can write a script for calculating the section totals in Custom Total Calculation under Section Fields.
Note

There can only be one script that calculates custom total calculations for all fields (you can’t create a separate script for each field).

Custom calculations are triggered after standard section total calculations, so if you write a new calculation formula for a field for which you’ve already selected a standard calculation (SUM or AVERAGE), the custom calculation will override it.

In the History tab in Custom Total Calculation, you can view all the versions of scripts created up to that moment. If needed, you can also compare the scripts.

Tip

The methods available for managing section totals via scripting are described in the IQuoteTotal Interface page.

On this page
Enable Section Totals
Custom Total Calculations
Yes
No