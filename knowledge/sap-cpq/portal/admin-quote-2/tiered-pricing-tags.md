# Tiered Pricing Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/c91c319e0f214daabb6574f005f10dc4.html?locale=en-US&state=PRODUCTION&version=2603
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
Tiered Pricing Tags

Note

The tiered pricing tags can only be used on the Quote 2.0 engine.

Tags are used for retrieving the tiered pricing tables from the Quote:

Embedded Spreadsheet Tag: This tag represents the tiered pricing tables in the form of a spreadsheet format that is attached or embedded in the MS Word output generated document. Note that these spreadsheets can only be visible in PDF output documents but cannot be opened.

The tag related to the tiered pricing tables presented in the format of a Word table directly in the MS Word or PDF output generated document.

It is recommended to present tiered pricing tables as spreadsheets for large tables with many rows/tiers, as this format takes up less space in the output document compared to presenting the whole table in Word table format.

These tags can be utilized in all loop tags within document generation templates, but cannot be used in Excel document templates.

The tags will always retrieve the active tiered pricing table per item during the document generation process from the quote (If the Redefined Table exists, it is the active table; otherwise, the Default Table is active.). This means that if a redefined table exists, it will be fetched instead of the default one. If only the default table exists, then only that one will be downloaded.

Tags to Embed a Tiered Pricing Table as a Spreadsheet in a Word Document Template
Embedded Excel Object Tag

<ATTACH_TIERED_PRICING_TABLE>

Example:

<<ATTACH_TIERED_PRICING_TABLE>> can be used within C2 loop:



<<C2>>

<<HEADER>>

<<HEADER_END>>

<<MAIN>>

Item: <<C_PNAME>>

Product price:

<<C_TAG>>

Tier Pricing table for the product:

<<ATTACH_TIERED_PRICING_TABLE>>

Product description:

<<C_DESC>>

<<C_STOP>>
<<MAIN_END>>

<<LI>>

<<C_STOP>>

<<LI_END>>

<<FOOTER>>

<<FOOTER_END>>

<<C_END>>
The generated Excel object will be named as ProductName Item_ID PriceTable.xlsx, and the generated file will have the same name as the one from Setup, without changing any special characters that may be present in the Product name in Setup. If there are multiple items with the same name on the quote, the generated Excel object will be differentiated by the Item_ID.
Note

When the <<ATTACH_TIERED_PRICING_TABLE>> tag is aligned to the right in the template, the generated Excel icon and file name will always be aligned to the left.

The attached Excel object in the Word output document template contains content that is formatted according to user preferences. For instance, the currency in the Price column is derived from the selected market in the quote. Additionally, the desc and asc marks indicate descending or ascending pricing order (highest to lowest or vice versa). The Excel file also includes additional parameters from the Tiered Pricing Table, such as Valid from, UOM, Price per and Pricing mechanism.

Displaying Tiered Pricing Information in a Spreadsheet for Select Quote Items (CONDTION Tags)


<<C2>>

<<HEADER>>

<<HEADER_END>>

<<MAIN>>

[CONDITION, <<C_TAG([AND]([EQ](<CTX( Quote.CurrentItem.PartNumber )>,SomeItemPartNumber)))>>=1]

<<ATTACH_TIERED_PRICING_TABLE>>

[CONDITION_END]

<<C_STOP>>

<<MAIN_END>>

<<LI>>

<<C_STOP>>

<<LI_END>>

<<FOOTER>>

<<FOOTER_END>>

<<C_END>>

Tags to Embed the Tiered Pricing Table as a Word Table in a Word Document Template

<<TIERED_PRICING_TABLE>>

Example:

can be used within C2 loop:


<<C2>>

<<MAIN>>

Item: <<C_PNAME>>

<<TIERED_PRICING_TABLE>>

<<TIERED_PRICING_TABLE_HEADER>><<TIERED_PRICING_TABLE>>
A customized embedded text or row, such as a table header:

Columnname1

	

Columnname2

	

Columnname3



<<<TIERED_PRICING_TABLE_HEADER_END>>

<<TIERED_PRICING_TABLE_ROW()>>

<<TIERED_PRICING_TABLE_COLUMN(Columnname1)>>

	

<<TIERED_PRICING_TABLE_COLUMN(Columnname2)>>

	

<<TIERED_PRICING_TABLE_COLUMN(Columnname3)>>




<<TIERED_PRICING_TABLE_ROW_END>>

<<TIERED_PRICING_TABLE_FOOTER>>
Text that follows the tiered pricing table.


<<TIERED_PRICING_TABLE_FOOTER_END>>

<<TIERED_PRICING_TABLE_END>>
Text that follows the tiered pricing table.


<<MAIN_END>>

<<C_STOP>>

<<C_END>>
Displaying Tiered Pricing Information in a Word Table for Select Quote Items (CONDTION Tags)


