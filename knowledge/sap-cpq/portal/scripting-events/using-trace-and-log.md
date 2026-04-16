# Using Trace and Log | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/73be208fa53c48728a813acaf9730819.html?locale=en-US&state=PRODUCTION&version=2603
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
Using Trace and Log

Trace.Write() and Log.Write() methods are used when we want to check some value or write to Developer Console or Log.

Example

We use Log.Write() when we want to "log" some value and remember it "forever".

In the example we create array of custom objects on Salesforce and we save Ids of newly created objects.



saveRes = SalesforceProxy.Binding.create(objArray)
dump = ''
for SaveResult in saveRes:
dump += 'id: ' + str(SaveResult.id) + '; '
Log.Write("Create TPIs: "+ dump)

We use Trace.Write() method for debugging and to write value currently to Developer Console.

In the example we use OpportunityId in query and if some error is happened we can easily check value of OpportunityId via Developer Console by using Trace.Write().



if SFEnvironment is not None:
OppId = SFEnvironment.Opportunity.Id
Trace.Write("OppId = '" + OppId + "'")
res = SalesforceProxy.Binding.query("select SFCustomField__c from Opportunity where Id = '" + OppId + "'")
if res is not None and len(res.records) > 0:
Quote.GetCustomField("CPQCustomField").Content = res.records[0].Any[0].InnerText

Yes
No