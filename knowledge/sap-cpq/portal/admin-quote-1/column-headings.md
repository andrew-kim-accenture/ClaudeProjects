# Column Headings | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/999cd85b2fa842ccb6533c88d24a09d1.html#mrc-column-in-existing-quotes
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration


	Setup Help

	
Document Generation
	
Custom Quote Tabs
	
Quote Tables
	
Quote Custom Fields
	
Quote Tab Permissions
	
Quote Item Custom Fields
	
Key Attributes
	
Column Headings
	
Search Fields
	
Bulk Deletion
	
Quote Visibility
	
Cart Level Aggregates
	
Quote Acceptance Settings
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Alerting Users About Parallel Work on Quotes (Administrator Side)
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Column Headings

The Column Headings administrative section allows SAP CPQ administrators to control the columns displayed to users on the Existing Quotes page.

Overview

The Column Headings administrative section can be accessed via Setup  Quotes  Column Headings. Here administrators can add, remove, and modify the column headings.

You can restrict the visibility of column headings to specific user types or you can make them visible for all user types.

You can select the order in which the columns will be displayed on a quote.

Available column headings may include quote information, customer information, key attributes, custom fields and/or user information.

Any field available to users on the Existing Quotes page can be sorted, or used as filters

Adding or Editing a Column Heading

To add a new Existing Quotes Column, click Add New. A blank definition page will be displayed. Selecting Edit would bring up the same page.

Setting

	

Description




Available Fields

	

List of fields that can be displayed. These include any key attributes, custom fields, and default fields, which include cart information, customer information, and user information.




Label

	

Text that will be displayed in the column heading on the user side.

Note

By default, responsive templates don't support hyperlinks in the labels of quote custom item fields. If you want labels to function as hyperlinks, you need to adjust the layout customizations accordingly.




User Type

	

List of user types that will be able to see this specific column heading.

All User Type option allows all users to see the column heading.

Selecting any specific user type will enable only that user type to see the column heading.

Consequently, as soon as you click Save, the user type in question will only be able to view column headings assigned to them, while the column headings assigned to All User Type will become inaccessible to them.

Example

If all user types have access to column headings A, B, C and D, while users from the Sales user type have access only to B, the Sales users will not be able to view A, C and D, even though they are assigned to All User Type.




Editable

	

This setting appears if the chosen field represents a quote custom field.

This setting enables users to change the value of the custom field from the Existing Quotes page.

For example, this can be very useful when changing the expected close date for several quotes without opening them one by one. Additionally, you can define which fields are editable and whether or not changing that field causes the entire quote to be recalculated.

Custom field types that are supported for edit are: Text Field, Attribute and Date.




Changing field value triggers quote recalculation

	

This setting appears if the chosen field represents a quote custom field.

When users edit a field from the Existing quotes page, the quote will be recalculated. This feature can be used when the field is used in other calculations in the quote or when its value is transferred to quote items.

When a user enters values in one of the editable quote fields and clicks Save, SAP CPQ will identify quotes where the user has entered a value and save the quotes one by one. Unless you have marked the column to trigger quote re-calculation, the values will be saved directly to the database without loading the SAP CPQ cart (in the background). If the cart is loaded, the value will be saved and all calculations will be triggered, transfer to item feature executed and so on (similar to how calculations are triggered when the user updates the field from the cart).




Add to column headings

	

To add a new column heading, select the heading field from the Available Fields and click Add to Column Headings to add to column to the Existing Quotes page. User can then order the selected fields by selecting the column heading and clicking the up and down arrows in the Search Fields Order list box.

Note

User can only add one column heading at a time. To add another column heading, save the current addition, then go back into the column heading administrative section by clicking Add New.

When editing a column heading, if desired, users can only remove and edit the label of the heading that is being edited. Users can modify the ordering of all the headings while editing a particular column heading though.




Search Fields Order

	

List of all the column headings currently being displayed to users.

The fields are listed in the order that they will be displayed to the users.

The fields listed at the top will be displayed on the left side of the quote list.

Note

In Quote 2.0, fields added to the column headings automatically become search fields or filters on the Existing Quotes page. As a result, the Search Fields page is removed from the Quote 2.0 engine because it is redundant.

MRC Column in Existing Quotes

You can enable the MRC total amount as column in the list of existing quotes.

To add the new field, go to Setup  Quotes  Column Headings and add ‘Total MRC Amount’ to the list of available fields. You can also add it as a search field under Setup  Quotes  Search Fields.

This field returns the total MRC amount on user’s side in the same way as field Total Amount returns the total NRC price.

On this page
Overview
Adding or Editing a Column Heading
MRC Column in Existing Quotes
Yes
No