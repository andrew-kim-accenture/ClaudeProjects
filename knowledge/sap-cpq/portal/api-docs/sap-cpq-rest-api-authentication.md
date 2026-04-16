# SAP CPQ REST API Authentication | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/8ee7362e6b9d4fcfb4376abe88843c99.html?locale=en-US&state=PRODUCTION&version=2603
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
SAP CPQ REST API Authentication

All SAP CPQ REST APIs are stateful except the endpoints authenticated with basic HTTP authentication, bearer tokens and JWT tokens. These endpoints are stateless (no session).

Different REST APIs in SAP CPQ support different authentications types. In the following sections, you can learn more about each authentication type and find out for which APIs it can be used.

Note

Methods available for REST APIs are listed and described in Swagger https://default-us1-prd-01.cpq.cloud.sap/webapihelp/index.

To check the supported authorization for an endpoint in Swagger, click the  (padlock) icon.



JWT Bearer Token API Authentication

Stateful API Authentication (authentication with cookies)

Basic API Authentication

Token API Authentication

Obsoleted Token Endpoints Guide

In order to unify and standardize process of issuing access token in SAP CPQ we want to obsolete old access token endpoints and introduce new alternatives.
Yes
No