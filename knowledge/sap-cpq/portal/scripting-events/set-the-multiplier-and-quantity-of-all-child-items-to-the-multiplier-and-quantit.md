# Set the Multiplier and Quantity of all child items to the Multiplier and Quantity of the parent item | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/ff65bd1c384e44daad3e11ec43fe332c.html?locale=en-US&state=PRODUCTION&version=2603
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
Set the Multiplier and Quantity of all child items to the Multiplier and Quantity of the parent item

This script is used when there are many container line items referencing configurable products and the "Inherit Quantity from Parent" functionality does not work for reference products.

With this script, the quantity and multiplier entered for e.g. item 2 will be passed to items 2.1, 2.2, 2.3, ...



rldUpItemNo = Item.RolledUpQuoteItem;
newMultiplier = Item.Multiplier;
newQuantity = Item.Quantity;
isItemAChildItem = 0;
dot_position = rldUpItemNo.find(".");
if dot_position != -1:
        isItemAChildItem = 1;
        parentItem = rldUpItemNo[0:dot_position];
if isItemAChildItem == 1:
        for mainItem in Quote.MainItems:
                mainRldUpItemNo = mainItem.RolledUpQuoteItem
                main_first_dot_position = mainRldUpItemNo.find(".")
                if main_first_dot_position == -1:
                        if mainRldUpItemNo == parentItem:
                                newMultiplier = mainItem.Multiplier
                                newQuantity = mainItem.Quantity<para xmlns="http://ddue.schemas.microsoft.com/authoring/2003/5" />
Item.Multiplier = newMultiplier
Item.Quantity = newQuantity

Yes
No