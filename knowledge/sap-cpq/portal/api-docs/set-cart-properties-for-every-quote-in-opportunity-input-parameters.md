# Set Cart Properties For Every Quote In Opportunity - Input Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/03167a37757845bea2b9730fc7c4534b.html#input-xml-example
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


	
Set Cart Properties For Every Quote In Opportunity - Input Parameters
	
Set Cart Properties For Every Quote In Opportunity - Output Parameters
	
Input XML Schema - Set Cart Properties For Every Quote In Opportunity
	
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
Set Cart Properties For Every Quote In Opportunity - Input Parameters
Tag	Data Type	Description	Required	Comments


Domain

	

String (50)

	

SAP CPQ domain where user and quotes belong to.

	

Yes

	

Name of SAP CPQ domain




Username

	

String (20)

	

Only SAP CPQ users can execute this function. SAP CPQ user is defined in SAP CPQ Setup.

	

Yes

	

Username of API user




SessionID

	

String (8)

	

Session ID received from SalesForce.

	

Yes

	 


URL

	

String (255)

	

URL received from SalesForce.

	

Yes

	 


OrderID

	

String (8)

	

Unique order quote number

	

Yes

	

SAP CPQ System quotation number




OpportunityID

	

String (255)

	

Opportunity under which quotes are created.

	

Yes

	 


XML

	

XML

	

XML Object

	

Yes

	 
Data Definition for Set Cart Properties For Every Quote In Opportunity input XML
Field Name	Description	Sample Data	Type	Size


CartProperty/Name

	

Name of the custom field

	

1W before Quote Expiration Date

	

Text

	

100




CartProperty/Value

	

Value of the custom field

	

11/2/2011

	

Text

	

100

Input XML Example


<?xml version="1.0" encoding="utf-8"?>
  <CartProperties>
    <CartProperty>
      <Name>1W before Quote Expiration Date</Name>
      <Value>11/2/2011</Value>
    </CartProperty>
  </CartProperties>
On this page
Data Definition for Set Cart Properties For Every Quote In Opportunity input XML
Input XML Example
Yes
No