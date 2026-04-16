# Creating a New Revision | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/d3ff74ad5ebb4e889055979bcfddd773.html?locale=en-US&state=PRODUCTION&version=2603
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
Creating a New Revision

This workflow describes how revisions trigger events and system recalculations in the quote lifecycle.

Context
Procedure
Create a new revision

System process:

Execute main action: New Revision

Copy quote

Action: Quote action: New Revision

Execute main action: Edit.

Event raised includes the following:

QuoteEdit

Context:

Quote: instance of type Quote2.

Reload a quote

Event raised includes the following:

BeforeQuoteRendering

Context:

Quote: instance of type Quote2.

On this page
Context
Procedure
Yes
No