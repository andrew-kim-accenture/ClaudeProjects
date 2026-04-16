# SAML Assertion Grant Type | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/4da87acd636243a585f36f4b205d0413.html#configure-saml-assertion-grant-for-trusted-application
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
SAML Assertion Grant Type

Prerequisite

Navigate to SAP CPQ tenant and log in. Create a trusted application in SAP CPQ.

Generate the assertion request in an external system as explained in the documentation. You will need to sign the request with a certificate, specifically with the certificate private key. You will use the public key to confirm and validate the private key signature.

Configure SAML Assertion Grant for Trusted Application

Navigate to SAP CPQ tenant and log in.

Navigate to Setup  Security  Trusted Application

Add new or edit existing Trusted Application.

Expand SAML Assertion Grant section.

Click Enable SAML Assertion Grant toggle.

Set value for Issuer. It represents 3rd party application identifier in generated SAML assertion. It can be application URL, or some other string. Value must be same as Issuer node in generated SAML assertion.

Select a value in the User Identifier Attribute Source:

NameId - Contained in the subject of the assertion request. This should either be the user name of the SAP CPQ user or its federation ID (both are available in user administration).

AdditionalAttributes - In the User Identifier Attribute Name field, enter the exact value of one Attribute Name under AttributeStatement node in the generated SAML assertion request.

Choose Certificate Hash Algorithm of used certificate.

Set value for Public Key of used certificate (it must be in Base64 format), or you can upload it using .cer or .crt file formats.

Testing

Generate SAML Assertion using an external system as explained in the documentation.

Generated SAML Assertion must be encoded in Base64 string format.

Open a platform used for building and testing APIs (for example, Postman) and populate the following:

Choose the POST as the method.

Add /oauth2/token to the request URL.

Choose basic authorization as authorization.

Copy the Client ID and enter it in Postman as the username.

Copy the Client Secret and enter it in Postman as the password.

Choose the content type x-www-form-urlencoded in the Body.

Set the following keys:

grant_type - urn:ietf:params:oauth:grant-type:saml2-bearer

assertion - the Base64 encoded SAML Assertion you've previously generated.

Choose the Send to send the request.

The access and refresh token are generated.

On this page
Prerequisite
Configure SAML Assertion Grant for Trusted Application
Yes
No