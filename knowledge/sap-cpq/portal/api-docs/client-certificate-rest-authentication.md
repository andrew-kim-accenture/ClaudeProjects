# Client Certificate REST Authentication | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/aeace17694914612bd0fb75cdd38f2ff.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Password Grant API Authentication
	
Client Certificate REST Authentication
	
OAuth 2.0 Authorization Code Grant
	
OAuth 2.0 Client Credentials Authentication
	
OAuth 2.0 Assertion Profiles
	
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
Client Certificate REST Authentication

You can generate an access token for SAP CPQ using client certificates.

You must first create a user certificate following the instructions.

Once a user certificate is created, you can use it to authenticate individual users in specified domains via REST APIs.

To authenticate with REST, you need the following information:

method - POST

request URL - It’s recommended to use /oauth2/token

grant_type - it’s recommended to use urn:ietf:params:oauth:grant-type:cpq-user-certificate

domain - the name of your SAP CPQ domain

An example URL: https://{{url}}/oauth2/token grant_type=urn:ietf:params:oauth:grant-type:cpq-user-certificate&domain=domain_name.

Yes
No