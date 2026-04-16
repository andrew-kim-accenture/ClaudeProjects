# Conditions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/0575a4f0520e4ca4a8153980014aa3a7.html?locale=en-US&state=PRODUCTION&version=2603
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
Conditions

Standalone conditions and tag-dependent conditions let you restrict what data tags retrieve.

Standalone conditions can be added anywhere in the template and they aren’t dependent on any tags. Standalone conditions are used to control if section of a document are displayed or not. Conditions are processed after all the other tags have been processed. Using conditions may slow down a performance if large number of conditions are used to determine in the end if one section is displayed or not. On the left side is a tag whose value is compared and on the right side is list of values to compare with. Values are separated by “|” Conditions can use the OR logic. To check if value is equal use ”=” and if not equal use ”!”. Typical examples of conditions are as follows:


[CONDITION,<<Q_QP(myproperty)>>=golf|soccer|basketball]
Any static text or tables or tags
[CONDITION_END]
As seen in the example, condition tags can't be used in a single line - they must be separated into multiple lines.

Conditions can also consist of several expressions connected by the AND (&&) operator. All expressions within the combined condition need to be TRUE for the condition to be fulfilled.

Note

The AND logic can only be used in the new document generation engine.



[CONDITION, <<C_TAG(<*CTX( Quote.CurrentItem.ProductInfo.ProductName )*>)>> = Laptop && <<C_TAG(<*CTX( Quote.CurrentItem.PartNumber )*>)>> = 12345]  

Example Content 

[CONDITION_END] 


Tag-dependent conditions - create a condition by adding :CONDITION() to a tag (for example, <<QUOTE_ITEMS:CONDITION([EQ](<*CTX(Quote.CurrentItem.ProductTypeName)*>,Hardware))>>). Add these conditions in C2 tags and when retrieving quote products, containers, and quote items (main and line items, header, and footer).

Caution

[CONDITION,…] tags don’t support table tags (<*Table(SQL query)*>). Also, [CONDITION,…] tags must not be nested.

Conditions aren’t required in templates. They allow you to retrieve data only when the condition is fulfilled.

Tag Conditions

Tag conditions can be applied to every tag to perform an action based on the value the tag returned. Not all condition tags can be used in both document generation engines and in both Microsoft Excel and Microsoft Word templates.

New Document Generation Engine

DOCX - D, d, P, p, B, b, U, DC, DR, DCOL, DELETE_TABLE

Excel - d, DR.

Old Document Generation Engine

DOCX - D, d, P, p, DC, DR, DCOL, DELETE_TABLE.

DOC - D, d, P, p, B, b, U, DC, DR, DCOL, DELETE_TABLE.

Excel - d, DR.

The explanation of tag conditions is listed below:

D

	

Deletes a line.




d

	

Deletes the value that the tag returns.




P

	

Inserts a page break after the value that the tag retrieves.




p

	

Inserts a page break before the value that the tag retrieves.




B

	

Makes the entire line bold.




b

	

Makes the value that the tag returns bold.




U

	

Converts the value to uppercase.




DC

	

Deletes the content of the cell, if the value displays in a table cell.




DR

	

Deletes the content of the row, if the value is displayed in a table.




DCOL

	

Deletes the content of the column in which the value is displayed. Deletion may fail if there are merged cells in the column.




DELETE_TABLE

	

Deletes the content of the entire table, if the value is displayed in a table.

Yes
No