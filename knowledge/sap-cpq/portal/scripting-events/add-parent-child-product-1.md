# Add Parent-Child Product | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/e65a1dfaebfb45019e0b1d073a61a07f.html?locale=en-US&state=PRODUCTION&version=2603
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
Add Parent-Child Product

This section describes the sequence of operations and system events triggered when the Parent-Child product is added to a quote. The Parent-Child product may include containers which hold Simple or Configurable products.

Context

Follow these pipeline steps and event flow:

Procedure
Add a parent-child product from catalog:

Initially, none of the parent product attributes propagate to child products (container rows).

Configure the parent product:

Load the product configuration for the parent product.

Events raised include the following, in order:

OnProductRuleExecutionStart

OnProductRuleExecutionEnd.

Additional events:

OnProductLoaded

OnProductReady.

If you change parent product attributes and need them to be propagated to child items:

The container transfer executes

All container columns are recalculated.

If any container changes:

Events raised include the following, in order:

OnProductRuleExecutionStart

OnProductRuleExecutionEnd.

Execute the AddItem action in the workflow. This includes executing AddItem pre-actions.

Select the parent product attribute values:

For each selected attribute value:

Events raised include the following, in order:

OnProductRuleExecutionStart

OnProductRuleExecutionEnd.

Manage container rows:

When you add, copy, delete, or edit container rows:

Events raised include the following, container row management:

OnContainerRowAdded (on new row added)

OnContainerRowCopied (on row copied)

OnContainerRowDeleted (on row deleted)

OnContainerCellChanged (on cell changed).

Add a container row:

Create a row

Transfer any changed parent attributes to the container columns

Calculate container-to-item mappings: container properties are used when creating new cart items.

If the container attribute triggers the execution of rules (TRUE):

Events raised include the following, within the parent product:

OnProductRuleExecutionStart

OnProductRuleExecutionEnd

The container transfer executes.

If any container changes (TRUE):

Events raised include the following, within the parent product:

OnProductRuleExecutionStart

OnProductRuleExecutionEnd.

If the container attribute triggers the execution of rules (TRUE):

Event raised includes the following, within the parent product:

OnProductRuleExecutionStart.

Select the values for the child product attributes:

For each selected attribute value, within the child product:

Event raised includes the following:

OnProductRuleExecutionStart

OnProductRuleExecutionEnd.

Save the configuration of container rows:

Exit the nested product

Transfer any changed parent attributes to the container columns

Calculate container-to-item mappings.

If the container attribute triggers the execution of rules (TRUE):

Events raised include the following, within the parent product:

OnProductRuleExecutionStart

OnProductRuleExecutionEnd.

Click Add to Quote

If no active quote exists:

The system creates a new quote.

Events raised include the following:

OnQuoteCreated

OnProductBeforeAddToQuote.

Context:

Quote  instance of type Quote2

A quote has been created.

Execute AddParentChildProduct:

Create a root item

For each child item, create a child item within the parent-child product.

Add or update products in a quote

If adding as a new root item:

Before adding:

Event raised includes the following:

BeforeItemmAdded.

Context:

Items: IEnumerable<IQuoteItem>

Product: instance of type Product

Quote: instance of type Quote2.

After adding:

Event raised includes the following:

AfterItemAdded.

If updating an existing product:

Before updating:

Event raised includes the following:

BeforeItemUpdated.

After updating:

Event raised includes the following:

AfterItemUpdated.

Load the cart and prepare for rendering:

Load items into the cart

Prepare the updated quote so users can view it.

Event raised includes the following:

BeforeQuoteRendering.

Sequence of Events for Parent-Child Product:

1. OnProductRuleExecutionStart
2. OnProductRuleExecutionEnd
3. OnProductLoaded
4. OnProductReady
5. (Per attribute selection, parent):

OnProductRuleExecutionStart

OnProductRuleExecutionEnd

6. (Per container row management):

OnContainerRowAdded

OnContainerRowCopied

OnContainerRowDeleted

OnContainerCellChanged

OnProductRuleExecutionStart

OnProductRuleExecutionEnd

7. (Per attribute selection, child):

OnProductRuleExecutionStart

OnProductRuleExecutionEnd

8. (On saving container row)

OnProductRuleExecutionStart

OnProductRuleExecutionEnd

9. OnQuoteCreated (if quote does not already exist)
10. OnProductBeforeAddToQuote
11. Depending on operation:

For new root item:

BeforeItemAdded

AfterItemAdded

For updating existing product:

BeforeItemUpdated

AfterItemUpdated

12. BeforeQuoteRendering.
On this page
Context
Procedure
Yes
No