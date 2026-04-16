# OAuth 2.0 Authorization Code Grant | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/087fe6c4314941fa98a30d0b1697ea4a.html#testing
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
OAuth 2.0 Authorization Code Grant

The OAuth 2.0 authorization code can be used to provide individual users with tokens, so that there is no need to store the user's credentials in another application.

Prerequisites

Before using the authorization code flow, you need to set up a trusted application.

Navigate to the SAP CPQ tenant and log in.

Navigate to Setup  Security  Trusted Applications.

Add the new Trusted Application.

Expand the Authorization Code Grant section.

Choose Enable Authorization Code Grant toggle.

Set the value for Redirect URI. It requires an absolute URI format. It’s the URI which CPQ will use to redirect the response for authentication.

In the case of a more secure Authorization Code Grant authentication Proof Key for Code Exchange (PKCE, pronounced "pixy") can be enabled.

Click Save.

The trusted application is now created.

Testing

To create a GET request, open a new tab in your browser, using the incognito mode (or otherwise make sure you are logged out of SAP CPQ).

Enter a URL in the following format: https://<cpq_env>/oauth2/authorize?response_type=code&client_id=<copied_client_id>&redirect_uri=https://example.com

You need to replace <cpq_env>redirect_uri=https://example.com with your environment URL, <copied_client_id> with the Client ID from the trusted application page, and https://example.com with the same redirect URI as the one you used on the trusted application page.

Note

In case you are using federated single sign-on, in the provided URL format, you need to add fed/<idp_route> (with your identity provider route included) before /oauth2/authorize. If federation is used, the URL looks like this: https://<cpq_env>/fed/<idp_route>/oauth2/authorize?response_type=code&client_id=<copied_client_id>&redirect_uri=https://example.com.

If PKCE is enabled code_challenge and code_challenge_method query parameters are required. Following the RFC7636 original value is called code_verifier. code_challenge represents transformed code_verifier value, and code_challenge_method is represents name of used transformation method.

Transformation methods:

1. plain => code_challenge = code_verifier and code_challenge_method = plain

2. S256 => code_challenge = BASE64URL-ENCODE(SHA256(ASCII(code_verifier))) and code_challenge_method = S256

Press Enter after entering the URL in your browser.

You are now redirected to the login page of SAP CPQ..
Note

If you are using federation, you are redirected to your identity provider.

On the SAP CPQ page, enter your credentials and click Login.

You are now redirected to the URI, which is in the following format:https://example.com?code=<authorization_code>

Copy the <authorization_code> part of the URI.

Note

The authorization code is valid for 2 minutes. If it expires, you need to generate a new authorization code.

Open Postman and create a POST request for <cpq_url>/oauth2/token using the URL of your system.

Go to Authorization  Basic Auth.

For the username, use your Client ID, and for the password, use your Client Secret from the trusted application page.

Select x-www-form-urlencoded for the Body and create the following keys:

Key

	

Value




grant_type

	

authorization_code




code

	

Paste the authorization code you previously copied here.




redirect_uri

	

Paste the redirect URI you previously used. In this example, this would be https://example.com.




code_verifier

	

Original value of code verifier for PKCE (before transformation). Required only if PKCE is enabled.

Choose the Send.

You have now successfully created an access token, which is displayed below.

On this page
Prerequisites
Testing
Yes
No