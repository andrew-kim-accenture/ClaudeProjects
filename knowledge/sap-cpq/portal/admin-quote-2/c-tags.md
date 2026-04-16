# C Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/ba538ecb442649a7b383a45ee686944d.html?locale=en-US&state=PRODUCTION&version=2603
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
C Tags

C tags retrieve data for each item in a quote. The system processes C tags only if they are within C2 tags.

Tag	Description


<<C_TAG()>>

	

The basic C tag. Add any modeling tag (CTX tag, table tag, etc.) in the parenthesis.




<<C_TAG_FILE()>>

	

Retrieves a document from Manage Content Documents and inserts it into the generated document for each item. The name of the file must contain the extension. Only CTX, TABLE and other tags from the SyntaxChecker can be used for this tag.




<<C_VALUE(RolledUpCartItem)>>

	

Retrieves rolled up quote item IDs (the ID of the items as they display in the quote, not their ordinal numbers). For example, 5.1, 5.2, etc.




<<C_EMPTY>>

	

Returns an empty space.




<<C_INSERT_FILE_FROM_ATTRIBUTE()>>

	

Inserts a file from a file attachment attribute.




<<C_ROLLED_UP_LIST>>

	

Sum of extended list prices for all line items. Applicable only when added to main items.




<<C_PIMAGE_LARGE>>

	

Large product image set up for the product.

Note

Importing files of any type is not supported for Excel type document generation templates.




<<C_PIMAGE>>

	

Product image.

Note

Importing files of any type is not supported for Excel type document generation templates.




<<C_PATTR()>>

	

Takes any product level tag (for example, <*Value(AttributeName)*>) and retrieves its value. It's used only for attributes that are line items.




<<C_PATTR2()>>

	

Same as <<C_PATTR(...)>>. It's left in for backward compatibility.




<<C_PATTR_FILE()>>

	

Retrieves a document (Word, PDF, and images) from Manage Content Documents and inserts it into the generated document. You can use this tag when there the document you wish to insert contains dynamically retrieved data. The name of the file must contain the extension.




<<C_PATTR_FILE_STATIC>>

	

Retrieves a document (Word, PDF, and images) from Manage Content Documents and inserts it into the generated document. This tag should be used only when the document that you want to insert doesn't have any data that is dynamically retrieved via tags. In that case, when there's dynamic data in the file, use the <<C_PATTR_FILE()>> tag. The name of the file must contain the extension.




<<C_PATTR_EXCEL()>>

	

Retrieves an Excel document from Manage Content Documents and inserts it into the generated document. This tag should be used only when the document that you want to insert doesn't have any data that is dynamically retrieved via tags. In that case, when there's dynamic data in the file, use the <<C_PATTR_FILE()>> tag. The name of the file must contain the extension.




<<C_KEY_ATTR()>>

	

Inserts the value of the key attribute.

The following C tags are considered to be obsolete and can be replaced with CTX tags.

<<C_ID>>

	

Retrieves the ordinal number of the item in the quote. For child items with cart IDs 5.1 and 5.2, for example, the tag retrieves 6 and 7 as items' ID.




<<C_PNUM>>

	

Part number of all quote items.




<<C_QTY>>

	

Quantity of quote items.




<<C_DISCOUNT>>

	

The discount percent of quote items.




<<C_USER_DESC>>

	

The description that users entered for quote items.




<<C_DESC>>

	

The description of quote items.




<<C_DESIRED>>

	

The base price of quote items.




<<C_BASE>>

	

Returns the base price of quote items.




<<C_LIST>>

	

The list price of quote items.




<<C_PRICE>>

	

Quote item total extended amount.




<<C_ROLLED_UP_DESIRED>>

	

Sum of net prices for all line items. Applicable only when added to main items.




<<C_ROLLED_UP_LIST>>

	

Sum of extended list prices for all line items. Applicable only when added to main items.




<<C_ROLLED_UP_BASE>>

	

Sum of base list prices for all line items. Applicable only when added to main items.




<<C_PTYPE>>

	

Product type.




<<C_PNAME>>

	

Product name.

Yes
No