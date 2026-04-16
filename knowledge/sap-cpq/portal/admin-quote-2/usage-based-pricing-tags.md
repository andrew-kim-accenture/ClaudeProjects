# Usage Based Pricing Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/7084e2dc5fd048da80193f3f5de3fa81.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Document Generation Template
	
Manage Content Documents
	
General Settings
	
Document Generation User Journey
	
Document Generation Tips and Tricks
	
Document Generation Tags


	
C Tags
	
Q Tags
	
Miscellaneous Tags
	
Special Tags
	
Custom Table Tags
	
Nested Products Tags
	
Container Tags
	
C2 Loop
	
Conditions
	
Quote Table Tags
	
SAP Subscription Billing Integration Tags
	
SECTIONS Loop
	
Involved Parties Tags
	
Tiered Pricing Tags
	
Usage Based Pricing Tags
	
Example Templates
	
Document Generation Libraries and Differences
	
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
Usage Based Pricing Tags

Usage-Based Pricing Tags
Note

Usage based pricing is a consumption pricing model where customers are charged based on their actual usage of services or products, rather than a flat fee. Usage based pricing can be enabled when SAP CPQ integrates with the following systems in SAP S/4HANA:

SAP Convergent Charging (CC)

Subscription Order Management (SOM)

For more information, see Usage-Based Pricing

This document outlines the development of a set of tags designed to integrate usage-based pricing data from a quoting system into generated documents. The tags provide two primary methods for displaying this data and support various scenarios for fetching and formatting tables. The Usage Based Pricing feature supports two types of tables:

MAPPING tables hold all pricing ranges and data within a single structure.

RANGE tables separate data into an input table and one or more output tables, with the input table serving as a navigation tool to the corresponding output data. The tables are automatically filtered to show only data with a Start Date that is on or before the Quote Effective Date, mirroring the filtering behavior on the quote itself. This is in case the Start Date column exists.

If you want them to apply only for specific Quote Items, they can be combined with a Condition tag to fetch tables exclusively for specific Quote Items.

They all support Quote Engine 2.0 and prioritize redefined or reused tables over default ones.

Two main scenarios exist for presenting this data:

Raw Tables: Pricing information is printed directly into the Word or PDF document as a formatted table. Mapping tables are printed as a single, complete table. Range tables are separated into a table with input columns and a separate table for each set of output columns.

Attached Excel Objects: Pricing tables are attached to the Word document as an embedded Excel object. All table types (Mapping or Range) are included in a single Excel sheet with all columns. While this functionality also works for a generated document in PDF format, the embedded file will not be accessible.

In both scenarios, the tags enable the following possibilities:

Tables are fetched only if they exist on the quote at the time of document generation.

If a redefined or reused version of a table exists, it will be fetched instead of the default one.

Tables can be fetched for all usage-based items, or for only specific items.

You can choose to fetch only specific tables for a given item.

For raw tables, you can select only the desired columns to be printed. This is not possible for attached Excel objects, which always include all columns.

You can fetch only the rows that have been changed in redefined or reused tables (known as delta rows).

Tag Types and Their Capabilities
Raw Table Tags: <<USAGE_BASED_PRICING_TABLE>> and <<USAGE_BASED_TABLE_SINGLE>>

These tags are designed for rendering usage-based pricing data directly as formatted tables within the generated document (Word and PDF). They are ideal for in-line presentation of pricing information.

<<USAGE_BASED_PRICING_TABLE>>

Purpose: Prints one or more tables for a given Quote Item by specifying table names or specifying that all tables should be printed.

<<USAGE_BASED_TABLE_SINGLE>>

Purpose: Provides a block-based structure for advanced customization of a single table's appearance, headers, and specific columns. This tag is used for defining the exact layout of a raw table.

Structure: It requires a nested tag block to define the table's components. This includes tags for the main table (<<USAGE_BASED_TABLE>>), and optionally for range-specific content (<<USAGE_BASED_RANGE>>).

Customization:

Headers and Footers: Allows for custom text in table headers and footers.

Columns: Explicitly specifies which columns to display using <<USAGE_BASED_TABLE_COLUMN(ColumnName)>> for the input table and <<USAGE_BASED_RANGE_COLUMN(RangeColumnName)>> for the output range tables.

Attached Excel Object Tag: <<ATTACH_USAGE_BASED_PRICING_TABLE>>

This tag embeds pricing tables as Excel objects within the Word document. The data is not visible as a table but as a clickable icon that opens the Excel file.

Purpose: Attaches one or more tables as an embedded Excel object.

Functionality:

The generated output is an icon that, when clicked, opens the table data in Excel.

In PDF output, the icon is visible but not functional.

Usage Based Pricing Tag USAGE_BASED_PRICING_TABLE(TableNames, OnlyChangedRows)

When this tag <<USAGE_BASED_PRICING_TABLE>> is placed inside some loop tag, all usage-based tables will be printed for each quote item.

In case of mapping tables, the table is printed. In case of range tables, all range output tables are printed below the input range table. Ctrl+Click on each row in the input table will send you to the appropriate output table.

