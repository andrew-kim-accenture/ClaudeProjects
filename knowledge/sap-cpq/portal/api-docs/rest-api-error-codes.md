# REST API Error Codes | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/89140a4614a3492880085a02d3348569.html?locale=en-US&state=PRODUCTION&version=2603
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
REST API Error Codes

API

Error Code

	

Error Message




110000

	

Error code for API - failed model validation




110001

	

Error code for API - failed model validation - field is required




110002

	

Error code for API - failed model validation - field is too long




110003

	

Error code for API - failed model validation - field exceeds range




110004

	

Error code for API - failed model validation - invalid date format




110005

	

Error code for API - failed model validation - enum field is not valid




110006

	

Error code for API - failed model validation - string array item is too long




110007

	

Error code for API - failed model validation - list cannot be empty




110008

	

Error code for API - failed model validation - item key not unique




110009

	

Error code for API - failed model validation - invalid email address




110010

	

Error code for API - failed model validation - entity is already in use




110011

	

Error code for API - failed model validation - file is required




110012

	

Error code for API - failed model validation - negative numbers aren't allowed




111000

	

Error code for API - invalid owner




112000

	

Error code for API - generic validation error




113000

	

Error code for API - http response error




114000

	

Error code for API - parameters validation failed




115000

	

Error code for API - unauthorized user




116000

	

Error code for API - internal server error




117000

	

Error code for API - unauthorized scope




118000

	

Error code for API - resource not found




119000

	

Error code for API - action not allowed




119500

	

Error code for API - action timeout

Entity

Error Code

	

Error Message




120001

	

Error code for entity - invalid system ID

Configurator

Error Code

	

Error Message




131101

	

Error code for configuration context - load failed




131102

	

Error code for configuration context - load failed - not valid




131201

	

Error code for external configuration context - not found




132001

	

Error code for configurator - configuration not found




132002

	

Error code for configurator - configuration initialization




132003

	

Error code for configurator - configuration cannot be loaded, because it is invalid




132004

	

Error code for configurator - configuration cannot be loaded due to an error in product definition




132005

	

Error code for configurator - configuration cannot be loaded due to an error with pricing procedure determination




132006

	

Error code for configurator - product can't be opened in configurator due to an error in product attribute definition




132101

	

Error code for configurator - action not allowed - no permissions




132102

	

Error code for configurator - action not allowed - configuration is permanent




132204

	

Error code for configurator - product definition in the External Configurator is invalid or incompatible with SAP CPQ rules




132205

	

Error code for configurator - External configuration type is not supported for Quote 1.0

Product

Error Code

	

Error Message




140001

	

Error code for product - not found




140002

	

Error code for product - invalid product definition

Permission Group

Error Code

	

Error Message




150001

	

Error code for permission group - field is too long

External Communication

Error Code

	

Error Message




160001

	

Error code for external communication - generic error




160002

	

Error code for communication with SAP Cloud Integration - generic error

Quote

Error Code

	

Error Message




181001

	

Quote item field value is not a number and can't be mapped to a pricing condition.




181002

	

Quote header field value is not a number and can't be mapped to a pricing condition.




181003

	

The result of mapping quote item columns to pricing conditions is invalid. See the log for more details.




181004

	

The result of mapping quote header columns to pricing conditions is invalid. See the log for more details.




182001

	

Quote pricing procedure is not determined.




182002

	

Condition rate is maintained in a different currency than the one that is used on the quote/pricing document.




182003

	

Pricing condition has multiple records that cannot be summed up (different calculation type, condition base or rate quantity).




182004

	

Multiple pricing conditions have been determined that are mapped to the same field.




182005

	

Pricing condition has unsupported time-based calculation type.




182006

	

Passed if-match header parameter (etag) value did not match expected value. Another user made changes to the pricing document.




182007

	

Pricing condition is mapped to the non-pricing field.




182008

	

Pricing conditions for bulk upsert are not the same.




182009

	

Pricing condition cannot be edited.

Product Logic

Error Code

	

Error Message




190001

	

Error code for product logic - state is invalid

Scripting

Error Code

	

Error Message




200001

	

Error code for scripting - invalid operation

External Configurator

Error Code

	

Error Message




210001

	

Error code for external configuration - script not found




210002

	

Error code for external configuration - invalid script




210003

	

Error code for external configuration - using the Favorites feature is not supported

Yes
No