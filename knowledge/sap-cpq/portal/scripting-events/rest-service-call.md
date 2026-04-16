# Rest Service Call | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/ce123b2b23664f0a8acc5f31728dc567.html?locale=en-US&state=PRODUCTION&version=2603
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
Rest Service Call
How to call rest service?
This page gives you examples of calling REST APIs via Python and manipulating the data received from server.
Examples
Client for communication with RESTful services.

Call service with providing city name and country/region code. API responds with a list of results that match a searching word.

API call:

http://api.openweathermap.org/data/2.5/weather?q={city name},{country/region code}

Parameters:

q city name and country/region code divided by comma, use ISO 3166 country/region codes



#response is in JSON form of:
     #{"main":{"temp":291.05,"pressure":1016,"humidity":88,"temp_min":288.15,"temp_max":296.15},
     #"weather":[{"id":701,"main":"Mist","description":"mist","icon":"50n"}],
     #"id":5391959,"name":"San Francisco","cod":200,"base":"stations"}
     response = RestClient.Get('http://api.openweathermap.org/data/2.5/weather?q=SanFrancisco,usa')

     Quote.GetCustomField('City').Content = response.name

     Quote.GetCustomField('Weather Today').Content = str(response.weather[0].main)
     Quote.GetCustomField('Weather Today Details').Content = str(response.weather[0].description)

     Quote.GetCustomField('Weather Temperature MIX').Content = str(response.main.temp_max)
     Quote.GetCustomField('Weather Temperature MAX').Content = str(response.main.temp_min)

Example 2

Submit an HTTPS POST request with autorization and JSON input data to the server

Submits JSON data to be processed to a specified resource and returns JSON response.

Response is deserialized, in order to be used as object in scripting.



#example of url service
 url = 'https://testcallidus.com/CallidusPortal/services/some-example-service'

 #example of user autorization header
 headers = { 'authorization': RestClient.GetBasicAuthenticationHeader('CallidusUsername', 'CallidusPassword') }

 #example of input JSON data
 data = '[{"name": "SaaS Net New Revenue", "periodType": "month", "type": "Measurement", "value": { "amount": 100, "unitType": "USD" }}]'

 #make HTTPS POST and receive response in form of dynamic entity
 response = RestClient.Post(url, data, headers)

 #Populate Quote custom fields
 Quote.GetCustomField('Bonus type').Content = response.name
 Quote.GetCustomField('Bonus amount').Content = str(response.value.amount)
 Quote.GetCustomField('Bonut unit type').Content = response.value.unitType

On this page
How to call rest service?
Examples
Yes
No