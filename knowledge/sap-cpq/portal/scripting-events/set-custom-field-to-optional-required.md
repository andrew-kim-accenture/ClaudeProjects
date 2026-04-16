# Set custom field to optional/required? | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/01e4c2c54d43418585d953ae089158bb.html?locale=en-US&state=PRODUCTION&version=2603
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
Set custom field to optional/required?

An administrator can write scripts to dynamically set custom fields to required or optional.

Example
Set custom fields to required using "SetRequired" method

For more details see Scripting.IQuoteCustomFieldCollection.SetRequired(System.String[]) method.

In this example if "SPECIFY_CONFIGURATION" custom field value is "YES", custom fields "HARD DRIVE" and "MEMORY" will be set to required.



if Quote.GetCustomField("SPECIFY_CONFIGURATION").Content == "YES":
    Quote.CustomFields.SetRequired("HARD DRIVE", "MEMORY")

Set custom fields to optional using "SetOptional" method, for more details see Scripting.IQuoteCustomFieldCollection.SetRequired(System.String[]) method.

In this example if "SPECIFY_CONFIGURATION" custom field value is "NO", custom fields "HARD DRIVE" and "MEMORY" wil be set to optional.



if Quote.GetCustomField("SPECIFY_CONFIGURATION").Content == "NO":
    Quote.CustomFields.SetOptional("HARD DRIVE", "MEMORY")
Yes
No