# Check if the pricing condition is manually changed | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/8cc1344325594cac8007dac7ef84206e.html?locale=en-US&state=PRODUCTION&version=2603
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
Check if the pricing condition is manually changed

When working with quotes in SAP CPQ, you can manually change the pricing information on a quote or quote items if the document pricing is enabled. With the ChangedManually flag, this information is included in the Quotes API payload sent to SAP S/4HANA.

Note

The flag isn't available with CTX tags, as there are no regular pricing conditions, so the flag can't be added.

Example

To verify whether the pricing condition has been changed on a quote or quote items, you can use the following script:



Trace.Write('--------------------------------------------')

item = context.Quote.GetAllItems()[0]
pcs = item.PricingConditions
for c in pcs:
    Trace.Write('Item: ' + str(c.ConditionTypeDescription) + ' | ChangedManually=' + str(c.ChangedManually))

Trace.Write('--------------------------------------------')

pcs = context.Quote.PricingConditions
for c in pcs:
    Trace.Write('Quote: ' + str(c.ConditionTypeDescription) + ' | ChangedManually=' + str(c.ChangedManually))

Trace.Write('--------------------------------------------')
                                      

Yes
No