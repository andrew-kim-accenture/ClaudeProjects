# Nested Products Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/011766bed3e846299a1b6beba06bae01.html?locale=en-US&state=PRODUCTION&version=2603
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
Nested Products Tags

To display parent/child product structure in generated documents, you should add MAIN tags for children products inside parent MAIN tags.

The first main item in the tag structure can be any root item from the quote, which satisfies the condition. All main tags inside that tag act as children items. Furthermore, there can be a child main tag inside a child main tag, and so on. Main tags should be marked with a number according to their level (the root main item (parent product) is marked with 1 and children main items are marked with 2, 3, etc, respectively). Nesting is possible up to 9 main items.



<<QUOTE_PRODUCTS>>
  <<NESTED_PRODUCTS>>
    <<MAIN_1>>
		<<CONTENT>>
		<<CONTENT_END>>
		<<LI>>
			<<CONTENT>>
			<<CONTENT_END>>
		<<LI_END>>
		<<MAIN_2>>
			<<CONTENT>>
			<<CONTENT_END>>
			<<LI>>
				<<CONTENT>>
				<<CONTENT_END>>
			<<LI_END>>
			<<MAIN_3>>
				<<CONTENT>>
				<<CONTENT_END>>
				<<LI>>
					<<CONTENT>>
					<CONTENT_END>>
				<<LI_END>>
			<<MAIN_END_3>>
		<<MAIN_END_2>>
	<<MAIN_END_1>>
  <<NESTED_PRODUCTS_END>>
<<QUOTE_PRODUCTS_END>>
Tip

If you add conditions for retrieving nested products, the <<CONDITION_END>> tag isn't required.

Note

<<QUOTE_PRODUCTS>> and <<NESTED_PRODUCTS>> are not supported in Microsoft Excel templates.

Sorting
Sorting conditions can be defined on <<MAIN_1>> tag in the following ways:

without sorting preferences - takes one parameter, for example a CTX formula, and orders items by the parsed value of that formula.



<<<MAIN_1: SORT_BY(<*CTX( Quote.CurrentItem.PartNumber )*>)>>

with sorting preferences - takes two parameters, for example a CTX formula and sorting preferences, and orders items by taking the items that were filtered out and sorts them in the specified order.



<<MAIN_1: SORT_BY(<*CTX( Quote.CurrentItem.PartNumber )*>::PartNumber1,PartNumber2,PartNum3)>>

Conditions

If needed, you can add a condition to the <<MAIN>> and <<LI>> tags to limit which items are displayed in the document. The condition on each tag is parsed independently. If the condition is not met, the content of that tag and the underlying tags are not displayed.

In order to set the condition, it is necessary to define a formula. This formula is parsed during document processing. The condition is satisfied if the result of formula is 1.

An example tag with the condition:


<<MAIN_1:  CONDITION([EQ](<*CTX( Quote.QuoteNumber )*>, 11980014)) >>
Note

No need to use "=" or "!".

Examples
Example 1


<<QUOTE_PRODUCTS>>
<<NESTED_PRODUCTS>>
<<MAIN_1:CONDITION(Hardware)>>
<<CONTENT>>
…Some Parent Item Information…
<<CONTENT_END>>
<<MAIN_2:CONDITION(Software)>>
<< CONTENT>>
…Child Item 1 Information…
<<CONTENT_END>>
<<MAIN_END_2>>
<<LI:CONDITION(Memory)>>
<<CONTENT>>
…Parent Line Item Information…
<< CONTENT_END>>
<< LI _END>>
<<MAIN_END_1>>
<<NESTED_PRODUCTS_END>>
<<QUOTE_PRODUCTS_END>>

In this example, children main tags are nested inside parent main tags. The parent main tag range is marked with MAIN_1 and MAIN_END_1, and a child main tag is marked with MAIN_2 and MAIN_END_2 inside a parent tag. The system prints information for the parent item, which is of type Hardware. After that, child item information will be printed (for all children items of type Software), and then again parent item information will be printed, followed by a parent line item information of type Memory. This way, information from the child item is printed multiple times in the parent item. Also, child tag can have another child MAIN tag inside, to describe real SAP CPQ product nesting.

Example 2

There can be multiple CONTENT tags defined, so HEADER, and FOOTER tags are redundant. The example below shows a MAIN root tag structure:



<<MAIN_1>>
<<CONTENT>>
…Some Parent Item Information…
<<CONTENT_END>>
<<MAIN_2>>
<< CONTENT>>
…Child Item 1 Information…
<<CONTENT_END>>
<<MAIN_END_2>>
<<CONTENT>>
…More Parent Item Information…
<<CONTENT_END>>
<<LI>>
<<CONTENT>>
…Parent Line Item Information…
<< CONTENT_END>>
<< LI _END>>
<<MAIN_END_1>>

In the example illustrated above, there are two different CONTENT tags, which pull information from the root item, and between them there's information from the child main item. Following that, information from a root line item are printed. Also, HEADER and FOOTER tags are redundant in this case, since CONTENT could replace both of them.

Example 3

If we have an EP String root item information that we want to print, and we want to print some EP Compressor and EP Steam Turbine child information inside the parent, printed on different places (multiple times inside a parent) this is how it should be possible to do that (LINE item tags are left out in an example because it's easier to focus on main item nesting):



<<QUOTE_PRODUCTS>>
<<NESTED_PRODUCTS>>
<<MAIN_1:CONDITION([EQ](<*CTX( Quote.CurrentItem.ProductTypeName )*>,EP String))>>
<<CONTENT>>
…Some String Information…
<<CONTENT_END>>
<<MAIN_2:CONDITION([EQ](<*CTX( Quote.CurrentItem.ProductTypeName )*>,EP Compressor))>>
<<CONTENT>>
…Some Compressor Information (repeat for as many compressors)…
<<CONTENT_END>>
<<MAIN_END_2>>
<<MAIN_2:CONDITION([EQ](<*CTX( Quote.CurrentItem.ProductTypeName )*>,EP Steam Turbine))>>
<<CONTENT>>
…Some Steam Turbine Information (repeat for as many steam turbines)…
<<CONTENT_END>>
<<MAIN_END_2>>
<<CONTENT>>
…More String Information…
<<CONTENT_END>>
<<MAIN_2:CONDITION([EQ](<*CTX( Quote.CurrentItem.ProductTypeName )*>,EP Compressor))>>
<<CONTENT>>
…More Compressor Information (repeat for as many compressors)…
<<CONTENT_END>>
<<MAIN_END_2>>
<<MAIN_2:CONDITION([EQ](<*CTX( Quote.CurrentItem.ProductTypeName )*>,EP Steam Turbine))>>
<<CONTENT>>
…More Steam Turbine Information (repeat for as many steam turbines)…
<<CONTENT_END>>
<<MAIN_END_2>>
<<CONTENT>>
…More String Information…
<<CONTENT_END>>
<<MAIN_END_1>>
<<NESTED_PRODUCTS_END>>
<<QUOTE_PRODUCTS_END>>

On this page
Sorting
Conditions
Examples
Yes
No