# C2 Loop | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/c7285cd1268c4497a9481bea87652e60.html#file-attachment-attribute
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
C2 Loop

You can use the C2 tags when you wish the system to iterate through all items in a quote.

You can add C2 tags only to main and line items. You can't add a C2 loop inside a C2 loop, but you can add a condition inside a C2 loop. Make sure you don't add too many C2 tags (500 tags and more) because that will affect the performance poorly.

Note

If you separate C2 loop into two or more sections by placing them inside table cells, or in any other way, the output will not work.

Below is the outline of the structure of a C2 tag. You can copy/paste the structure in your template and enter any additional tags.



<<C2>>
<<HEADER>>
<<HEADER_END>>
<<MAIN>>
<<C_STOP>>
<<MAIN_END>>
<<LI>>
<<C_STOP>>
<<LI_END>>
<<FOOTER>>
<<FOOTER_END>>
<<C_END>>
Note

Opening and closing tags (for example, <<LI>> and <<LI_END>>) must each be displayed in a separate row.

A C2 tag can optionally have four sections (header, main items, line items, and footer) and each of them is described in more details below.

Header

A header is displayed only once at the beginning of a C2 tag. You can add only Q tags inside the header because other tags aren't parsed. If there's a table in your template, the table header should be displayed in the header tags.

Note

If you have a table that displays on more than one page, check the Repeat as header row at the top of each page in Word to display the header on each page.

Main Items

The main tag retrieves all main items in a quote (there should be one set of MAIN tags for each main item). For the system to properly process the items, you need to add the <<C_STOP>> tag before the closing main tag. If there’s parent/child item structure, the system treats child items as main items. If tabular representation is needed, you should add table rows that contain item data.

Line Items

The line item tag retrieves all line items in a quote (there should be one set of LINE ITEM tags for each line item). For the system to properly process the items, you need to add the <<C_STOP>> tag before the closing line item tag. If you need to represent line items in a table, you should add table rows within the line item tags.

Footer

A footer is displayed only once at the end of a C2 tag. You should add only Q tags inside the footer because other tags aren't parsed. If there's a table in the template, the table footer should be displayed in the footer tags.

Note

There has to be at least one blank space (or a new line) after <<C_END>> for the system to process it properly.

Other C2 Tags
Tag	Description


<<C2_PTYPE(...)>>

	

Same functionality as <<C2>> except it only lists main items that have product type as defined in parentheses and their line items (regardless of the product type of line item).




<<C2_PTYPE_ALL(...)>>

	

Same functionality as <<C2>> except it only lists main items and line items that have product type as defined in parentheses.




<<C2_PTYPE_ALL_SortByRank()>>

	

This tag enables you to sort products by product type rank order. If you have two product types (Drive ranked 10 and Hardware ranked 5), the <<C2_PTYPE_ALL_SortByRank(...)>> tag sorts all your product types by Hardware and then by Drive as a result of the ranking set on each of the product type.




<<C2_PTYPE_ALL_SortByRankButStartWith(First,Second,Third...)>>

	

This tag enables you to sort product type rank order, but you can state which rank order to start with product types. If you have four product types, such as Drive ranked 5, Hardware ranked 2, Services ranked 3, and Computers ranked 1, tag <<C2_PTYPE_ALL_SortByRankButStartWith(Drive,Hardware, Services)>> sorts all your products by Drive, Hardware, and Services first. In this case the sorting starts with Computers, followed by the remaining product types in order by rank. The new sort type enables you lots of flexibilities when ordering your product types.




<<C2_PTYPE_ALL_SortByName()>>

	

This tag enables you to sort product types by the product name. If you have two product types, Drive and Hardware, ranked 10 and 5 respectively, <<C2_PTYPE_ALL_SortByName()>> tag sorts all your products by Drive and then by Hardware due to their alphabetical order.




<<C2_PTYPE_ALL_SortByNameButStartWith(Drive, Services, Hardware, Computer)>>

	

This tag enables you to sort the product type in the alphabetical order, but you can state which rank order to start with. If you have four product types, such as Drive ranked 5, Hardware ranked 2, Services ranked 3, and Computers ranked 1, this tag sorts all your products by Drive, Services, and Hardware first; then, it starts sorting the types in the alphabetical order, and would start with Computers followed by the remaining product types in the alphabetical order by name. This tag gives you lots of flexibilities when ordering your product types.




<<C2_OPTIONAL(...)>>

	

It lists items based on the value in the parenthesis that can be Y,N and ALL. Y lists only optional items. N lists only nonoptional items. ALL lists both nonoptional and optional items (<<C2_OPTIONAL(ALL)>> is equivalent to <<C2>>).




