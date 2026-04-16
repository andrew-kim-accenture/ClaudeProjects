# Editing, Copying and Deleting Products from Quote | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/9f319b33278c4c8996e32300c80038b6.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Scripting Events, Properties and Event PipelineVersion: 2603English
Provide feedback on our search

	
Introduction
	
SAP CPQ script plugin
	
Alternatives to CLR Module Import
	
Common properties
	
Iron Python Events
	
How-to Examples
	
Event Pipeline in Quote 1.0
	
Event Pipeline in Quote 2.0


	
Add Simple Product
	
Add Configurable Product
	
Add Parent-Child Product
	
Editing, Copying and Deleting Products from Quote
	
Deleting Products from a Quote
	
Changing Values in Quote (Custom Fields, Market, Effective Date, Revision) and the Changing Tab
	
Script Performance
Editing, Copying and Deleting Products from Quote

This section describes the sequence of operations and system events that occur when you edit, copy, or delete products in a quote.

Context

Editing a Quote Item

Note

For information how to edit a quote item, refer to the Add Simple Product, Add Configurable Product, and Add Parent-Child Product topics. For information how to delete a quote item, refer to the Deleting Products from a Quote topic.

Copying Items in a Quote

Procedure
Copy item in a quote:

Execute a copy action in a quote item.

Process:

Execute item action: Copy

Perform calculations on the copied item

Build number of items for product types

Copy product configuration

Copy item attachments.

Save copied items:

Save the newly copied items to the quote.

Event raised includes the following:

AfterCopyingProductsInQuote.

Context:

CopiedItems: IEnumerable<IQuoteItem>

OriginalItems: IEnumerable<IQuoteItem>

Quote: instance of type Quote2.

Load the updated quote:

Event raised includes the following, in order:

BeforeQuoteRendering.

Context:

Quote: instance of type Quote2.

On this page
Context
Procedure
Yes
No