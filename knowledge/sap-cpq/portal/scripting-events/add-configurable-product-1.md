# Add Configurable Product | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/95bb2ee54119481c8c350fa192ce1e94.html?locale=en-US&state=PRODUCTION&version=2603
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
Add Configurable Product

This section describes the sequence of operations and system events triggered when a configurable product is added to a quote.

Context

This pipeline describes the exact execution order and event context for configurable product add-to-quote workflows. Follow these pipeline steps and event flow:

Procedure
Configure a product:

The system starts by loading the product configurations and applying rules.

Events raised include the following, in order:

OnProductRuleExecutionStart

OnProductRuleExecutionEnd.

Additional events:

OnProductLoaded

OnProductReady.

Select attribute values:

For each attribute value you select, the system applies relevant rules.

Events raised include the following, per attribute selection:

OnProductRuleExecutionStart

OnProductRuleExecutionEnd.

Click Add to Quote from the Configurator:

If no active quote exists:

The system creates a new quote.

Event raised includes the following:

OnQuoteCreated (after quote creation).

Context:

Quote  instance of type Quote2

A quote has been created.

Prepare the product for adding to a quote:

Event raised includes the following:

OnProductBeforeAddToQuote.

Add or update a product in a quote:

If adding as a new root item:

Before adding:

Event raised includes the following:

BeforeItemAdded.

Context:

Items: IEnumerable<IQuoteItem>

Product: instance of type Product

Quote: instance of type Quote2.

After adding:

Event raised includes the following:

AfterItemAdded.

Context:

Items: IEnumerable<IQuoteItem>

Quote: instance of type Quote2.

If updating an existing product (adding as attribute):

Before updating:

Event raised includes the following:

BeforeItemUpdated.

Context:

Items: IEnumerable<IQuoteItem>

Product: instance of type Product

Quote: instance of type Quote2.

After updating:

Event raised includes the following:

AfterItemUpdated.

Context:

Items: IEnumerable<IQuoteItem>

Quote: instance of type Quote2.

Load a cart and prepare the quote for rendering:

The system loads cart items and prepares updated quotes for users to view.

Event raised includes the following:

BeforeQuoteRendering.

Context:

Quote: instance of type Quote2.

Sequence of Events for Configurable Product:

1. OnProductRuleExecutionStart
2. OnProductRuleExecutionEnd
3. OnProductLoaded
4. OnProductReady
5. (Per attribute selection):

OnProductRuleExecutionStart

OnProductRuleExecutionEnd

6. OnQuoteCreated (if quote does not already exist)
7. OnProductBeforeAddToQuote
8. Depending on operation:

For new root item:

BeforeItemAdded

AfterItemAdded.

For updating existing product:

BeforeItemUpdated

AfterItemUpdated.

9. BeforeQuoteRendering
On this page
Context
Procedure
Yes
No