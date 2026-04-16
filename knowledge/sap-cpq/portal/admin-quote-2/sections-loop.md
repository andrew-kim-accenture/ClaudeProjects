# SECTIONS Loop | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/bed6b8ffa4514c899a60b19384589af5.html?locale=en-US&state=PRODUCTION&version=2603
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
SECTIONS Loop

The SECTIONS loop makes SAP CPQ iterate through all Solution Design sections and retrieve information such as their names, hierarchy Ids, ranks (the ordinal numbers of the sections’ rows), values from all their custom fields, and section totals.

Below is the structure of a SECTIONS loop. You can copy/paste the structure in your template and enter any additional tags.



<<SECTIONS>>

<<SECTIONS_HEADER>>

<<SECTIONS_HEADER_END>>

<<SECTIONS_LOOP>>

<<SECTIONS_LOOP_END>>

<<SECTIONS_FOOTER>>

<<SECTIONS_FOOTER_END>>

<<SECTIONS_END>>


To filter only a specific type of sections, add the section type in the opening loop tag:

Regular <<SECTIONS(Regular)>>

Distribution <<SECTIONS(Distribution)>>

Distributed <<SECTIONS(Distributed)>>

All <<SECTIONS(ALL)>> or <<SECTIONS(Regular, Distribution, Distributed)>>

Section Products
To retrieve all products in a section, you should use the SECTION_PRODUCTS tag. Check the following example for the document structure:


<<SECTIONS>> 

<<SECTIONS_HEADER>> 

This is the document header. 

<<SECTIONS_HEADER_END>> 

<<SECTIONS_LOOP>> 

<<C_TAG(<*CTX(Quote.Sections.CurrentSection.Name)*>)>> 

<<SECTION_PRODUCTS>> 

<<C_TAG(<*CTX(Quote.CurrentItem.ProductInfo.ProductName)*>)>> 

<<SECTION_PRODUCTS_END>> 

<<SECTIONS_LOOP_END>> 

<<SECTIONS_FOOTER>> 

This is the document footer. 

<<SECTIONS_FOOTER_END>> 

<<SECTIONS_END>> 
Header

The header is displayed only once below the opening SECTIONS tag. It can contain a table with the section name, rank, hierarchy, and any custom fields, the values of which you wish to add. It’s also possible to add Q Tags 1.0 in the header, if needed.

Loop

Section items you’ve filtered in the opening SECTIONS tag are processed in this part. C Tags can be used inside the loop, along with CTX Tags for retrieving hierarchy Id, rank, and the section name, as well as custom fields.

Footer

The footer can contain section totals and Q tags.

Microsoft Excel Templates
In Microsoft Excel templates, the SECTIONS loop has the following structure:


<<SECTIONS>> 

<<SECTIONS_HEADER>> 

<<SECTIONS_LOOP>> 

<<SECTIONS_FOOTER>> 
For filtering section items in the opening SECTIONS tag, you can use the condition SECTION_TYPE (not case sensitive), with the allowed values ALL, REGULAR, DISTRIBUTION, DISTRIBUTED (not case sensitive).

Example 1: Example of the syntax for the use of the SECTIONS loop in a Microsoft Excel template: <<SECTIONS(13X5 | SECTION_TYPE: Distributed, Regular)>>. In this example, the tag retrieves 13 rows and 5 columns of sections of the type Distributed and Regular.

Example 2: The example illustrates the required structure for the c2 loop in Excel:

In this example, <<C_TAG(<*CTX( Quote.Sections.CurrentSection.Name )*>)>> and <<C_TAG(<*CTX( Quote.Sections.CurrentSection.Rank )*>)>> retrieves the name of the current section and Rank of the current section respectively.

Limitation in Excel Documents

When using loop tags like C2, INVOLVED_PARTIES, and SECTIONS in a vertical sequence, each subsequent tag must be defined within a range that contains the same number of, or fewer, columns than the one defined in the tag above it.

In the given example, the first C2 loop has a range of 7x2, whereas the C2 tag below is defined with a range of 7x3. The second C2 loop may break during the document generation phase. To mitigate this issue, set the range of the loop tag above to match or exceed the number of columns than the tag below. For instance, in this example, you must change the range for the first C2 loop from 7x2 to 7x3.

On this page
Section Products
Header
Loop
Footer
Microsoft Excel Templates
Limitation in Excel Documents
Yes
No