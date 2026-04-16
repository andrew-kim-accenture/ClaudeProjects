# Changing Custom Fields | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/cf0f1eda229e446e9f7d96d6350459ef.html?locale=en-US&state=PRODUCTION&version=2603
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
Changing Custom Fields

This workflow describes how changing custom fields trigger events and system recalculations in the quote lifecycle.

Context
Procedure
Change the value of a custom field

The behavior depends on the Automatically Save Quote on Custom Field Change parameter.

If enabled (true):

Each custom field includes the Save Quote on Change toggle.

If the toggle is true, the system immediately triggers:

Action: Calculate

Event raised includes the following:

AfterChangingCustomField.

Context:

FieldName: name of the custom field

PreviousValue: instance of type String

Quote: instance of type Quote2

Action: Quote action: Reprice.

If disabled (false):

No toggle is shown

You must manually save the quote to persist changes and trigger the event.

Action Required: Save or the Reprice action

Event raised includes the following (after save):

AfterChangingCustomField.

Context: same as above.

Reload a quote

Get items and prepare for rendering

Event raised includes the following:

BeforeQuoteRendering.

Context:

Quote: instance of type Quote2.

On this page
Context
Procedure
Yes
No