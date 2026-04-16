# How-to Examples | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/a86cd6ade944485286d84ddd5599b5a4.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Replace New Style classes with Old Style classes in IronPython
	
Use custom table data
	
Invoke a script directly from client using javascript
	
Call an external web service
	
Consume Python Global Scripts as REST Webservices
	
Rest Service Call
	
Send xml to an external system
	
Using Arg.Custom paramter
	
Configure container child product
	
Use ApplyProductChanges method
	
Quote
	
Product Configurator
	
Working with Streams
	
Other Examples
	
Using Trace and Log
	
Tips and Tricks
	
Calculate Product Type Custom Discount field
	
How to use Scripting Modules?
	
How to Hide Custom Field
	
How to integrate with Litmos using IronPython scripting?
	
Integrate with MS CRM
	
Product completed event
	
Product Type Multiplier to Parent Items Only
	
Set cart item to optional by default?
	
Set custom field to optional/required?
	
Set the Multiplier and Quantity of all child items to the Multiplier and Quantity of the parent item
	
Total Extended Amount and Total Cost of Optional Items
	
Use Product Type Item custom calculations?
	
Use Quote Total custom calculations?
	
Use SelectedAttributes of Quote item
	
Unicode Support in Scripting
	
Get Cookies for REST UI API Authentication
	
Use the <*ExecuteScript()*> Tag
	
Send Attribute Values via Scripting in Bulk to SAP Variant Configuration and Pricing
	
Reset Values via Scripting
	
Random Object
	
Event Pipeline in Quote 1.0
	
Event Pipeline in Quote 2.0
	
Script Performance
How-to Examples



Replace New Style classes with Old Style classes in IronPython

Use custom table data

Invoke a script directly from client using javascript

Call an external web service

Consume Python Global Scripts as REST Webservices

Rest Service Call

Send xml to an external system

Using Arg.Custom paramter

Configure container child product

Use ApplyProductChanges method

Quote

Product Configurator

Working with Streams

IronPython SAP CPQ API supports working with StreamReader. At some point, you might need to extract some data from stream, e.g. error details in case of exception during REST API call:
Other Examples

Using Trace and Log

Trace.Write() and Log.Write() methods are used when we want to check some value or write to Developer Console or Log.
Tips and Tricks

In order to successfully write code that will be both effective and efficient, one should take care of the following tips and tricks.
Calculate Product Type Custom Discount field

How to use Scripting Modules?

How to Hide Custom Field

How to integrate with Litmos using IronPython scripting?

Integrate with MS CRM

An administrator can write scripts to fully integrate Microsoft CRM with CPQ.
Product completed event

An administrator can invoke script when product is completed in the configurator.
Product Type Multiplier to Parent Items Only

Set cart item to optional by default?

Set custom field to optional/required?

An administrator can write scripts to dynamically set custom fields to required or optional.
Set the Multiplier and Quantity of all child items to the Multiplier and Quantity of the parent item

Total Extended Amount and Total Cost of Optional Items

Use Product Type Item custom calculations?

Use Quote Total custom calculations?

Use SelectedAttributes of Quote item

Unicode Support in Scripting

When you’re making queries with the SqlHelper.GetList or SqlHelper.GetFirst methods, and the queries contain unicode characters, you need to make sure that they are properly formatted.
Get Cookies for REST UI API Authentication

Use the <*ExecuteScript()*> Tag

The <*ExecuteScript(MyGlobalScriptName) *> tag is used for executing global scripts.
Send Attribute Values via Scripting in Bulk to SAP Variant Configuration and Pricing

When you use scripting to modify attributes on a Variant Configuration product, you can send the changes to SAP Variant Configuration and Pricing in bulk, instead of individually after each change.
Reset Values via Scripting

Random Object

Yes
No