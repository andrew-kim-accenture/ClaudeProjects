# Product attribute triggers | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/4cf058b54382443e929a5756d02e9e12.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Product completed event
	
Product rules execution ends event
	
Product tab changed event
	
Product before add to quote event
	
Product added/updated to quote event
	
Product attribute triggers
	
Retrieve generated documents
	
Import Product configurations
	
Check if container row is selected
	
How to strip HTML tags from string
	
Edit Existing Configuration Without Opening Quote
	
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
Product attribute triggers
Product attribute triggers

An administrator can create script change/select/reset trigger for the product attribute in the product administration.

For available Product Attribute members see Scripting.IProductAttribute

Examples
Change trigger - Select value of product attribute

Select value of the product attribute 'Memory' on changing value of product attribute 'Hard Drive'.



for value in Product.Attributes.GetByName("Memory").Values:
    if value.Display == "24GB DDR2":
        value.IsSelected = True
    else:
        value.IsSelected = False
On this page
Product attribute triggers
Examples
Yes
No