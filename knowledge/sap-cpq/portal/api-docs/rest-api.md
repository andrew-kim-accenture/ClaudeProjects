# REST API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/e25645791b7042859798804f8a7f1de4.html?locale=en-US&state=PRODUCTION&version=2603
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
REST API

Most of SAP CPQ REST APIs are developed according to SAP's guidelines and standards.

To use REST APIs, start by consulting the detailed documentation:

Custom table APIs are described in a separate platform.

Custom APIs, which can reference a global script created in SAP CPQ to an external server by using a web service client (such as Postman) to initiate a certain operation or retrieve data are detailed on Custom API (Global Scripts Consumed as REST API Web Services).

You can see which API endpoints belong to User Interface APIs in User Interface API. This type of API isn't intended for administrators, but for the system to use.

API packages are described in the SAP Business Accelerator Hub:

The next generation SAP Configure Price Quote APIs used for the Quote 2.0 engine

Get standard and subscription billing products

APIs used for creation and synchronization of business partners and partner functions



SAP CPQ REST API Authentication

All SAP CPQ REST APIs are stateful except the endpoints authenticated with basic HTTP authentication, bearer tokens and JWT tokens. These endpoints are stateless (no session).
SAP CPQ to Third Party Authentication

Script API

You can deploy scripts to SAP CPQ from an external environment intended for development (such as GitHub).  By shifting the process of script development from SAP CPQ to an external system, you can improve the process of script development, automated testing and change management.
SCIM API

Configurations API

Configurations REST API is used for working with configurable products.
Custom Table API

Rate Plans API

REST API for Updating Ship To, Bill To, and End User

API for Content Upload

The API for content upload enables a streamlined management of images and content files mainly for content providers that do not have the login rights for SAP CPQ.
REST API Error Codes

Custom API (Global Scripts Consumed as REST API Web Services)

Global Scripts created in SAP CPQ can act as REST API web services. In other words, you can send an API request which references a global script created in SAP CPQ to an external server by using a web service client (such as Postman) to initiate a certain operation or retrieve data.
User Interface API

User Interface API is intended for SAP CPQ to use to perform certain operations, such as retrieving user types.
Product Integration REST API

The Product Integration REST API includes the following operations: GET, POST, PUT, PATCH, DELETE, BULK INSERT, BULK UPDATE, BULK UPSERT, and BULK DELETE.
Headless SAP CPQ Configurator

Yes
No