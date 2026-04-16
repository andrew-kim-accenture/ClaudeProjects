# Use SelectedAttributes of Quote item | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/7084dab2a98d4c338b1b5c935179f32a.html?locale=en-US&state=PRODUCTION&version=2603
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
Use SelectedAttributes of Quote item

SelectedAttributes contains list of all attributes that are selected within quote item's product. You can iterate through it and use following properties:

Name

Quantity

Values

StandardAttributeCode

Values is a collection of selected values as some attribute types support multiple selected values (e.g. checkbox, listbox etc.)

In case you want to print all selected values of all selected attributes of all quote items, you'll get them like this:



for item in Quote.MainItems:
    Trace.Write('***** QUOTE ITEM: '  + item.ProductName +  ' *****')
for attribute in item.SelectedAttributes:
    Trace.Write('*** ATTRIBUTE: '  + attribute.Name + ' ***')
    Trace.Write(attribute.Values[0].Display)

If some of the attributes might contain multiple selected values, modify code like following - it's compatible with previous code fragment:



for item in Quote.MainItems:
    Trace.Write('***** QUOTE ITEM: '  + item.ProductName +  ' *****')
        for attribute in item.SelectedAttributes:
            Trace.Write('*** ATTRIBUTE: '  + attribute.Name + ' ***')
            for value in attribute.Values:
                Trace.Write(attribute.Values[0].Display)

Beside Display property, you can also get ValueCode of selected value (check IQuoteItemAttributeValue interface in help for more properties).

At the moment there's no way to directly access attribute values by Name, so you'll have to iterate through collection to get it:



item = Quote.MainItems[0]
for attribute in item.SelectedAttributes:
    if attribute.Name == 'MY ATTRIBUTE':
        Trace.Write('FOUND IT! ITS VALUE IS ' + attribute.Values[0].Display)
        break


Container attribute values are accessed in slightly different way than others.

There's an interface method which should be used to manipulate with selected containers:



item.SelectedAttributes.GetContainerByName('MY CONTAINER')

Limitation here is that you have to know the exact name of the container attribute before accessing it.

This code will return instance of QuoteItemContainer object (see IQuoteItemContainer interface in help).

It has property Rows by which you can iterate through container rows and access columns to get data (seeIQuoteItemContainerRowCollection and IQuoteItemContainerRow interfaces).

Each row has collection of Columns through which you can also iterate or you can simply access column value by providing Column Name:



myContainer = Quote.MainItems[0].SelectedAttributes.GetContainerByName('MY CONTAINER')
for row in myContainer.Rows:
    if row.IsSelected:
        Trace.Write('COLUMN VALUE OF SELECTED ROW: ' + row['MY COLUMN'])


For complete list of available column properties check IQuoteItemContainerColumnCollection and IQuoteItemContainerColumn interfaces.

Yes
No