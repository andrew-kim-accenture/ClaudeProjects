# Quote Table Columns | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/082aed5c89fe435988a2b60e94ebb375.html#example
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
Quote Table Columns

Table data is organized in columns. Multiple columns with the same denominators can be visually represented to users as a group.

Add Columns to Quote Table

Quote table columns can either pull data via IronPython scripts (the system supports a maximum of 3000 rows) or users import data manually.

In Define Columns, click Add Column.

Define the column label and the column name will automatically populate.

Make sure not to use the reserved SQL words for the label.

Choose the column type.

The column type conditions the input users can make in the field.

Click Set Permissions.

The Permissions pop-up displays.

Select the permission groups for which the column will be editable/hidden.

Note that columns in quote tables are in read-only status by default.

(Optional) Set the validation rules.

Read more about the quote table validation rules in the Validation Rules section.

(Optional) Select the Contains Personally Identifiable Information checkbox.

All information that could potentially be used to identify an individual should be flagged as PII.

(Optional) Enable the Suppress Information Logging toggle switch.

You can choose to suppress logging of PII data for an additional layer of protection.

Save your changes.

Repeat the previous steps to add more columns.

Click Save.

Validation Rules

Validation rules show users that data input is required and that a limit on the data users enter is required.

The table shows which validation rules are available for which column types:

Column Types

	

Validation Rules




Number

	

Minimum

Maximum




Decimal




Money




String

	

Required

Contains




Date

	

Required




Attribute




Boolean

	

Not available

To manage validation rules for a column, access Validations when editing the column. After selecting a validation rule and entering the value, you should define the validation message that will display to users if they break the rule. The validation message is required, otherwise you can’t save the columns.

If one or multiple validation rules are broken, the validation of the entire table fails and an informational message displays above the table. However, users will still be able to save the quote table and the quote and manage other sections independently.

A rule's activity is handled through the Active checkbox. If a rule becomes temporarily unneeded, but may become required in the future, unselect the checkbox.

Note

A flag on quote tables, with values True or False, denotes the validation status. As the flag is exposed for scripting, scripts can be created for users to perform actions based on the validation status.

Scripting
Quote table columns are exposed for scripting so that you can create scripts for complex calculation of the tabular data. Additionally, you can manage validation rules and column labels via scripts:

Validation Rules - the new method ExecuteValidations triggers the validation rules. To check if a validation rule is broken, use the HasValidationsFailed method. Also, you can activate/deactivate a rule via scripting (for example, add a pre/post action to actions and cell events in the Actions tab). Changing the activity via scripting doesn’t influence the behavior of the Active checkbox in Setup (the activity must be changed manually).

Column Labels - column labels are exposed for scripting so you can rename them to meet specific business needs of your users. You can create a global script that renames the labels after users execute the event to which the script is attached in Events.

Example

A script affecting the Payment Schedule quote table is attached to the action of changing the date of the first payment in the designated quote custom field. After users change the date, the script is triggered and the First Installment label is replaced with October 15.

Note that in the example quote, the parameters Quote.QuoteTables and GetColumnByName retrieve quote and column names, respectively, not labels.

Quote.QuoteTables[“Payment_Schedule”].GetColumnByName(“First_Installment”).Label = “October 15”

On this page
Add Columns to Quote Table
Validation Rules
Scripting
Example
Yes
No