<<C_INSERT_FILE_FROM_ATTRIBUTE(attribute name)>>

	

This tag enables you set up the attribute to later fetch file attachments to upload images to the catalog. See below section File Attachment Attribute for more information.


<<C2_CONSOLIDATE(...)>>

This tag consolidates items based on a common denominator. For example, if we have 2 items with the same part number, using consolidate (<<C2_CONSOLIDATE(C_PNUM)>>) lists it only once.



<<HEADER>>
<<HEADER_END>>
<<ITEM>>
Item number: <<UNIQUE(C_PNUM)>>
Item QTY: <<SUM(C_QTY)>>
Item IDs: <<APPEND(C_ID)>>
<<C_STOP>>
<<ITEM_END>>
<<FOOTER>>
<<FOOTER_END>>
<<C_END>>

In the above example, items are consolidated based on the part number. <<UNIQUE(C_PNUM)>> lists the unique part number. Important thing to note is that the inner tag (C_PNUM) in this example shouldn’t be surrounded with << >>. <<SUM(C_QTY)>> takes the quantity of each item that has this part number, add it up and display it. <<APPEND(C_ID)>> lists all IDs that have this part number. List is separated by a comma (Item IDs: 1,3,4). By default consolidate runs through all items. To only process main items we could say <<C2_CONSOLIDATE(C_PNUM,MAIN)>> or to only process line items <<C2_CONSOLIDATE(C_PNUM,LI)>>.

Tag <<C2...>> in Excel Templates

<<C2>> tag can be used in Excel template as well. In Excel, you define a cell range where you want to render information. You don’t need to define the range for tags that retrieve simple data, for example C and Q tags.



<<C2(10X10|CONDITION:[AND](<*CTX( Quote.CurrentItem.IsOptional )*>,[EQ](<*CTX( Quote.CurrentItem.IsMainItem )*>,False))=1)>>
<<MAIN(1X10)>>
<<C_PNUM>>
<<LI(1X10)>>
<<C_PNUM>>


This example shows scenarios in which you want to display line items that are optional. Notice that 10 rows and 10 columns are allocated for this information to be rendered and for each main and line item that are being allocated one more row. Also notice that main item aren't displayed, based on the condition we have set, but <<MAIN>> tag must exist in the template to follow a valid template tags sequence.

File Attachment Attribute

You can use the C tag <<C_INSERT_FILE_FROM_ATTRIBUTE(attribute name)>> in GenDoc templates for fetching attribute images on attribute level. This enables you to attach files conveniently during the configuration process in the catalog.

Users can attach the supported image files in the product catalog under Products   Attributes. The attribute from which the files fetch happens needs to be set as File Attachment. During configuration, users can upload the image files under Choose Product Image.

Note the following:

Only apply the tag <<C_INSERT_FILE_FROM_ATTRIBUTE(attribute name)>> within the C2 loop.

The loop must not be empty.

It must contain at least one product that on this level has this type of attribute for which the image is fetched.

The file types .jpg, .jpeg, and .png are supported.

Example:


<<C2>>
<<MAIN>>
<<C_INSERT_FILE_FROM_ATTRIBUTE(attribute name)>>
<<MAIN_END>>
<<C_END>>
Limitations in Excel Documents

When using loop tags like C2, INVOLVED_PARTIES, and SECTIONS in a vertical sequence, each subsequent tag must be defined within a range that contains the same number of, or fewer, columns than the one defined in the tag above it.

In the given example, the first C2 loop has a range of 7x2, whereas the C2 tag below is defined with a range of 7x3. The second C2 loop may break during the document generation phase. To mitigate this issue, set the range of the loop tag above to match or exceed the number of columns than the tag below. For instance, in this example, you must change the range for the first C2 loop from 7x2 to 7x3.

Example of C2 loop in excel templates

The example illustrates the required structure for the C2 loop in Excel.

<<CONTAINER(2x2|Project Tasks)>>: This is a container element nested within the main section, with a size of 2 columns and 2 rows.

<<CONTAINER_ITEM(1x2)>>: This is an item within the container, with a size of 1 column and 2 rows.

<<CONTAINER_TAG(<*CTX( Container(Project Tasks).Row().Column(Total Value).Get )*>)>>: This tag references the value of the Total Value column for the current item within the "Project Tasks" container.

<<CONTAINER_TAG(<*CTX( Container(Project Tasks).Row().Column(Id).Get )*>)>>: This tag references the value of the "Id" column for the current item within the "Project Tasks" container.

On this page
Header
Main Items
Line Items
Footer
Other C2 Tags
<<C2_CONSOLIDATE(...)>>
Tag <<C2...>> in Excel Templates
File Attachment Attribute
View all
Yes
No