# Quote Tables | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/01511030be0944108017ce2ad4f7b738.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create Quote Table
	
Quote Table Columns
	
Manage Quote Table Column Groups
	
Quote Table Actions
	
Import via Excel
	
Quote Table Translation
	
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
Quote Tables

SAP CPQ supports tabular structure for displaying dynamic data on Quotes. Quote Tables can be a useful resource for displaying Customer purchase history, capturing payment details, etc.

Note

Quote tables can be managed via the Quote Tables API. Information about this API is available in the dedicated section on Swagger.

Example

You can create a Quote Table for your users to keep a record of the payment schedule in a milestone-based quote payment. The screenshot below shows a possible table design in such a scenario.

The Total Milestones is a quote-level custom field for inputting the number of milestones for the payment of the quote total amount. Clicking Populate Milestones triggers a script that adds a row for each milestone and divides the total amount into equal installments. The date of each milestone is calculated with a month of difference, starting from the date in Payment Start Date. Any comments and notes users might have, can be added in the Milestone column.

If users change an allocated amount, the unallocated amount is automatically recalculated. The unallocated amount equals to $200 in the example as the amount of the first milestone is decreased by $200. The action is triggered by the On Cell Changed script defined in Setup:



total= 0.0
cf_TotalUnassigned=Quote.GetCustomField(“Quote Total Unassigned”)
tbl=Quote.QuoteTables[“Payment_Schedule”]
for row in tbl.Rows:
total+=row[“Amount”]
cf_TotalUnassigned.Content = “$ ” + str(Quote.Total.TotalAmountInMarket - total)

The script subtracts the total amount in all rows from the total quote amount to display the unallocated amount.


Create Quote Table

Tables on quotes are quote-related and can’t be created for each product item. The data in the table can either be retrieved automatically from other systems and SAP CPQ or users can input/select entries for each cell. Note that quote tables are available only in the responsive version of SAP CPQ UI.
Quote Table Columns

Table data is organized in columns. Multiple columns with the same denominators can be visually represented to users as a group.
Manage Quote Table Column Groups

Columns in quote tables can be organized in groups visually represented by common group headers. Groups allow you to organize columns in logical units, so your users have a neat overview of the data.
Quote Table Actions

Import via Excel

Users can import data into quote tables by importing Excel files on both quote engines.
Quote Table Translation

The Translations tab allows you to translate the Quote label, column and action labels and validation messages.
Yes
No