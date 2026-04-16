# Consume IronPython Global Scripts as REST API Webservices | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/ab309c4f8edc4d3fa80936687d0ef87b.html#procedure
**Crawled:** 2026-04-16

## Content

SAP CPQ API DocumentationVersion: 2603English
Provide feedback on our search

	
SAP CPQ API
	
SOAP API
	
XWS (EXTERNAL WEB SERVICE)
	
Invalid XML Characters
	
API Example
	
External Webservices
	
REST API


	
SAP CPQ REST API Authentication
	
SAP CPQ to Third Party Authentication
	
Script API
	
SCIM API
	
Configurations API
	
Custom Table API
	
Rate Plans API
	
REST API for Updating Ship To, Bill To, and End User
	
API for Content Upload
	
REST API Error Codes
	
Custom API (Global Scripts Consumed as REST API Web Services)


	
Custom API Authentication
	
Consume IronPython Global Scripts as REST API Webservices
	
User Interface API
	
Product Integration REST API
	
Headless SAP CPQ Configurator
Consume IronPython Global Scripts as REST API Webservices

SAP CPQ global scripts can be used to act as REST API web services. The client can call the server using a designated IronPython script to get an operation done or to retrieve some data.

Context

On this page you can learn how to make a HTTP post to SAP CPQ, so it executes an IronPython script and gets the response back.

Procedure
Create an IronPython global script in Setup  Develop  Global Scripts.

For example, the script can be used for retrieving the Bill To customer’s first and last name, in which case it should contain the following lines:



billto = Quote.BillToCustomer 
billto.FirstName = Param.BillToCustomerName[“FirstName”]
billto.LastName = Param.BillToCustomerName[“LastName”]

Create an HTTP POST request with content type application/x-www-form-urlencoded.

The URL should transfer the script name, SAP CPQ login information, and quote composite number (if a quote needs to be loaded before the script is executed (for example, when changing quote custom fields).

URL example:

http://yourdomain.cpq.cloud.sap/customapi/executescript?scriptname=ScriptNameGoesHere&username=darmstrong &password=passwordGoesHere&domain=LoginDomainGoesHere&QuoteCompositeNumber=QuoteToLoadBeforeExecutingScriptGoesHere

Add the information that should be passed in the script to the request body in JSON format as a part of the variable named Param.

For example, the variable can contain the first and last name of the customer who receives the billing information in SAP CPQ.



Param={
“BillToCustomerName” :{
FirstName: “John”,
LastName: ”Smith”
}
}

Send the custom API call.

The response should contain the information requested in the Param variable (in this example the Bill-To customer’s first and last name).

On this page
Context
Procedure
Yes
No