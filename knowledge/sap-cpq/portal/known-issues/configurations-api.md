# Configurations API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f21989f09f494ce1a537942ae2523dc6/c10ec1d01baf445993c0f326ec447081.html?locale=en-US&state=PRODUCTION&version=2603
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
Configurations API

Configurations REST API is used for working with configurable products.

You can use this API to:

create a configuration for the product with the specified system ID and initialize the configurator (POST /api/configuration/v1/configurations)

get the model of the active tab for the specified configuration (GET /api/configuration/v1/configurations/{configurationId}/display)

change the attribute value for the specified configuration (PATCH /api/configuration/v1/configurations/{configurationId}/attributes/{standardAttributeCode})

change the attribute value quantity for the specified configuration (PATCH /api/configuration/v1/configurations/{configurationId}/attributes/{standardAttributeCode}/attributeValues/{attributeValueId})

delete the configuration with the specified configuration ID (DELETE /api/configuration/v1/configurations/{configurationId})

get the configuration by the specified configuration ID (GET /api/configuration/v1/configurations/{configurationId})

update the header level fields of the configuration with the specified configuration ID (PATCH /api/configuration/v1/configurations/{configurationId})

clone the configuration with the specified configuration ID POST /api/configuration/v1/configurations/{configurationId}/clone

partially update the configuration context for the current session (PATCH /api/configuration/v1/configurations/configurationContext)

create or update the configuration context for the specified owner ID (POST /api/configuration/v1/configurations/configurationContext)

get the configuration context for the specified configuration (GET /api/configuration/v1/configurations/{configurationId}/configurationContext)

partially update the configuration context for the specified configuration (PATCH /api/configuration/v1/configurations/{configurationId}/configurationContext)

Note

More details are available in the Configurations API documentation. In addition, you can learn about the limitations of this API in Limitations and Known Issues 2602.

Note

The following is a description of how you can use the x-cpq-session-id request header. First, always send the x-cpq-disable-cookies request header, and the header value should be TRUE when calling the Configurations API and the endpoint for the access token. The endpoint for creating a configuration should include a new x-cpq-session-id field in the response headers, which you can use for any other requests. When this parameter request header is present, SAP CPQ will always use the same session and the same configuration in that session. This should optimize all requests to the Configurations API.

Configurations API Authentication

This endpoint is authenticated with bearer authentication combined with ASP.NET_SessionId. This API is stateful and relies on the ASP.NET session. When the first call to the API is issued, a session is created and a session ID is returned in the response. This session ID should be used in follow-up requests for optimal performance.

Scope

	

Description




configurations_admin

	

Full privilege scopes, where all API endpoints are available and resources are accessed via the privileges of the logged-on SAP CPQ user.




configurations_user

	

Limited scope where restrictions specific to the SAP Commerce Cloud integration apply, where the API is called from an insecure client.

Once obtained, a bearer token with scope can be used for authentication the same way as a regular bearer token. It should be passed through the Authorization header in each API request:

POST /api/configuration/v1/configurations HTTP/1.1

Host: {CPQ url}

Authorization: Bearer {access token}

Content-Type: application/json

Body:


{
               "ProductSystemId": "{product system ID}"
}

When making the first request, only the bearer token should be provided.
Using the bearer token and gettting the session ID from the response to the first request:
In the next request, the bearer token and the cookies from the first response should be used.
Related Information
Headless SAP CPQ Configurator
Yes
No