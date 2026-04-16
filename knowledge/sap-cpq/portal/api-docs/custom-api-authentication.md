# Custom API Authentication | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/de2fba4134034d1a94751d203ed442bb.html#jwt-token-authentication
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
Custom API Authentication

Custom API calls can be authenticated with Basic Auth, No Auth and JWT Token methods.

Basic Authentication
When authenticated with the Basic Auth method, the API request needs to include the script name in the URL.
Example

https://default-us1-sbx-01.cpq.cloud.sap/CustomApi/ExecuteScript?scriptname=test

No Authentication

Each custom API request authenticated with the No Auth method needs to include the script name, along with the access credentials (the administrator’s username and password) in the URL.

Example

https://default-us1-sbx-01.cpq.cloud.sap/CustomApi/ExecuteScript?username=darmstrong&password=123&domain=default&scriptname=test

JWT Token Authentication

Custom API authentication with JWT tokens is performed in the same way as it is for other REST APIs. Refer to SAP CPQ REST API Authentication for more details.

On this page
Basic Authentication
No Authentication
JWT Token Authentication
Yes
No