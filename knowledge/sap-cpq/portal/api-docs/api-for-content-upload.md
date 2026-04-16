# API for Content Upload | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/3a055f9f6343492aa17220e97944e470.html#security
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
API for Content Upload

The API for content upload enables a streamlined management of images and content files mainly for content providers that do not have the login rights for SAP CPQ.

Example

In a company that uses SAP CPQ, a designer is in charge of providing images and content files for administrators. As sales is not part of his day-to-day activities, the designer does not have the login rights for SAP CPQ.

Previously, the designer would have to prepare the material and send it to the administrator who could upload it to SAP CPQ. The new API allows the designer to upload the content to a central repository on the server. After the system detects the changes, the content is pushed via the API to SAP CPQ.

Note

The API is tenant specific and is off by default for the existing and new SAP CPQ tenants. To turn on/off the API, use the application parameter Enable API For Content Upload in Setup  General  Application Parameters  General Parameters.

Supported Content Types and Formats

When uploading/updating/deleting content, you should define the content type so that the system could locate it in the appropriate folder in the repository. The API can manage the following content types:

product images

category images

attribute images

quote action images

custom images

content files

Note

The content files managed via the API are uploaded to the root content directory in SAP CPQ.

The format of the content must comply with the formats supported by the API:

Content files - the formats stated in Manage Content Documents in SAP CPQ.

Images - JPG, JPEG, PNG, GIF, BMP, TIF, JFIF and TIFF.

Security

Only SAP CPQ administrators have the permissions for authenticating and enabling the API for content upload. For ensuring that the content is managed securely:

Data is sent between the browser and the repository via a secured HTTPS protocol.

Users can be authenticated via Basic authentication, JWT Bearer Tokens and the OAuth protocol.

On this page
Example
Supported Content Types and Formats
Security
Yes
No