<<C2>>

<<MAIN>>

[CONDITION, <<C_TAG([AND]([EQ](<CTX( Quote.CurrentItem.PartNumber )>,SomeItemPartNumber)))>>=1]

<<TIERED_PRICING_TABLE>>

<<TIERED_PRICING_TABLE_HEADER>>

<<TIERED_PRICING_TABLE_HEADER_END>>
<<TIERED_PRICING_TABLE_ROW>>

CTX Tags for Retrieving Additional Parameters from Tiered Pricing Table

CTX tags are strictly for presenting a simple Word table and must not be used for fetching excel data, as the information fetched with CTX tags is already embedded in the excel file.

CTX tags available for retrieving additional parameters from the tiered pricing table:

Valid from - <CTX(Quote.CurrentItem.TieredPricing.ValidFrom)>

UOM (unit of measurement) - <CTX(Quote.CurrentItem.TieredPricing.UnitOfMeasure)>

Price per - <CTX(Quote.CurrentItem.TieredPricing.PricePer)>

Pricing mechanism (it can be Standard or Cumulative)

<CTX(Quote.CurrentItem.TieredPricing.PricingMechanism.Value)>

<CTX(Quote.CurrentItem.TieredPricing.PricingMechanism.TranslatedValue)>

You can embed those CTX tags directly into <<TIERED_PRICING_TABLE>> tags within the C2 loop.



<<C2>>

<<MAIN>>

Item: <<C_PNAME>>
Validity period: <CTX(Quote.CurrentItem.TieredPricing.ValidFrom)>



<<TIERED_PRICING_TABLE>>

<<TIERED_PRICING_TABLE_HEADER>>

Custom embedded text or row, for example header of the table:

Columnname1

	

Columnname2

	

Columnname3



<<TIERED_PRICING_TABLE_HEADER_END>>

<<TIERED_PRICING_TABLE_ROW()>>

<<TIERED_PRICING_TABLE_COLUMN(Columnname1)>>

	

<<TIERED_PRICING_TABLE_COLUMN(Columnname2)>>

	

<<TIERED_PRICING_TABLE_COLUMN(Columnname3)>>




<<TIERED_PRICING_TABLE_ROW_END>>

<<TIERED_PRICING_TABLE_FOOTER>>

Custom embedded text or row



<<TIERED_PRICING_TABLE_FOOTER_END>>

<<TIERED_PRICING_TABLE_END>>
Text after tiered pricing table.


<<MAIN_END>>

<<C_STOP>>

<<C_END>>
Standard and Cumulative Pricing
The entire table will be printed regardless of the specified quantity or pricing mechanism only when using tags for fetching Excel table.

Example:

In order to display specific tiers, regardless of the pricing mechanism used (standard or cumulative pricing), you can only use Word table tags.

Only the tiers of the tiered pricing table that are relevant for determining the price based on the desired quantity will be included in the calculation.

The same tags for whole table but with using argument Active in <<TIERED_PRICING_TABLE_ROW()>> tag - <<TIERED_PRICING_TABLE_ROW(Active)>>



<<C2>>

<<MAIN>>
Item: <<C_PNAME>>
<<TIERED_PRICING_TABLE>>

<<TIERED_PRICING_TABLE_HEADER>>

Custom embedded text or row, for example header of the table:

Columnname1

	

Columnname2

	

Columnname3



<TIERED_PRICING_TABLE_HEADER_END>>

<<TIERED_PRICING_TABLE_ROW(Active)>>

<<TIERED_PRICING_TABLE_COLUMN(Columnname1)>>

	

<<TIERED_PRICING_TABLE_COLUMN(Columnname2)>>

	

<<TIERED_PRICING_TABLE_COLUMN(Columnname3)>>




<<TIERED_PRICING_TABLE_ROW_END>>

<<TIERED_PRICING_TABLE_FOOTER>>
Custom embedded text or row


<<TIERED_PRICING_TABLE_FOOTER_END>>

<<TIERED_PRICING_TABLE_END>>

<<MAIN_END>>

<<C_STOP>>

<<C_END>>

Standard Pricing Mechanism:

The selected pricing mechanism must be printed in a single row.

Example: For quantity 200, it must be displayed only second row of the table (Price is $9 per each Item):

Cumulative Pricing Mechanism:

The cumulative pricing mechanism has been selected, where one or multiple rows are utilized in the price calculation based on the quantity, regardless of whether the price column is ranked in descending or ascending order.

Example: For quantity 200, it must be displayed first two rows of the table because first 100 will be counted by 10$ and other 100 will be counted by $9:

On this page
Tags to Embed a Tiered Pricing Table as a Spreadsheet in a Word Document Template
Tags to Embed the Tiered Pricing Table as a Word Table in a Word Document Template
Standard and Cumulative Pricing
Yes
No