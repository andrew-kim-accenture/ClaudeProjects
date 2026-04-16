# Perform Quote Action – Input Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/253f8eb4a9de4f159e6853811604ddb9.html#input-xml-example
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


	
Perform Quote Action – Input Parameters
	
Perform Quote Action – Output Parameters
	
Result XML Examples
	
Input XML Schema - Perform Quote Action
	
Output XML Schema - Perform Quote Action
	
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
Perform Quote Action – Input Parameters
Tag	Data Type	Description	Required	Comments


Username

	

String (20)

	

Only SAP CPQ users can execute this function. SAP CPQ user is defined in SAP CPQ Setup.

	

Yes

	

Username of API user




Password

	

String (25)

	

Only SAP CPQ users can execute this function. Password is defined in SAP CPQ Setup.

	

Yes

	

Password of API user




OrderID

	

Number (8)

	

Order# (8-digit number)

	

Yes

	

SAP CPQ System quotation number




ERPOrderID

	

String (255)

	

External System (ERP) Order Number assigned to the SAP CPQ OrderID

	

No

	 


XML

	

XML

	

XML Object

	

Yes

	 
Data Definition for Perform Quote Action input XML
Element Name	Data Type	Description	Required	Comments


Action/Name

	 	

Tag containing action name

	

Y

	

Name of the SAP CPQ Workflow action




Action/Parameters

	 	

Additional parameters

	

N

	

One node for each action parameter

Input XML Example


<?xml version="1.0" encoding="utf-8"?>
  <ACTION>
    <NAME>Change Status</NAME>
    <PARAMETER name="NewStatus">Order placed</PARAMETER>
  </ACTION>
On this page
Data Definition for Perform Quote Action input XML
Input XML Example
Yes
No