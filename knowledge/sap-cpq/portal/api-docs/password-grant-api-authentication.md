# Password Grant API Authentication | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/92f68dffe7e746918cf289406c4a05db.html?locale=en-US&state=PRODUCTION&version=2603
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
Password Grant API Authentication

This type of authentication is used for authentication of all endpoints that begin in api/v1/admin and /api/script/v1/.

Note

To check the supported authorization for an endpoint in Swagger, click the  (padlock) icon.

In order to access any part of SAP CPQ Setup via REST API, you need to be logged in.

Password Grant (Access Token)

You need to provide the username, password, and an appropriate domain to make a POST request to the server to exchange the password for an access token. Along with this data, the following information needs to be provided:

Content type: x-www-form-urlencoded

Route: It’s recommended to use /oauth2/token

Method: POST

Body:

grant_type: password

username: {username}

password: {password}

domain: {domain}

Response:


{ 
"access_token": "{access token}", 
"token_type": "bearer", 
"expires_in": 299,
"refresh token": "{refresh token}" 
}

Once you receive an access token, you can access certain parts of Setup (corresponding to endpoints which use the bearer token are marked as such in Authorization Info). The initially obtained access token has a validity period of 5 minutes, but can be extended with the use of refresh tokens.

Refresh Token Grant

Refresh token can be used to issue new access and refresh token pair bypassing authentication with username and password every time access token expires. Refresh token duration is 20 minutes. Also, one refresh token can be used only once, after that it becomes invalid.

Route: It’s recommended to use /oauth2/token

Method: POST

Body: grant_type=refresh_token&refresh_token={refresh_token}

Response:



{ 
"access_token": "{access token}", 
"token_type": "bearer", 
"expires_in": 299,
"refresh token": "{refresh token}" 
}

After receiving the token, you need to update the request in one of the two following ways:

If you are using /oauth2/token as a route:

If you are using /oauth2/token as a route:

Note

If you are updating the request in the Headers tab, enter Bearer followed by a single blank space and the token.

Note
Access tokens grant administrators a 5-minute access to SAP CPQ to execute API calls. After 5 minutes, the access token is no longer valid. To prolong the access time, you can either use a new access token or you can use the refresh token:

If you use a new access token, you’ll get another 5 minutes to call the APIs. You need to set grant_type to password and you need to send the username and the password (if an access token expires and you use a new one, every time you’ll need to send the username and the password).

If you use a refresh token, you get an additional 20 minutes during which you can use the access token (without the username and password) and get another 5 minutes to call SAP CPQ APIs. This gets you a new pair of access and refresh tokens which you can reuse again in the same way. The best time to use the refresh token is when the time granted via the access token is nearing the end.

For refresh tokens, grant_type should be set to refresh_token, you don’t need to send the username and password, and you need to populate refresh_token with the token you received. A refresh token lasts for 20 minutes and it can be used only once.

Bearer Token with Scope
The following information is required for generating a bearer token for the configurations_admin scope:

Route: /oauth2/token

Method: POST

Body: grant_type=password&username={username}&password={password}&domain={domain}&scope=configurations_admin

Response:


{ 
"access_token": "{access token}", 
"token_type": "bearer", 
"expires_in": 299,
"refresh token": "{refresh token}"
}


The scope claim contains the list of requested scopes separated by commas.

If you are using /oauth2/token as a route:

Yes
No