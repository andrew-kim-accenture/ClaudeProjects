# Consume Python Global Scripts as REST Webservices | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/3b4cfb88e7fd4a10990e85930cce519f.html?locale=en-US&state=PRODUCTION&version=2603
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
Consume Python Global Scripts as REST Webservices
Consuming Python Global Scripts as REST Web Services

SAP CPQ Global Scripts can be used to act as REST web services. The client can call the server using a designated Python script to get an operation done or to get some data retrieved.

On this page you can find out how to make a HTTP post to SAP CPQ so it executes a Python script and gets the response back.

POSTing the Data

Prerequisites:

The request needs to be HTTP POST.

The content type needs to be application/x-www-form-urlencoded.

The URL should transfer the script name, login information and quote number, in case a quote needs to be loaded before the script executes (e.g. when changing quote custom fields). Below is an example URL: http://yourdomain.cpq.cloud.sap/customapi/executescript?scriptname=ScriptNameGoesHere&username=jsmith&password=passwordGoesHere&domain=LoginDomainGoesHere&quoteCompositeNumber=QuoteToLoadBeforeExecutingScriptGoesHere

Example

The information to be passed to the script needs to be sent in JSON form as a variable named Param:



Param = {
        "Square":{
        x:"2",
        y:"3"
    }
}

In the example, Param contains a JSON object named Square with two fields, x and y. For testing purposes, you can use the Chrome browser extension Advanced Rest Client. The screenshot below shows how the extension is used to make the call to yourdomain.cpq.cloud.sap:

Processing the POST in Python Script

A global script that executes when called upon needs to be created in Python. Below is a sample code that accepts the Param variable, multiplies Square.x by Square.y and returns the Square area back:



squareArea = {"Square Area" : None}
if (Param is not None 
               and Param.Square is not None
               and Param.Square["x"] is not None 
               and Param.Square["y"] is not None):
               squareArea = {"Square Area" : float(Param.Square["x"]) * float(Param.Square["y"])}
ApiResponse = ApiResponseFactory.JsonResponse(squareArea)



Param variable holds the JSON content, in this case the Square object. Square is a JSON object that is being consumed like a dictionary object in C#, using the indexers:

square["x"]

If needed, you can add new properties to the existing Square object:

square["Square Area"]=str(z)

The system stores the results in the variable ApiResponse, but you should first convert the dictionary object back to JSON:

ApiResponse = ApiResponseFactory.JsonResponse(square)

On this page
Consuming Python Global Scripts as REST Web Services
POSTing the Data
Example
Processing the POST in Python Script
Yes
No