If a redefined or reused table exists for the item, it will be printed instead of the default table.

Formatting of the placed tag in the document will be used for formatting of the generated tables.

Arguments:

TableNames: Optional argument. Default value is All if no argument is provided. It is a list of comma-separated default table names. If a redefined or reused table exists, it will be automatically be printed instead of the default table. If the argument value is All, all tables will be printed. The argument can also be a dynamic tag like CTX. Example: <CTX( Quote.CurrentItem.UsagedBasedPricingTableNames(tableName) )>. This CTX tag will return all table names which contain the tableName argument passed to the tag.

OnlyChangedRows: Optional argument. Values for this argument:

All - all rows are printed

Delta - Changed rows are printed. Explanation:

Only rows marked as edited (where the sys_RowStatus column has a value of 1) will be printed.

Usage-based tables: When you download the table from a quote, edit some rows, and reupload it, only those modified rows are flagged as changed.

For Mapping tables: Only the selected rows which are updated are printed in generated document.

For Range tables: If any row within a range is edited (output range table) , the entire range table (output range table) is printed.

For example, if the input range table contains two rows with two corresponding ranges, and you edit a range for the first row, then only the first row and its range will be printed, while the second row and its range will not be printed.

Range table example, the full table has two rows in input range table:

For each of these input rows we have range output tables, for example for Usage Range 1-55 Range is:

If we modify something in this range. In this example Price per GB is modified from 5 to 555 in one row. Then its reupload as redefined table and the document is generated:

When we download the table on the Quote, modify some rows and reupload, that is a redefined table and modified rows are DELTA rows which will be printed when the argument OnlyChangedRows has the value DELTA.

Some examples of tags being used:

<<USAGE_BASED_PRICING_TABLE(all, all)>>

