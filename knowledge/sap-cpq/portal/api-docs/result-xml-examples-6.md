# Result XML Examples | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/c3401e8074494b9984b1da3eb8146580.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Get Cart Properties - Input Parameters
	
Get Cart Properties – Output Parameters
	
Result XML Examples
	
Output XML Schema - Get Cart Properties
	
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
Result XML Examples

Example for two valid string names:



<Result>
  <Properties>
    <Property>
      <StrongName>GPQuotationNumber</StrongName>
      <Label>GP Quotation#</Label>
      <Value>123456</Value>
    </Property>
    <Property>
      <StrongName>QuotationName</StrongName>
      <Label>Quote Name</Label>
      <Value>Test Quote</Value>
    </Property>
  </Properties>
</Result>

Example for one valid and one invalid string name:



<Result>
  <Properties>
    <Property>
      <StrongName>GPQuotationNumber</StrongName>
      <Label>GP Quotation#</Label>
      <Value>123456</Value>
    </Property>
    <Property>
      <StrongName>QuotationName</StrongName>
      <Status>NOK</Status>
      <Message>Unknown property</Message>
    </Property>
  </Properties>
</Result>

Example for response for non-existing quote:



<Result>
  <Status>NOK</Status>
  <Message>Unknown quote 0012300456</Message>
</Result>

Example for response for invalid login:



<Result>
  <Status>NOK</Status>
  <Message>Invalid login</Message>
</Result>
Yes
No