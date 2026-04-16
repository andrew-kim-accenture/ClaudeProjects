# Total Extended Amount and Total Cost of Optional Items | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/7d7e67c724fc4bd99fe6a3ed8b9bf8e3.html?locale=en-US&state=PRODUCTION&version=2603
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
Total Extended Amount and Total Cost of Optional Items

This Custom Quote calculation with RowType Cart Item was used to override the standard Product Type Multiplier to Items calculation in Cart Fields Administration.

Unlike the standard CPQ calculation, when a user enters a new product type multiplier, only main items with the same product type will be updated.



Item = sender;
optionalItemsExtendedAmount = 0;
optionalItemsExtendedCost = 0;
for mainItem in Quote.MainItems:
        mainIsOptional = mainItem.IsOptional
        mainExtendedAmount = mainItem.ExtendedAmount
        mainExtendedCost = mainItem.ExtendedCost
        optionalItemsExtendedAmount += mainIsOptional * mainExtendedAmount
        optionalItemsExtendedCost += mainIsOptional * mainExtendedCost
        for lineItem in mainItem.LineItems:
                lineIsOptional = lineItem.IsOptional
                lineExtendedAmount = lineItem.ExtendedAmount
                lineExtendedCost = lineItem.ExtendedCost
                optionalItemsExtendedAmount += lineIsOptional * lineExtendedAmount
                optionalItemsExtendedCost += lineIsOptional * lineExtendedCost

XmlWriter.WriteStartElement("OptionalItemsTotalAmount_XML")
XmlWriter.WriteValue(optionalItemsExtendedAmount)
XmlWriter.WriteEndElement()
XmlWriter.WriteStartElement("OptionalItemsTotalCost_XML")
XmlWriter.WriteValue(optionalItemsExtendedCost)
XmlWriter.WriteEndElement()

Yes
No