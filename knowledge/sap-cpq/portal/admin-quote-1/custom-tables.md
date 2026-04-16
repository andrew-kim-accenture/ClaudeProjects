# Custom Tables | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/dba3219852a64192b7c92c27a5176224.html#audit-trail
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Products
	
Categories
	
Attributes
	
Attribute Visibility Restrictions
	
Unit of Measurement
	
Product Types
	
Custom Tables


	
Custom Table Logging
	
Hidden Custom Tables
	
Access Rights for Custom Table
	
Sequences
	
Sequence Substitution
	
Guided Selling
	
Product Favorites
	
Product Tabs
	
Quick Search and Advanced Search
	
Set Configuration Based on XML
	
Custom Configurator XSLT
	
Pricing/Calculations
	
Quotes Administration
	
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
Custom Tables

SAP CPQ allows the use of data from nonstandard tables during the configuration process. Adding, editing, and deleting tables along with their entries is done through Custom Tables.

Actions

You can perform the following actions for custom tables:

Action

	

Description




Define New

	

Create a new table by defining table and columns names.




Import New

	

Create a new table by importing an Excel file.




Edit Table

	

Add new columns to an existing table.

Note

When you're editing existing custom tables, all columns and types are read-only and they can't be changed.




Delete Table

	

Delete an existing table.




Export Table Template

	

Export an empty Excel file with column names, so data records could be added and imported (intended for initial import or appending).




Export Table

	

Export an entire table.




View Entries

	

Read through table entries, delete them, insert new entries or modify the existing ones.




Audit Trails

	

See when table was modified and who modified it.

Nonclustered Database Indexes
You can view information about nonclustered database indexes on the Custom Tables page by selecting Edit. The table shows whether an index is enabled or disabled, key columns, non-key columns, filter criteria, and uniqueness.
Note

To request the creation of nonclustered indexes, users need to contact the database operations team by submitting an incident ticket.

Defining a New Table
Table Name

The table name is a required field and must follow these restrictions:

Table names must be unique.

Table names must begin with a letter.

Table names can't begin with sys_.

Valid characters:

Alphabetic lowercase (a-z)

Alphabetic uppercase (A-Z)

Underscore (_)

Invalid characters:

Hyphens (-)

Columns

As soon as the custom table name is defined, the next step is to define columns.

For column names, the same restrictions as for table names apply.

The following column types are supported:

bit

int

date

datetime (displayed in the date format and date separator format selected for the logged-in administrator)

nvarchar(size) [default(250)]

decimal(decimal places) [default(2)]

Note

The Length/Decimal places column type is valid only for:

NVARCHAR, in which case it represents the length of the string sequence.

Decimal, in which case it represents decimal places.

When you create a table via API, you can provide a type for each column within the attribute <DbType></DbType>.

When a new table is created, primary auto increment key CpqTableEntryId is added to the table, which is later used for manipulating entries. When Add New Column is clicked, the system adds a new blank column. Clicking Undo Column removes the last created column.

Other

By selecting the Personally Identifiable Information checkbox, an administrator flags information as PII.

You can choose to prevent old and new values of personally identifiable information from being logged by enabling the Suppress Information Logging toggle switch.

Audit Trail

In Audit Trail Level you can define the level at which changes are logged in the audit trail. You can choose between Audit at Field Level, Audit at Row Level and No Audit. You can learn more in Custom Table Logging.

Importing a New Table

A new table can be defined by importing it.

When a new table is created, the primary auto increment key CpqTableEntryId is added to the table.

If a table name isn’t provided, the table name is populated with the Excel file name.

Table Name must be unique, must start with a letter and can only contain lowercase (a-z) and uppercase (A-Z) alphabetic characters, numbers, and the underscore character.

Columns in the db table will be named after columns from the excel file, therefore the column names must be unique, and can contain only alphanumerics and can’t start with a number.

View Table Entries
Here you can manipulate table entries:

Add New Entry

Edit Entry

Copy Entry – if you want to add a new entry similar to an existing one, this functionality opens same page as edit white populated data, but after saving, it creates new entry in the database table.

Delete Entry

Search Entries

Custom Table Export

You can choose entries:

Entries listed above – Entries displayed on the screen are exported

All entries that match entered criteria – Entries that match entered criteria are exported

All entries – All entries are exported

All Entries is the default selection. You can choose export format. Supported file formats are:

Excel

ZIP

Excel file is the default selection. If you choose the ZIP file, then XLS file is compressed to a ZIP file.

Import

Used for appending/updating data in existing table.

If you just want to insert new rows, the Excel file mustn't contain a CpqTableEntryId column. However, if you want to update and insert new rows, CpqTableEntryId is necessary for existing entries, while for new rows this cell needs to be left blank.

Note

If the application parameter Export All Custom Table Data as Strings by Default is set to True, all data is treated as text data by the spreadsheet application. This parameter only influences data formatting when exporting custom tables. Setting this parameter to True prevents trailing zeros from being removed from text type columns in custom table column definition.

Adding/Editing Table Entries

This page is for adding or editing entries. When Save And New is clicked, the current data is saved, and this page is displayed again, so a new entry can be added to the same table. When editing the existing entry, CpqTableEntryId is displayed.

Audit Trail
Audit Trail provides you with the ability to see when custom table was created/modified and who performed the action. Audit Trail is written every time you:

Create a new table trough import.

Create a new table through API.

Create a new table through user interface.

Modify the table by adding columns.

Modify the table by adding, editing, or deleting table entries.

Import an Excel to the existing table.

Modify the table through API in any way.

On this page
Actions
Nonclustered Database Indexes
Defining a New Table
Importing a New Table
View Table Entries
Adding/Editing Table Entries
Audit Trail
Yes
No