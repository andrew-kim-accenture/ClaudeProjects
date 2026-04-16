# REST API for Updating Ship To, Bill To, and End User | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/e619ef2bfa1f4fd2bf99d1245cedd247.html?locale=en-US&state=PRODUCTION&version=2603
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
	
User Interface API
	
Product Integration REST API
	
Headless SAP CPQ Configurator
REST API for Updating Ship To, Bill To, and End User

You can use this REST API to update:

Ship To and End User data for a specific quote (without changing that data in other quotes or in the Setup)

Bill To data (which will be updated in every quote with the same customer and in the Setup) 

This API is used only for Quote 2.0.

Request method: PATCH 

URL: https://ENVIRONMENT/api/v1/quotes/QUOTEID/customers/CUSTOMERROLEID

CUSTOMERROLEID has one of the following values:  

Bill To: 1 

Ship To: 2 

End Customer: 3 

Example URL: https://default-us1-sbx-01.cpq.cloud.sap/api/v1/quotes/123/customers/1 

Yes
No