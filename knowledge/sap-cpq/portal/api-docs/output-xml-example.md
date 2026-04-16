# Output XML Example | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/b65d1459019f4b649598ac9a72bbd91c.html#related-information
**Crawled:** 2026-04-16

## Content

SAP CPQ API DocumentationVersion: 2603English
Provide feedback on our search

	
SAP CPQ API
	
SOAP API


	
Simple Product Administration SOAP API


	
Input and Output Parameters
	
Input XML Example
	
Input XML Schema
	
Output XML Example
	
Output XML Schema
	
PRODUCT ADMINISTRATION - Input XML Examples
	
PRODUCT ADMINISTRATION WEB METHOD
	
Sorting and Ranking Attributes
	
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
Output XML Example
Result OK


<Result xmlns="http://webcominc.com/">
  <Status>OK</Status>
  <Message>Action successful.</Message>
</Result>
Result not OK


<Result xmlns="http://webcominc.com/">
  <Status>NOK</Status>
  <Message>DELETE failed</Message>
  <Error>
    <ErrorCode>100000</ErrorCode>
    <Description> Product not found. (DA353LNAL00G0) Product not found. (DA353LNAL00G0BRS)</Description>
  </Error>
</Result>

Result for GETLANGUAGE action


<Result xmlns="http://webcominc.com/">
  <Status>OK</Status>
  <Message>Default language: USEnglish. Other available languages: Serbian,Spanish,Test,French,japanese,German,Italian,Chinese,Russian,Dutch,Portuguese,Greek,Swedish.</Message>
</Result>

Related Information
SOAP API Authentication
On this page
Result OK
Result not OK
Result for GETLANGUAGE action
Related Information
Yes
No