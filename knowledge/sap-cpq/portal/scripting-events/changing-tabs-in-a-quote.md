# Changing Tabs in a Quote | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/fe5d675b3b2e4a23b2d82f1a5791af72.html?locale=en-US&state=PRODUCTION&version=2603
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
Changing Tabs in a Quote

This workflow describes how tab changes trigger events and system recalculations in the quote lifecycle.

Context
Procedure
Change a tab

The system detects a tab change within the quote UI.

Event raised includes the following:

OnQuotationTabChanged.

Context:

PreviousTabId: previous_tab_id (int)

Quote: instance of type Quote2

TabId: tab_id (int).

On this page
Context
Procedure
Yes
No