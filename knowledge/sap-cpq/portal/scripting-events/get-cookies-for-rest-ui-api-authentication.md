# Get Cookies for REST UI API Authentication | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/a3939eb128484bd2b089eed05368eeb1.html?locale=en-US&state=PRODUCTION&version=2603
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
Get Cookies for REST UI API Authentication

REST API for managing UI uses cookies for authentication. If you are calling the API from a SAP CPQ page using JavaScript, no additional steps are required as you are already authenticated. However, if you are calling the API from a third-party tool, you should call /api/rd/v1/Core/LogIn for authentication.

This call will set two cookies that you should set with these API calls:

ASP.NET_SessionId

WebCom-lbal

Example


baseUrl = 'https://yourdomain.cpq.cloud.sap/api/rd/v1/'
loginResponse = RestClient.Post(baseUrl + 'Core/LogIn?username=usernameGoesHere&password=passwordGoesHere&domain=domainGoesHere', None, None, True)

# Set cookies that we received as a response to the login request.
headers = {
	'Cookie': ';'.join([x.Key + '=' + x.Value for x in loginResponse.Cookies])
}
response = RestClient.Get(baseUrl + 'QuoteList/GetInitData?tabId=1', headers)
Trace.Debug(response

Yes
No