# Basic API Authentication | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/4b98819ba21b4eceb790fa2093822a1b.html?locale=en-US&state=PRODUCTION&version=2603
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
Basic API Authentication

SAP CPQ has introduce a application parameter that allows users to disable Basic API Authentication. This parameter, found under Setup   General  Application Parameters  Enable Basic Authentication For API. By setting this parameter to FALSE, Basic authentication is no longer permitted for REST, SOAP, and Custom APIs. This change is intended to encourage testing of new access token authentication methods, as Basic API Authentication will soon be phased out.

The following image shows an example of how basic authentication works.

An example with using Password grant type for issuing access token:

Note

To check the supported authorization for an endpoint in Swagger, click the  (padlock) icon.

Basic API authentication is least secure way of authentication and SAP CPQ wants to obsolete it. As alternative, SAP CPQ offers access token authentication for these endpoints. SAP CPQ supports different grant types for issuing access token:

Password grant type

Client certificate grant type

Authorization code grant type

SAML Bearer assertion grant type

JWT assertion grant type

To change authentication to SAP CPQ API and to obsolete Basic authentication, you can choose most suitable way for you of issuing access token. The easiest alternative to Basic authentication is to use Password grant type, but you can also choose other supported grant types.
If you are not sure if you are using Basic authentication, check if your request contains request header:

Name: Authorization

Value: Basic <base64_encoded_username:password>

Yes
No