# Section Calculations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/853b895979d94136835ca5d25081d5a9.html?locale=en-US&state=PRODUCTION&version=2603
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
Section Calculations

Standard quote fields aren’t displayed in the Solution Design tab, but administrators can add quote item custom fields and manage calculations for them. The prerequisite is to make the field visible on quotes in Layout Permissions.

Create Section Calculation

Access Setup  Quotes  Fields, Calculations, Layout  Fields and Calculations

Click Add New Field.

Fill out the fields

Click Save.

The field is added to each group of fields (MainItemLineItem, ProductType, u, CartTotal and Sections).

In Sections, select the field you created.

Additional settings display on the right.

In Aggregate Type,, select the calculation that is performed on all items in sections.

The aggregate types are fixed in the system:

Sun - the sum of all items

Count - the total number of items

Avg - the average value of all items

Min - the minimum value of all fields

Max - the maximum value of all fields

The system applies the aggregate function to all items in the section and subsections, calculates the amount and displays the results in the section field.

Save the changes.

A section calculation is automatically created and it’s available in the list of all calculations.

Note

Reverse calculations aren’t enabled for sections. Consequently, a quote item custom field in a section can either be made editable or you can select an aggregate type for it.

Trigger Section Calculations

The following procedure describes how to add a section calculation to the list of calculations that are triggered every time an item is added and updated in the quote.

In Fields and Calculations, click Item Add/Update Calculations.

A list of calculations that are triggered whenever an item in the quote is added or updated displays on the right.

Click Add calculation.

Click  next to the new calculation.

All section calculations have Section after their label.

Close the window and save the changes.

The calculation is added.

In the Editing tab, make the quote item custom field editable in MainItem, LineItem, ProductType, and CartTotal.

The calculation is set up.

After you change the value in the quote item custom field for an item on the quote, the system reapplies the aggregate type to the new values, triggers the calculations, and displays a new value in the section row in Solution Design.

On the user side, calculations are triggered every time users click outside the field they’ve edited. It isn’t necessary to press the Enter button to run the calculations.

Custom Section Calculations

The following example shows you how to create a custom calculation that calculates a discounted value of a quote item custom field in a section.

Create three quote item custom fields:

Sum - aggregate type Sum

Discount_Percent - type Number

Discount_Value - type Number

Add a custom calculation to the Discount_Percent field.



x = context.AffectedSection
x[“Discount_Value”] = x[“Sum”] * x[“Discount_Percent”] / 100;

Save the changes and open the Solution Design tab in a quote.

The Sum column is populated with values for each item and a summed up value displays in the section field. If you change the percent in the Discount_Percent field, and refresh the section, the Discount_Value field is populated with the new discounted values.

Related Information
Fields and Calculations
Managing Section
Section Distribution
Section Totals
On this page
Create Section Calculation
Trigger Section Calculations
Custom Section Calculations
Related Information
Yes
No