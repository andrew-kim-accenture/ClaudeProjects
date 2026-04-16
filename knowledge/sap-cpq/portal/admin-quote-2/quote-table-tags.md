# Quote Table Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/a2504545ac514c59a35ba8eba3c1892c.html?locale=en-US&state=PRODUCTION&version=2603
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