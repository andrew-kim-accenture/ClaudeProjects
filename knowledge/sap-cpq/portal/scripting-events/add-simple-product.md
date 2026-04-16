# Add Simple Product | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/046d484f28334efaa7687b211039970e.html?locale=en-US&state=PRODUCTION&version=2603
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
Add Simple Product

This section describes the sequence of operations and system events triggered when a simple product is added to a quote.

Context

Follow these pipeline steps and event flow:

Procedure
Check or create a quote:

If no active quote exists:

The system creates a new quote.

Event raised includes the following:

OnQuoteCreated (only if a quote does not already exist).

Load the product configuration and apply the rules:

The system loads the configuration for the selected product and applies any relevant rules.

Events raised include the following, in order:

OnProductRuleExecutionStart

OnProductRuleExecutionEnd.

Populate product information:

Product data populates and becomes available for further processing.

Events raised include the following, in order:

OnProductLoaded

OnProductReady

OnProductBeforeAddToQuote.

Add a product to a quote:

Before adding:

The system calculates and saves the root item details.

Event raised includes the following:

BeforeItemAdded.

Add a product:

The system adds the product to the quote.

After Adding:

The system updates totals and finalizes the additions.

Event raised includes the following:

OnItemAdded.

Prepare the quote for rendering:

The system prepares updated quotes for users to view.

Event raised includes the following:

BeforeQuoteRendering.

Sequence of Events for Simple Product:

1. OnQuoteCreated
2. OnProductRuleExecutionStart
3. OnProductRuleExecutionEnd
4. OnProductLoaded
5. OnProductReady
6. OnProductBeforeAddToQuote
7. BeforeItemAdded
8. OnItemAdded
9. BeforeQuoteRendering.
On this page
Context
Procedure
Yes
No