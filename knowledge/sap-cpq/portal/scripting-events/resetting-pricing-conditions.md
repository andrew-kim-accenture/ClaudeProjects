# Resetting Pricing Conditions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/4b41eb3f0ef04300a32e27d8a752e8f2.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Write additional data to a quote xml
	
Quote Total standard calculations
	
Quote item copy event
	
Automatically add/update item with configuration in the quote
	
Check if the pricing condition is manually changed
	
Resetting Pricing Conditions
	
Setting Permissions for Quote Standard Fields
	
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
Resetting Pricing Conditions

You can reset pricing conditions on Variant Configuration (VC) products at the quote header level or at the quite item level through scripting.

Note

You can only delete pricing conditions that are allowed for deletion in SAP Variant Configuration and Pricing. These products have the deletionAllowed flag set to true.

Resetting Pricing Conditions on Quote Header Level
To reset the pricing header condition record via scripting, you need to:

Enable condition reset. To do so, go to Setup  Pricing/Calculations  Pricing Procedures page, and under the Settings tab, activate Enable Condition Reset.

Call .DeleteConditionForColumn('header name') on a quote, providing the quote header name as a parameter:

Example


Item=context.Quote.GetAllItems() [0]
Context.quote.DeleteConditionForColumn('TotalProductDiscountAmount')
                                      
Resetting Pricing Conditions on Quote Items

To reset the pricing condition from a quote item, call .DeleteConditionForColumn('column name'), providing the column name as a parameter:

Example


Context.quote.GetItemByItemId(1).DeleteConditionForColumn('TotalProductDiscountAmount')
                                      

On this page
Resetting Pricing Conditions on Quote Header Level
Resetting Pricing Conditions on Quote Items
Yes
No