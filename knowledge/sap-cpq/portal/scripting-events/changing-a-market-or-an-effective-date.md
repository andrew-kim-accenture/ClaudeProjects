# Changing a Market or an Effective Date | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/5eaa1fdaad1549b8a29fe997b7f82870.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Editing a Quote
	
Changing Custom Fields
	
Changing a Market or an Effective Date
	
Creating a New Revision
	
Changing Tabs in a Quote
	
Script Performance
Changing a Market or an Effective Date

This workflow describes how various changing actions trigger events and system recalculations in the quote lifecycle.

Context
Procedure
Update market or an effective date

For each item in the quote:

Reconfigure item

Load product

Build containers XML

Load product selection

AddItem (isReconfigure = true)

Events raised include the following, if there are no items in the Quote:

OnEffectiveDateChanged or OnMarketChanged

Reload a Quote

Event raised includes the following:

BeforeQuoteRendering.

Context:

Quote: instance of type Quote2

Caution

Refer to the reconfigure behavior before the main events, listed below:

When you change the market or effective date, the system triggers a reconfiguration for all items in the quote.

For simple or configurable products: if the quote includes items that are simple or configurable:

Event that may be raised includes the following:

BeforeItemUpdated

Context:

Items: IEnumerable<IQuoteItem>

Product: instance of type Product

Quote: instance of type Quote2

Perform calculations and save root item.

AfterItemUpdated

Context:

Items: IEnumerable<IQuoteItem>

Quote: instance of type Quote2

These events occur before the OnMarketChanged or OnEffectiveDateChanged events.

For parent-child products: if there are items in the quote:

Event that may be raised includes the following:

OnProductRuleExecutionStart

OnProductRuleExecutionEnd

OnProductLoaded

OnProductReady

OnProductBeforeAddToQuote

BeforeItemUpdated

OnItemUpdated.

These events occur before the OnMarketChanged or OnEffectiveDateChanged events.

On this page
Context
Procedure
Yes
No