# Quote Table Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/a2504545ac514c59a35ba8eba3c1892c.html?locale=en-US&state=PRODUCTION&version=2603
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
Quote Table Tags

The content of quote tables can be included in documents generated in SAP CPQ.

You can use the QUOTE_TABLE tag inside the header or footer of a document generation processing template.

To retrieve the content, use the following tags:

<<QUOTE_TABLE(TableNameHere)>>

<<QUOTE_TABLE_HEADER>> (Enter column definitions or what you want to display on header for the table).

<<QUOTE_TABLE_HEADER_END>>

<<QUOTE_TABLE_ROW>>

<<QUOTE_TABLE_COLUMN(NameOfColumnHere)>>

<<QUOTE_TABLE_COLUMN(AnotherColumnHere)>>

<<QUOTE_TABLE_ROW_END>>

<<QUOTE_TABLE_FOOTER>> (Enter column totals or what you want to display on footer for the table).

<<QUOTE_TABLE_FOOTER_END>>

<<QUOTE_TABLE_END>>

Yes
No