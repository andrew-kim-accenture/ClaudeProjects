# Custom API (Global Scripts Consumed as REST API Web Services) | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/38b172d78c044b95bc3b3ea60a26fa64.html?locale=en-US&state=PRODUCTION&version=2603
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
Custom API (Global Scripts Consumed as REST API Web Services)

Global Scripts created in SAP CPQ can act as REST API web services. In other words, you can send an API request which references a global script created in SAP CPQ to an external server by using a web service client (such as Postman) to initiate a certain operation or retrieve data.

For example, after establishing a session with an integrated system, it is possible to retrieve data from a quote and send it to that system whenever a change is made to the quote (that is, when the condition in a global script is met.

The payload limit for the Custom API is 2MB. It is important to note that this limit applies to the Request Payload, while for the Response Payload this restriction is not applied.

The payload limitation, more than 1000 keys, can be resolved by providing Param as JSON serialized to string:

{ "Param": "{ \"myProp1\": \"myVal1\" }" }

Note

If the integration with Salesforce is enabled, during the script execution, a session will be created for the logged-in administrator. That administrator should be logged in both in SAP CPQ and Salesforce.

Yes
No