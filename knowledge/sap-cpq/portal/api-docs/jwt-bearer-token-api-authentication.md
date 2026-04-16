# JWT Bearer Token API Authentication | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/50281df00b9543a19fac3e1c182d5a93.html?locale=en-US&state=PRODUCTION&version=2603
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


	
JWT Bearer Token API Authentication
	
Stateful API Authentication (authentication with cookies)
	
Basic API Authentication
	
Token API Authentication
	
Obsoleted Token Endpoints Guide
	
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
JWT Bearer Token API Authentication

Prerequisites

In order to Generate JWT token, the Shared Secret must be generated in the Setup. Go to Setup  General  Application Parameters   General Parameters and generate a shared secret key from the Shared secret.

To generate a JWT token, follow these steps using a REST API client, such as Advanced REST Client or the Postman API Platform. In our example, we are using Postman.

Get the bearer token.

Use the access_token to get the JWT token.

Use this JWT as bearer token to call custom API.

Generate JWT Token in SAP CPQ

Go to Setup  General  Application Parameters  General Parameters and generate a shared secret key in Shared secret.

Generate a JWT token.

You can use https://jwt.io/, for example.

Pass the token in Authorization.

Yes
No