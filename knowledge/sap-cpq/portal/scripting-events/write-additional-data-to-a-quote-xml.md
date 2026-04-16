# Write additional data to a quote xml | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/981797bb94264692be4360d244f09b7c.html?locale=en-US&state=PRODUCTION&version=2603
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
Write additional data to a quote xml
How to write additional data to a quote xml?

An administrator can write additional data to a quote xml. This additional data can be used in a custom quote XSLT.

In order to write additional data to the quote xml, a script should be attached to some event within "When quote layout is rendered" section.

There are two options for each serialization event: "Start" for serializing attributes and "End" for serializing elements.

Each event has XmlWriter property which allows us to write additional data to XML. For more info on XmlWriter see MSDN XmlWriter.

Appropriate types for sender argument of each event are:

For "On quote xml serialization Start/End" event, the sender argument is of type Scripting.IQuote

For "On main item xml serialization Start/End" event, the sender argument is of type Scripting.IMainItem

For "On line item xml serialization Start/End" event, the sender argument is of type Scripting.ILineItem

For "On product type xml serialization Start/End" event, the sender argument is of type Scripting.IProductTypeItem

For "On customer xml serialization Start/End" event, the sender argument is of type Scripting.ICustomer

For "On key attribute xml serialization Start/End" event, the sender argument is of type Scripting.IKeyAttribute

Examples
Add "Brand" node to the end of each "MainItem" node

This example selects "Brand" from custom table "ProductAdditionalData" by "ProductName" column and writes it to XML (each main item contains property "ProductName")

Note that this script should be attached to "On main item xml serialization end" where Scripting.IMainItem is type of sender argument.

We use Scripting.ISqlHelper class to read data from the custom table.

This script will add "Brand" node to the end of each "MainItem" node.

The quote XML will look like this:



<Cart>
.....
  <MainItems>
    <MainItem>
    .....
      <Brand>Some brand</Brand>
    </MainItem>
  </MainItems>
  .....
</Cart>


query = "SELECT Brand FROM ProductAdditionalData WHERE ProductName = '" + str(sender.ProductName) + "'"
obj = SqlHelper.GetFirst(query)
XmlWriter.WriteStartElement("Brand")
if obj is not None:
    XmlWriter.WriteCData(obj.Brand)
XmlWriter.WriteEndElement()

Total Extended Amount and Total Cost of Optional Items

This example calculates Total Extended Amount and Total Cost for optional items in the quote and writes them to XML.



optionalItemsExtendedAmount = 0
optionalItemsExtendedCost = 0

for mainItem in Quote.MainItems:
    if mainItem.IsOptional:
         optionalItemsExtendedAmount += mainItem.ExtendedAmount
         optionalItemsExtendedCost += mainItem.ExtendedCost
         for lineItem in mainItem.LineItems:
             if lineItem.IsOptional:
                 optionalItemsExtendedAmount += lineItem.ExtendedAmount
                 optionalItemsExtendedCost += lineItem.ExtendedCost

XmlWriter.WriteStartElement("OptionalItemsTotalAmount_XML")
XmlWriter.WriteValue(optionalItemsExtendedAmount)
XmlWriter.WriteEndElement()
XmlWriter.WriteStartElement("OptionalItemsTotalCost_XML")
XmlWriter.WriteValue(optionalItemsExtendedCost)
XmlWriter.WriteEndElement()
On this page
How to write additional data to a quote xml?
Examples
Yes
No