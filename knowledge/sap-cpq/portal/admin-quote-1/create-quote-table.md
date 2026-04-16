# Create Quote Table | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/b96b111ad9b64ac2a9c987087e4f7dca.html?locale=en-US&state=PRODUCTION&version=2603
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
Create Quote Table

Tables on quotes are quote-related and can’t be created for each product item. The data in the table can either be retrieved automatically from other systems and SAP CPQ or users can input/select entries for each cell. Note that quote tables are available only in the responsive version of SAP CPQ UI.

Note

The maximum number of rows in a quote table is 3000.

Once created in the Setup, a quote table is visible on all quotes in the tab selected during creation. All quote tabs, except Documents, can host one or more tables, but a quote table can be located only within one tab. Table content isn’t shared between tables.

In Setup, access Quotes  Quote Tables.

Click Add New and a page with four tabs displays.

Fill out the fields in Define Table:

Table Label(required) - the label in the default system language that displays above the table on quotes.

Table Name - populates automatically with the table label, but all special characters and spaces are replaced with an underscore. The field is editable until the table is saved. You use the table name when referencing the table in scripts and document templates and translate it to nondefault languages in the Translations section.

Quote Tab to show this table on - the list of quote tabs for placing the table. In Quote 2.0, you can show the table in multiple tabs. However, in Quote 1.0 you can show the table only in one tab.

Table Rank - controls the position of the table on the quote. Quote tables share ranks with quote custom fields (for example, a quote custom field with a rank of 10 is placed before a quote table with a rank of 20 on a quote).

Select Allow Search on Columns to allow users to search quote columns.

Define permissions:

In the Permissions section, click Add Permission.

In the pop-up, select statuses and permission groups to limit visibility.

To make the table visible to all statuses and groups, opt for Select All Statuses and Select All Permission Groups, respectively. Note that quote tables aren't visible in any quote statuses or to any permission groups when no selection is made in the Permissions pop-up.

Click Add.

The permission details display in the Permissions section and can be edited/deleted at any time. When multiple permissions are defined, the logic applied between them is OR. You can override the permissions via Iron Python scripts.

Click Save.

Note that you need to save data in Define Table to be able to move to other tabs. The table is now created and it’s shown on all quotes in the system.

Search on Quote Tables: Hint for Your Users

Different column types require different input in the search fields so correct results are displayed:

Attribute and Boolean columns - the search terms render in a dropdown list or with checkboxes so users can select one.

Date columns - users can either find a date in the on-demand calendar or input it manually.

Other column types - the search term needs to be keyed in. The character limit for cells in string type columns is 2000 characters per cell.

Note

The numeric, decimal, and money columns accept < and > characters to be used for “lower than” and “greater than” operations. In textual search fields, if a user enters one or two letters, the rows containing the item that starts with these letters are filtered. If more than 2 letters are entered, the system shows the items that contain the two letters, not necessarily begin with them.

After entering or selecting from a dropdown menu a search term for one column, only the rows consistent with the search remain in the table. Those rows are filtered further on when a new search term is applied in another column.

Yes
No