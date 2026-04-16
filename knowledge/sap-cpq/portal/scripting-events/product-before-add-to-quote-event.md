# Product before add to quote event | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/1ca5f10131974399818e6fe355e3584f.html?locale=en-US&state=PRODUCTION&version=2603
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
Product before add to quote event
Product before add to Quote event

An administrator can invoke script before product is added to the quote.

This event happens before configuration validation process.

Event "Product before add to quote" has arguments:

sender of type Scripting.IProduct representing the product that fired the event.

arg of type Scripting.IProductBeforeAddToQuoteEventArgument providing additional data about the event.

Event response is handled with 2 properties:

Boolean flag arg.OK

When value of this flag is "True", system will perform Add to quote action.

When value of this field is "False", system will keep a user on configuration page and will stop "Add to Quote" action.

String message arg.Message

As a response, CPQ can provide a message (message is not required).

Examples
Prevent "Add to Quote" action if it is not selected appropriate attribute value

Before product is added to the quote, validate if appropriate attribute value is selected.

If other value is selected, stop "Add to Quote" action and display message.



if Product.Attributes.GetByName("Attribute Example").SelectedValue is not None:
   selectedValue = Product.Attributes.GetByName("Attribute Example").SelectedValue
   if selectedValue.Display == "A":
       arg.Ok = False
       arg.Message = "Please, Select B"

Prevent "Add to Quote" action if container columns are empty

Before product is added to the quote, validate if container rows have populated column "Serial Number".

If columns are empty, stop "Add to Quote" action and display message.



cont = Product.GetContainerByName('Migration Serial Number')
for row in cont.Rows:
    if row["Serial Number"] is None or row["Serial Number"] == "":
        arg.Ok = False
        arg.Message="All rows in Migration Serial Number must have a Serial Number."
        break

Prevent quote update if quote is not in certain statuses

If quote is in not in any of following statuses - "Preparing", "Open" or "Portal Quote", prevent updating item of the quote.



if Quote is not None and Quote.OrderStatus.Name not in ["Preparing", "Open", "Portal Quote"]:
    arg.Ok = False
    Product.Messages.Add("You cannot update product in this status")

On this page
Product before add to Quote event
Examples
Yes
No