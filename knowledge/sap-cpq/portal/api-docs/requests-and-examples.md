# Requests and Examples | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/1450d4528ef046ecbd154f9af7ed21ac.html#delete
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


	
Requests and Examples
	
REST API Error Codes
	
Custom API (Global Scripts Consumed as REST API Web Services)
	
User Interface API
	
Product Integration REST API
	
Headless SAP CPQ Configurator
Requests and Examples

The content upload API is a REST API.

You can use these methods to send requests via the API:

GET

POST

PUT

DELETE

Depending on the content you wish to manage, use one of the following in the URL request:

productimage

attributeimage

categoryimage

quoteactionimage

customimage

contentfile

GET

When making a GET request, add the file name after the file type:

POST

The following image shows a request for creating files via the API:

PUT

You can create/update multiple files at once or update one individual file via the API.

The API returns the same response for POST and PUT requests:

Note

To update one file via the PUT request, state the file name in the request after the file type.

DELETE

State in the request the name of the file you wish to delete:

Note

An appropriate message will inform you of the success of each request.

Note

The ContentFile API has been deprecated by SAP CPQ as it only allows for the management of content files and not the complete management of content documents such as setting permissions. Content documents should be managed using the new DocumentTemplate API described in Swagger.

On this page
GET
POST
PUT
DELETE
Yes
No