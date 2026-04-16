# Custom Table Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/5125d3391e7f4375b1b3f18ed8118a4b.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Example Templates
	
Document Generation Template
	
Supporting Custom Fonts for the Document Generation Process
	
Document Generation Libraries and Differences
	
Setup Administration
	
Manage Content Documents
	
Document Generation User Journey
	
Document Generation Tips and Tricks
	
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
Custom Table Tags

These tags retrieve data from custom tables.

Word Tags	Description


<<CUSTOM_TABLE(...)>>

	

Always comes in pair with its closing tag <<CUSTOM_TABLE_END>>. As a parameter, this tag accepts the name of the custom table. (for example, <<CUSTOM_TABLE(additional_options_custom_table)>>).




<<CUSTOM_TABLE_HEADER>>

	

Always comes in pair with its closing tag <<CUSTOM_TABLE_HEADER_END>>. This tag doesn't accept any parameters and it's used to define the header of the table that displays data.




<<CUSTOM_TABLE_ROW>>

	

Always comes in pair with its closing tag <<CUSTOM_TABLE_ROW_END>>. This tag defines the table row where data is displayed. It can contain one or more <<CUSTOM_TABLE_COLUMN>> tags.




<<CUSTOM_TABLE_COLUMN(...)>>

	

This tag retrieves data from a specific cell (intersection of a table column and a table row). This tag doesn't have a closing tag. This tag accepts a parameter (the name of the custom table column that you want to be displayed). This tag is always placed within <<CUSTOM_TABLE_ROW>> tag.


Excel Tags	Description


<<QUOTE_CUSTOM_TABLE(...)>>

	

As a parameter, this tag accepts the name of the custom table. (for example, <<CUSTOM_TABLE(additional_options_custom_table)>>).




<<QUOTE_CUSTOM_TABLE_HEADER(rowXcolumn)>>

	

This tag accepts the number of rows and number of columns (for example, 1x3) and it's used to define the header of the table that displays data.




<<QUOTE_CUSTOM_TABLE_ROW(rowXcolumn)>>

	

This tag defines the table row where data is displayed. It can contain one or more <<QUOTE_CUSTOM_TABLE_COLUMN>> tags. It accepts the number of rows and number of columns (for example, 1x3) as parameters.




<<QUOTE_CUSTOM_TABLE_COLUMN(...)>>

	

This tag retrieves data from a specific cell (intersection of a table column and a table row). This tag accepts a parameter (the name of the custom table column that you want to be displayed). This tag is always placed within <<CUSTOM_TABLE_ROW>> tag.


Examples

Assuming that SAP CPQ administrator has already defined a custom table named additional_options_custom_table with two columns: additional_description and options, you can create a template section to display data from the custom table as follows:



<<C2>>
<<MAIN>>
<<CUSTOM_TABLE(additional_options_custom_table)>>
<<CUSTOM_TABLE_HEADER>>
Additional description —- Options
<<CUSTOM_TABLE_HEADER_END>>
<<CUSTOM_TABLE_ROW>>
<<CUSTOM_TABLE_COLUMN(additional_description)>> ---- <<CUSTOM_TABLE_COLUMN(options)>>
<<CUSTOM_TABLE_ROW_END>>
<<CUSTOM_TABLE_END>>
<<MAIN_END>>
<<C_END>>


Assuming we have a custom table named Partner details with the following data:

Company

	

Main contact

	

Country

	

Contact person




Breville

	

John

	

Australia

	

Connor Smith




Al Dahra

	

Marc

	

Andora

	

Tony Antonneli




Novatex

	

Johan

	

USA

	

Adam Storey




Agora Livestock

	

John

	

Australia

	

Johnatan Ervic




InterGrain Inc.

	

Marc

	

Germany

	

Bill Hopkins

You want to present only the first and last columns of data for which has the main contact Marc to produce the following result:

Company

	

Contact person




Al Dahra

	

Tony Antonneli




InterGrain Inc.

	

Bill Hopkins

In this case you can use the next Custom Table tag in combination with the included CONDITION tag:



<<C2>>

<<MAIN>>

Showing Partners details only with Marc's lead:

<<CUSTOM_TABLE(Partner_details)>>

<<CUSTOM_TABLE_HEADER>>
|Company | Contact person|

<<CUSTOM_TABLE_HEADER_END>>

<<CUSTOM_TABLE_ROW>>

[CONDITION, <<CUSTOM_TABLE_COLUMN(Main_contact)>>=Marc]

| <<CUSTOM_TABLE_COLUMN(Company)>> | <<CUSTOM_TABLE_COLUMN(Contact_person)>> |
[CONDITION_END]

<<CUSTOM_TABLE_ROW_END>>
<<CUSTOM_TABLE_END>>
<<MAIN_END>>
<<C_END>>

Yes
No