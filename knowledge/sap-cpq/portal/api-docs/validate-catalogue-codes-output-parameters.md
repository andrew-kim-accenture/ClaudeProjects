# Validate Catalogue Codes – Output Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/3b0d2e10bb1e4c3ea23215daa383dc27.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Validate Catalogue Codes - Input Parameters
	
Validate Catalogue Codes – Output Parameters
	
Result XML Examples
	
Input XML Scheme - Validate Catalogue Codes
	
Output XML Scheme - Validate Catalogue Codes
	
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
Validate Catalogue Codes – Output Parameters
Tag	Data Type	Description	Required	Comments


Result

	

XML

	

This function will generate XML document as result of the performed actions,

	

Yes

	

Result is always generated.

XML definition
Element Name	Data Type	Description	Required	Comments


Result

	 	 	

Y

	 


Item

	 	

Node that contains catalog code validation results

	

Y

	 


Status

	

String (50)

	

Valid or Invalid

	

Y

	 


Sequence

	

Number

	

Sequence of the catalog code

	

Y

	

Ordinal number if the CatalogueCode from the input XML




CatalogueCode

	

String(200)

	

Supplied catalog code

	

Y

	

A catalog code being validated




ProductName

	

String(100)

	

Name of the product

	

N

	

Only if catalog code is valid




ItemPrice

	

Number

	

Item List Price

	

N

	

Only if catalog code is valid. Nondiscounted List Price of the item with such catalog code.

Yes
No