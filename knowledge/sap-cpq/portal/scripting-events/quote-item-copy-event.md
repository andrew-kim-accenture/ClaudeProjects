# Quote item copy event | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/4fa4eef6b603420f9d02c9e8301e8cf0.html?locale=en-US&state=PRODUCTION&version=2603
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
Quote item copy event
Quote item copy event

An administrator can invoke script when quote item is copied. Event "Quote item copy" has arguments:

OriginalItems of type Scripting.IMainItemCollection representing the list of quote items that will be copied. In case of copying System(List) of Configurable Products, quote item collection OriginalItems will contain all items that belongs to System(List) of Configurable Products which will be copied. In other cases quote item collection OriginalItems will contain only one item - original item.

CopiedItems of type Scripting.IMainItemCollection representing the copied quote item collection. In case of copying System(List) of Configurable Products, quote item collection CopiedItems will contain copies of all items that belongs to System(List) of Configurable Products. In other cases quote item collection CopiedItems will contain only one item - copy of original item.

Examples

Populate quote item custom field 'someCustomField' on item copying

When item in quote is copied value of quote item custom field with name 'someCustomField' will be set to 'value1' for original items, and to 'value2' for copies of original items.



for item in OriginalItems:
    item['someCustomField'].Value = 'value1';
for item2 in CopiedItems:
    item2['someCustomField'].Value = 'value2';
On this page
Quote item copy event
Examples
Yes
No