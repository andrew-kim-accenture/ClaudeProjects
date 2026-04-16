# Tips and Tricks | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/cd30895cb249455c83ddc431a1706f84.html?locale=en-US&state=PRODUCTION&version=2603
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
Tips and Tricks

In order to successfully write code that will be both effective and efficient, one should take care of the following tips and tricks.

Be very careful when attach script to event - if event is not adequate, you might end up with performance degradation.

E.g. Try to avoid event OnEveryTimeQuoteChanged, especially if your script performs time consuming actions like querying Salesforce, Custom Tables, Webservice call etc.

It's better approach to isolate this code and use it as Custom Action which can be manually triggered or as a post action somewhere in quoting process.

If possible, try to reduce script code processing by using IF blocks within script

E.g. Your script calculates quote custom field. Calculated value should be set to custom field initially, but after that, there's no need to calculate the same field again.



customField = Quote.GetCustomField('My_Custom_Field')
if customField.Content == '':
  customField.Content = 'your value...'

Avoid script errors by checking if all relevant properties have been previously created/available:

Check if SF connection is available before querying SFDC:



if SFEnvironment is not None:
  result = SalesforceProxy.Binding.query("SELECT Id FROM Quote__c WHERE Opportunity__c = 'abcd' and Primary__c = true")
.....


If your script is attached to Product event (scripting rule), make sure to check if Quote is available before accessing some quote-related data. E.g. product attribute value has to be pulled from quote custom field (in case of existing quote items):



if Quote is not None:
  Product.Attributes.GetByName('My_Attribute').AssignValue(Quote.GetCustomField('My_Custom_Field').Content)
.....


If you're using the same attribute more than once in your script (e.g. checking selected value in IF conditions), extract it to variable. That way, your code would be clean and easier to read and maintain.



if Product.Attributes.GetByName('MyAttribute').SelectedValue is None:
  Product.Attributes.GetByName('MyAttribute').SelectValue('0')
else:
  if Product.Attributes.GetByName('MyAttribute').SelectedValue.ValueCode == '1':
    Product.GetContainerByName('MyCont').AddNewRow()
......


Instead, use the following format:



myAttribute = Product.Attributes.GetByName('MyAttribute')
if myAttribute.SelectedValue is None:
  myAttribute.SelectValue('0')
else:
  if myAttribute.SelectedValue.ValueCode == '1':
    Product.GetContainerByName('MyCont').AddNewRow()
......

AddNewRow() method of IContainer triggers execution of rules by default. If it's not needed, make sure to provide False parameter to optimize performance.



Product.GetContainerByName('MyContainer').AddNewRow(False)
Yes
No