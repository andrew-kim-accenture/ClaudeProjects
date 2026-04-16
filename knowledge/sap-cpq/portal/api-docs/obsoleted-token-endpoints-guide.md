# Obsoleted Token Endpoints Guide | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/9b5e4f1497d74266ad795fdf8e092c74.html#basic-api-authentication
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
Obsoleted Token Endpoints Guide

In order to unify and standardize process of issuing access token in SAP CPQ we want to obsolete old access token endpoints and introduce new alternatives.

SAP CPQ has introduce a application parameter that allows users to disable Basic API Authentication. This parameter, found under Setup   General  Application Parameters  General. By setting this parameter to FALSE, Basic authentication is no longer permitted for REST, SOAP, and Custom APIs. This change is intended to encourage testing of new access token authentication methods, as Basic API Authentication will soon be phased out.

Password Grant API Authentication
In this grant type only Request URL has been changed.

Request Attributes

	

Old

	

New




Request URL

	

basic/api/token

	

oauth2/token




Request method

	

POST

	

POST




Request body type

	

x-www-form-urlencoded

	

x-www-form-urlencoded




Request body parameters

	

grant_type: password

username: <cpq_username>

password: <cpq_user_password>

	

grant_type: password

username: <cpq_username>

password: <cpq_user_password>




‘domain’ request body parameter

	

Optional when using Tenant URL

	

Optional when using Tenant URL

Client Certificate REST Authentication
In this grant type Request URL and ‘grant_type’ request body parameter has been changed.

Request Attributes

	

Old

	

New




Request URL

	

api/clientcert/token

	

oauth2/token




Request method

	

POST

	

POST




Request body type

	

x-www-form-urlencoded

	

x-www-form-urlencoded




Request body parameters

	

grant_type: client_credentials

	

grant_type:

urn:ietf:params:oauth:grant-type:cpq-user-certificate




‘domain’ request body parameter

	

Optional when using Tenant URL

	

Optional when using Tenant URL

Generate SAML Bearer Grant Type

In this grant type Request URL has been changed and 'domain' request body parameter is supported as optional if you are using Tenant URL.

Request Attributes

	

Old

	

New




Request URL

	

api/token

	

oauth2/token




Request method

	

POST

	

POST




Request body type

	

x-www-form-urlencoded

	

x-www-form-urlencoded




Request body parameters

	

grant_type: urn:ietf:params:oauth:grant-type:saml2-bearer

assertion: <base64_encoded_saml_assertion>

	

grant_type: urn:ietf:params:oauth:grant-type:saml2-bearer

assertion: <base64_encoded_saml_assertion>




‘domain’ request body parameter

	

Not supported

	

Optional when using Tenant URL


Basic API Authentication
Basic API authentication is least secure way of authentication and SAP CPQ wants to obsolete it. As alternative, SAP CPQ offers access token authentication for these endpoints. SAP CPQsupports different grant types for issuing access token:

Password grant type

Client certificate grant type

Authorization code grant type

SAML Bearer assertion grant type

JWT assertion grant type

In order to change authentication to CPQ API and to obsolete Basic authentication you can choose most suitable way for you of issuing access token. The easiest alternative to Basic authentication is to use Password grant type, but you can also choose other supported grant types.
If you are not sure if you are using Basic authentication check if your request contains request header:

Name: Authorization

Value: Basic <base64_encoded_username:password>

Note

The Basic API Authentication will be discontinued, impacting all REST APIs, including Custom API and SOAP APIs. Advance notification will be given.

On this page
Password Grant API Authentication
Client Certificate REST Authentication
Generate SAML Bearer Grant Type
Basic API Authentication
Yes
No