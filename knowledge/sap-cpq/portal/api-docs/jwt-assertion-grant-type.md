# JWT Assertion Grant Type | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/2faa6ebd5dd047b1966a526e27e2173f.html#testing
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
JWT Assertion Grant Type

Prerequisites

Navigate to SAP CPQ tenant and log in. Create a trusted application in SAP CPQ.

Configure JWT Assertion grant for Trusted Application

Navigate to SAP CPQ tenant and log in.

Navigate to Setup  Security  Trusted Application

Add new or edit existing Trusted Application.

Expand JWT Assertion Grant section.

Choose Enable JWT Assertion Grant toggle.

Set value for Issuer. It represents 3rd party application identifier in generated JWT token. It can be application URL, or some other string. Value must be same as iss claim in generated JWT token.

Generate JWT token signing key by choosing the Generate New JWT Token Signing Key under the JWT Token Signing Key field.

Testing

Open a platform used for generating JWT tokens (for example jwt.io).

Leave the algorithm and token type unchanged.

Define the mandatory claims in the payload:

sub - username of the SAP CPQ user.

iss - issuer URL defined in SAP CPQ for the trusted application.

aud - audience that will use the generated JWT token (URL of the SAP CPQ environment that you wish to access). Make sure that the URL doesn't contain the / character.

nbf - not before (unix time stamp of the date and time after which the token can be used).

exp - expires (unix time stapm of the date and time when the token expires. the token can last maximum 5 minutes after it's been generated).

Copy the JWT token signing key from SAP CPQ and paste it in the platform to verify the signature.

After the signature has been verified, the JWT token is generated.

Open a platform used for building and testing APIs (for example, Postman) and populate the following:

Choose POST as the method.

Add /oauth2/token to the request URL.

As authorization, choose basic authorization.

Copy the client ID and enter it in Postman as the username.

Copy the client secret and enter it in Postman as the password.

In the Body, choose the content type x-www-form-urlencoded.

Set the following keys:

grant_type - urn:ietf:params:oauth:grant-type:jwt-bearer

assertion - the JWT token you've previously generated

domain - name of your domain

Choose Send to send the request.

The access and refresh tokens are generated.

Note

JWT Token Signing Key is only visible when it is generated for first time. It will not be visible on edit action. After generating it make sure to note down its value.

On this page
Prerequisites
Configure JWT Assertion grant for Trusted Application
Testing
Yes
No