# Deleting Products from a Quote | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/bda06ae402f744dba74bdb70e2924f88.html?locale=en-US&state=PRODUCTION&version=2603
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
Deleting Products from a Quote

This section describes the sequence of operations and system events triggered when you delete products in a quote.

Context

This workflow explains how deleting actions trigger events and system recalculations in the quote lifecycle.

Procedure
Delete an item in a quote

Execute a delete action on a quote item.

Process:

Execute an item action: Delete

Perform recalculations

Update totals of the items, product types, and quote totals.

Event raised includes the following:

AfterDeletingProductsInQuote

Context:

DeletedItems: IEnumerable<IQuoteItem>

Quote: instance of type Quote2.

Load the updated quote:

Event raised includes the following:

BeforeQuoteRendering.

Context:

Quote: instance of type Quote2.

On this page
Context
Procedure
Yes
No