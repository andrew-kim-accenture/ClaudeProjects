# Calculate Product Type Custom Discount field | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/d5e9632b495a4c39ac85aeb3a4a5b3ac.html?locale=en-US&state=PRODUCTION&version=2603
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
Calculate Product Type Custom Discount field

This script was used with Event When quote layout is rendered => On product type xml serialization end.

It is a product type level calculation that uses the product type total of two Quote Item Custom Fields and is displayed in the cart



PTItem = sender;
DiscountAmount = (1 - (PTItem.Multiplier / 0.5)) * 100;
if PTItem["RolledUpDefaultPriceTotal"].Summary == 0:
        DiscountPercent = 0;
else:
        DiscountPercent = round(100 * PTItem["RolledUpFDIDiscountAmount"].Summary / PTItem["RolledUpDefaultPriceTotal"].Summary,2);
XmlWriter.WriteStartElement("FDI_DiscountPercent_XML")
XmlWriter.WriteValue(DiscountPercent)
XmlWriter.WriteEndElement()

Yes
No