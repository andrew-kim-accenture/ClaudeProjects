# Get Quote Items Attributes - Input Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/38e06dbda4de4b30bffea854060462ee.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ API DocumentationVersion: 2603English
Provide feedback on our search

	
SAP CPQ API
	
SOAP API


	
Simple Product Administration SOAP API
	
Customer Administration SOAP API
	
User Administration SOAP API
	
ImportMaterialsFromERP SOAP API
	
Company Administration SOAP API
	
Link Opportunity SOAP API
	
Custom Table Administration SOAP API
	
Get Catalogue Data SOAP API
	
Get Quote Data SOAP API
	
Get Quote Items Attributes SOAP API


	
Get Quote Items Attributes - Input Parameters
	
Get Quote Items Attributes - Output Parameters
	
Result XML Examples
	
Output XML Schema - Get Quote Items Attribute
	
Request for Quotation SOAP API
	
Search Quotes SOAP API
	
Search Quotes from SF SOAP API
	
New Quote SOAP API
	
Place Order SOAP API
	
Validate Catalogue Codes SOAP API
	
Get Cart Properties SOAP API
	
Get Cart Actions SOAP API
	
Perform Cart Action SOAP API
	
Add Items Data SOAP API
	
Perform Quote Action SOAP API
	
Set Cart Properties SOAP API
	
Set Cart Properties For Every Quote In Opportunity SOAP API
	
Set Cart Item Properties SOAP API
	
Create New Quote and Get Quote Data SOAP API
	
SOAP API Authentication
	
SOAP API Error Codes
	
Pricing API
	
DoYouSeeMe API
	
XWS (EXTERNAL WEB SERVICE)
	
Invalid XML Characters
	
API Example
	
External Webservices
	
REST API
Get Quote Items Attributes - Input Parameters

Get Quote Items Attributes - Input parameters:

Tag

	

Data Type

	

Description

	

Required

	

Comments




Username

	

String

	

Only SAP CPQ administrators can execute this function. SAP CPQ user is defined in SAP CPQ Setup.

	

Yes

	

SAP CPQ administrator user name




Password

	

String

	

Only SAP CPQ administrators can execute this function. Password is defined in SAP CPQ Setup.

	

Yes

	

SAP CPQ administrator's password for the administrator user name provided in the username element




CartCompositeNumber

	

String

	

Cart composite number.

	

Yes

	

System quotation number of a cart to get properties of




Revision

	

Integer or Null

	

Cart revision number.

	

No

	

If null, active revision will be returned




AttributeNames

	

String Array

	

Attribute names to get from cart.

	

No

	

Can be empty array – use in conjunction with next tag.




GetAllAttributes

	

Boolean

	

Get or don’t get all attributes from cart.

	

Yes

	

If TRUE, it will return all attributes from cart.

Yes
No