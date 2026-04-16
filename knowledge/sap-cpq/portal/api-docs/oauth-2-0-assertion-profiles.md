# OAuth 2.0 Assertion Profiles | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/ffa83300a8a041088824d842751044b6.html?locale=en-US&state=PRODUCTION&version=2603
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


	
JWT Assertion Grant Type
	
SAML Assertion Grant Type
	
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
OAuth 2.0 Assertion Profiles

OAuth 2.0 Assertion Profiles authentication is implemented in SAP CPQ with the aim of standardizing server-to-server authentication. This type of authentication allows administrators to generate an access token without relying on the logged-in user (no need to store passwords).

Before generating a token, you first need to create a trusted application in SAP CPQ.

Go to Setup  Security  Trusted Applications.

Click Add new Trusted Application and enter a short description of the trusted application you are setting up in the Name field.

The new Trusted Application will be created with generic Client ID, and Client Secret pair.
Note

The Client Secret is only visible when the Trusted Application is created. It will not be visible when editing the Trusted Application. After creating the Trusted Application make sure to note down field values.

Click Save.

Additional options for the trusted application are available in the page.

Configuration of client ID, configuration of client secret and the JWT token signing key are generated automatically by the system. You can't generate them on your own nor change them.

Note

The next time you log in, the IDs won't be displayed in the page, for security reasons. Make sure when the ID is generated, that you write it down or store it in another system for future reference.



JWT Assertion Grant Type

SAML Assertion Grant Type

Yes
No