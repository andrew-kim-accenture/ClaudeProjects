# Manage Quote Table Column Groups | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/11dec76bd042400e889c2f4689c89604.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Document Generation
	
Custom Quote Tabs
	
Quote Tables


	
Create Quote Table
	
Quote Table Columns
	
Manage Quote Table Column Groups
	
Quote Table Actions
	
Import via Excel
	
Quote Table Translation
	
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
Manage Quote Table Column Groups

Columns in quote tables can be organized in groups visually represented by common group headers. Groups allow you to organize columns in logical units, so your users have a neat overview of the data.

Example
When tracking the installment schedule plan for a product over a year, create a column for each month and group the months in four quarters. 
To manage groups, access a table and go to Define Columns  Manage Columns and Column Groups. The Column Groups pop-up is divided into two sections: Column Groups and Columns (automatically populated with all columns that aren’t included in groups).

Click Add Column Group.

Define the group name and the label.

Make sure not to use the SQL reserved words when naming columns and groups.

Click Add.

The groups display in the order they were created.

To change the order of column groups, drag and drop them.

To edit and delete a group, click .

Click  to expand the group.

Drag and drop the columns from the right into the dedicated group area.

Click Confirm.

Click Save to save the table.

Note

All columns, including those that are standalone (outside of groups), must be moved to Column Groups. Otherwise, you can’t save the group.

The ordering of columns and groups is set in Column Groups.

Once you add a column to a group, you can only move it to a different group or outside of groups, but you can’t move it back to the list of available columns.

Scripting
Quote table groups are currently not exposed for scripting. To calculate the sum and average values of a group, you can use the sum and average of columns as shown in the example snippet:


table = Quote.QuoteTables['Price_Overview'] 
rows = table.Rows
sum=0 
for row in rows:
 sum = sum + row.GetColumnValue('January')
#sum for column January
Trace.Write(sum)
#average for the column January (to calculate average on multiple columns, multiply rows.Count by the number of columns first)
Trace.Write(sum/rows.Count)

On this page
Example
Scripting
Yes
No