<<USAGE_BASED_PRICING_TABLE(([Video Conference] Price by user country; [Video Conference] Number of licenses, all)>>

<<USAGE_BASED_PRICING_TABLE(([Video Conference] Number of users, delta)>>

<<USAGE_BASED_PRICING_TABLE( [Video Conference] Number of users)>>

<<USAGE_BASED_PRICING_TABLE(<CTX( Quote.CurrentItem.UsagedBasedPricingTableNames([Video Conference] Number of users))>, All)>>

<<USAGE_BASED_PRICING_TABLE>>

These tags can also be placed inside loop tags (C2, Nested Products, Sections, etc).

Formats supported:

doc

docx

PDF

Limitations

Since space in the Word document is limited, if a mapping table contains many columns, the column widths will be reduced to fit within the page. As a result, when the table has a large number of columns or uses a larger font, the columns may appear very narrow.

Usage Based Pricing Tag <<ATTACH_USAGE_BASED_PRICING_TABLE(TableNames, OnlyChangedRows)

When the tag <<ATTACH_USAGE_BASED_PRICING_TABLE>> is placed inside a loop tag, usage-based tables are embedded as Excel files and displayed as icons within the Word document. Clicking an icon opens the corresponding Excel file with its data.

If a redefined or reused table exists for the item, it will be printed instead of the default table.

The formatting applied to the tag in the document will be used for the generated tables as well.

Arguments:

The arguments are the same as those used in the USAGE_BASED_PRICING_TABLE tag.

When a usage-based pricing table is embedded into a quote item, the system automatically generates a filename in the following format:

{ProductName}{QuoteItemId}{[Prefix]}{DefaultTableName}_PriceTable.xlsx

ProductName – The name of the product on the Quote.

QuoteItemId – The ID of Item on the Quote

[Prefix]: One of these three:

Redefined_ if the table was redefined for this product,

Reused_ if the table is reused from another context,

(empty) if neither applies.

DefaultTableName – The base name of the pricing table.

_PriceTable.xlsx – Standard suffix for all embedded pricing tables.

These tags can also be placed inside loop tags (C2, Nested Products, Sections, etc).

Formats supported:

doc

docx

Limitations

When generating the document as a PDF, the embedded Excel icon will still appear, but it cannot be opened by clicking on it.

If the <<ATTACH_TIERED_PRICING_TABLE>> tag is aligned to the right, the generated icon and file name will still appear aligned to the left. This is the default behavior and applies to ST tags as well—it is a general limitation.

Usage Based Pricing Tag <<USAGE_BASED_TABLE_SINGLE(TableName, OnlyChangedRows)

When the <<USAGE_BASED_TABLE_SINGLE>> tag is placed inside a loop tag, a usage-based table will be printed for each quote item.

Mapping tables: The table is printed directly.

Range tables: All output range tables are printed below the input range table. Using Ctrl+Click on a row in the input table will navigate to the corresponding output table.

If a redefined or reused table exists for the item, it will be printed instead of the default table.

The formatting is applied from the tag.

Arguments:

The arguments are the same as in the previous tags, with two differences:

TableName refers to a single table, not a comma-separated list of tables. This is a default table name. If a redefined or reused table exists for the item, it will be printed instead of the default one but the name of the table should be of default table.

Both arguments must be provided.

TableName can also be a dynamic tag, such as CTX.

Tag structure:

<<USAGE_BASED_TABLE_SINGLE(TableName,OnlyChangedRows)>>

<<USAGE_BASED_TABLE>>

<<USAGE_BASED_TABLE_HEADER>>

<<USAGE_BASED_TABLE_HEADER_END>>

<<USAGE_BASED_TABLE_ROW>>

<<USAGE_BASED_TABLE_COLUMN(ColumnName1)>>

<<USAGE_BASED_TABLE_COLUMN(ColumnNameN)>>

<<USAGE_BASED_TABLE_ROW_END>>

<<USAGE_BASED_TABLE_FOOTER>>

<<USAGE_BASED_TABLE_FOOTER_END>>

<<USAGE_BASED_TABLE_END>>

<<USAGE_BASED_RANGE>>

<<USAGE_BASED_RANGE_DEFAULT_HEADER>>

<<USAGE_BASED_RANGE_HEADER>>

<<USAGE_BASED_RANGE_HEADER_END>>

<<USAGE_BASED_RANGE_ROW>>

<<USAGE_BASED_RANGE_COLUMN(ColumnName1)>>

<<USAGE_BASED_RANGE_COLUMN(ColumnNameN)>

<<USAGE_BASED_RANGE_ROW_END>>

<<USAGE_BASED_RANGE_FOOTER>>

<<USAGE_BASED_RANGE_FOOTER_END>>

<<USAGE_BASED_RANGE_END>>

<<USAGE_BASED_TABLE_SINGLE_END>>

Explanation:

These tags are used to define and generate usage-based tables and their corresponding range tables in the document.

Tag structure explanation:

<<USAGE_BASED_TABLE_SINGLE(TableName, OnlyChangedRows)>> – Starts a single usage-based table for the specified default table name. Optionally, only rows marked as changed can be printed (OnlyChangedRows).

<<USAGE_BASED_TABLE>> – Starts the usage-based table block.

<<USAGE_BASED_TABLE_HEADER>> … <<USAGE_BASED_TABLE_HEADER_END>> – Defines the table header.

<<USAGE_BASED_TABLE_ROW>> … <<USAGE_BASED_TABLE_ROW_END>> – Defines a table row.

<<USAGE_BASED_TABLE_COLUMN(ColumnName1)>> … <<USAGE_BASED_TABLE_COLUMN(ColumnNameN)>> – Defines each column in a row. All provided columns are optional but must exist in the original table.

<<USAGE_BASED_TABLE_FOOTER>> … <<USAGE_BASED_TABLE_FOOTER_END>> – Defines the table footer.

<<USAGE_BASED_TABLE_END>> – Ends the table block.

<<USAGE_BASED_RANGE>> … <<USAGE_BASED_RANGE_END>> – Defines a range table associated with a usage-based table row. Applicable for Range tables.

<<USAGE_BASED_RANGE_DEFAULT_HEADER>> – Adds a default header above the range table, populated with values from the input row.

<<USAGE_BASED_RANGE_HEADER>> … <<USAGE_BASED_RANGE_HEADER_END>> – Allows a custom header for the range table.

<<USAGE_BASED_RANGE_ROW>> … <<USAGE_BASED_RANGE_ROW_END>> – Defines a row within the range table.

<<USAGE_BASED_RANGE_COLUMN(ColumnName1)>> … <<USAGE_BASED_RANGE_COLUMN(ColumnNameN)>> – Defines columns within the range row. Each column is optional but must exist in the original range table.

<<USAGE_BASED_RANGE_FOOTER>> … <<USAGE_BASED_RANGE_FOOTER_END>> – Defines the footer for the range table.

<<USAGE_BASED_TABLE_SINGLE_END>> – Ends the single usage-based table block.

Like other table tags, this tag supports full formatting and column specifications.

Mapping tables: The usage_based_range block should not be provided, since mapping tables do not have ranges.

Range tables:

If the USAGE_BASED_RANGE_DEFAULT_HEADER exists, a default header is added above each range table, populated with values from the corresponding input table row.

USAGE_BASED_RANGE_HEADER can be used to define a custom header.

Column names can also be dynamically set using modeling tags, such as CTX.

These tags can also be placed inside loop tags (C2, Nested Products, Sections, etc).

Formats supported:

doc

docx

PDF

Limitations

Since there is limited space in word for placing tables, if the mapping table has too many columns the table column size will be reduced to fit the document width, making them very short in case of large numbers of columns or font.

On this page
Usage-Based Pricing Tags
Tag Types and Their Capabilities
Usage Based Pricing Tag USAGE_BASED_PRICING_TABLE(TableNames, OnlyChangedRows)
Usage Based Pricing Tag <<ATTACH_USAGE_BASED_PRICING_TABLE(TableNames, OnlyChangedRows)
Usage Based Pricing Tag <<USAGE_BASED_TABLE_SINGLE(TableName, OnlyChangedRows)
Yes
No