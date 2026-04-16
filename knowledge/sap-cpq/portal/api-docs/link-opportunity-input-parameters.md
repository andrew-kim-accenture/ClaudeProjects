# Link Opportunity - Input Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/09fd97dd34c04d4eaef2aadbaf6c0541.html#input-xml-example
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


	
Link Opportunity - Input Parameters
	
Link Opportunity - Output Parameters
	
Result XML Examples
	
Input XML Schema - Link Opportunity
	
Output XML Schema - Link Opportunity
	
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
Link Opportunity - Input Parameters

Tag

	

Data Type

	

Description

	

Required

	

Comments




Username

	

String (20)

	

Only SAP CPQ users can execute this function. SAP CPQ user is defined in SAP CPQ admin.

	

Yes

	

SAP CPQUsername of API user




Password

	

String (25)

	

Only SAP CPQ users can execute this function. Password is defined in SAP CPQ admin.

	

Yes

	

Password of API user




OrderID

	

Number (8-12)

	

Order# (8 or 12 -digit number)

	

Yes

	

SAP CPQ System quotation number




XML

	

XML

	

Opportunity properties

	

Yes

	

This xml contains opportunity id, which will be used to link cpq quote to crm opportunity.

Input XML definition

Element Name

	

Data Type

	

Description

	

Required

	

Comments




OpportunityId

	 	

Tag containing opportunity id

	

Y

	

Id of the CRM opportunity.




OpportunityName

	 	

Tag containing opportunity name

	

N

	

Name of CRM opportunity.

Input XML Example


<Crm>
  <OpportunityId>892ADE6756HIX</OpportunityId>
  <OpportunityName>Test Oppty</OpportunityName>
</Crm>
On this page
Input XML definition
Input XML Example
Yes
No