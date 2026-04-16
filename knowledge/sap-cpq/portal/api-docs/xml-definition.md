# XML Definition | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/491fdc171a7a44c6af7cd8f10eeba7a7.html?locale=en-US&state=PRODUCTION&version=2603
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


	
User Administration - Input Parameters
	
User Administration - Output Parameters
	
Function Workflow
	
General Deserialization Rules
	
Input XML Scheme - User Administration
	
Output XML Scheme - User Administration
	
Managing User Custom Fields via API Method
	
User administration API XML Details
	
XML Definition
	
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
XML Definition


<RESPONSE xmlns="">
<RESULT>OK</RESULT>
<MESSAGE>User aoshepar updated</MESSAGE>
</RESPONSE>
 
 
<RESPONSE xmlns="">
<RESULT>NOK</RESULT>
<ERROR>
            <CODE>103001</CODE>
<MESSAGE>Required node USERNAME not supplied</MESSAGE>
</ERROR>
</RESPONSE>
 
<RESPONSE xmlns="">
<RESULT>NOK</RESULT>
<ERROR>
            <CODE>103002</CODE>
<MESSAGE>Approving parent user not found in CPQ database</MESSAGE>
</ERROR>
</RESPONSE>
 
<RESPONSE xmlns="">
<RESULT>NOK</RESULT>
<ERROR>
            <CODE>103004</CODE>
<MESSAGE>Managing parent user not found in CPQ database</MESSAGE>
</ERROR>
</RESPONSE>
Yes
No