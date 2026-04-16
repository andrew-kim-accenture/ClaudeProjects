# Set Cart Item Properties - Input Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/ee54da6ccf854b5a8fa386cde2ffa82c.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Set Cart Item Properties - Result XML
	
Set Cart Item Properties - Input Parameters
	
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
Set Cart Item Properties - Input Parameters

Set Cart Item Properties - Input parameters.

Tag	Data Type	Description	Required	Comments


username

	

String

	

Only SAP CPQ administrators can execute this function. SAP CPQ user is defined in SAP CPQ Setup.

	

Yes

	

SAP CPQ administrator user name




password

	

String

	

Only SAP CPQ administrators can execute this function. Password is defined in SAP CPQ Setup.

	

Yes

	

SAP CPQ administrator password for the administrator user name provided in the username element




cartCompositeNumber

	

String

	

Cart composite number.

	

Yes

	

System quotation number of a cart to get properties of




revNumrevNum

	

Integer or Null

	

Cart revision number.

	

No

	

If null, active revision will be returned

Yes
No