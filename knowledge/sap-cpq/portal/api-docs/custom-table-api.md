# Custom Table API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/4d3db31e3c71467a8701a0e68f7a84db.html?locale=en-US&state=PRODUCTION&version=2603
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
Custom Table API

Custom table REST APIs are available to simplify custom table operations.

JWT Bearer token authorization is supported for this API. Specifically, to be able to use the API, you first need to generate a shared secret key in SAP CPQ as explained here.

You can use this API to:

create a new custom table (POST custom-table/v1/customTables/ )

update a custom table (PATCH custom-table/v1/customTables/{table})

delete a custom table (DELETE custom-table/v1/customTables/{table})

insert a new custom table row (POST custom-table/v1/customTables/{table}/entries)

update a custom table row (PUT custom-table/v1/customTables/{table}/entries)

delete a custom table row (DELETE custom-table/v1/customTables/{table}/{id})

update or create custom table rows (PATCH custom-table/v1/customTables/{table}/entries)

Note

All endpoints with detailed descriptions are available in the Custom Table API documentation.

Note

As of 2602 release, JWT token for authentication to Custom Table APIs which are issued and used specifically for these APIs is set to be deprecated. Custom Table APIs now support authentication using an overall JWT token which is issued by CPQ for API authentication. Please update your logic accordingly and switch to new authentication for Custom Table APIs prior to CPQ 2602 release. For more information see Custom Tables APIs Authentication Announcement.

Related Information
SAP CPQ REST API Authentication
Yes
No