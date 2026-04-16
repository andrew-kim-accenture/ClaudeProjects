# Result XML Examples | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/8f4c655c8b424b6bb2180bb23e0215f0.html?locale=en-US&state=PRODUCTION&version=2603
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


	
New Quote - Input Parameters
	
New Quote - Output Parameters
	
Result XML Examples
	
New Quote Details
	
New Quote - Execution Flow
	
Input XML Schema - New Quote
	
Output XML Schema - New Quote
	
Login after API Quote Creation
	
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
Result XML Examples

Example for the successful quote creation:



<?xml version="1.0" encoding="utf-8"?>
<Result>
  <Status>OK</Status>
  <Message>New Quote Created</Message>
  <QuoteStatus>Open</QuoteStatus>
  <QuotationNumber>000010000034</QuotationNumber>
  <QuoteLink>https://yourdomain.cpq.cloud.sap/Login.aspx?quote=CED2CECFC7</QuoteLink>
  <QuoteSSOLink>https://yourdomain.cpq.cloud.sap/sso/login.aspx?u=ghLanimluj64XgtspvrSZSYYPG6TG7Ja86t1m5yLilE=&d=webcomqa&quotenumber=00010108</QuoteSSOLink>
</Result>


Example for the invalid Catalog code (part number) in the first item in the input XML:



<?xml version="1.0" encoding="utf-8"?>
<Result>
  <Status>NOK</Status>
  <Message>Quote is not created</Message>
  <Error>
    <ErrorCode>101001</Description>
    <Description>Invalid part number</Description>
    <NodeName>CatalogueCode</NodeName>
    <Value>A4541V</Value>
    <Sequence>1</Sequence>
  </Error>
</Result>

Example for the missing shipping method in the input XML:



<?xml version="1.0" encoding="utf-8"?>
<Result>
  <Status>NOK</Status>
  <Message>Quote is not created</Message>
  <Error>
    <ErrorCode>101002</ErrorCode>
    <Description>Required field Shipping method is missing</Description>
    <NodeName>ShippingMethod</NodeName>
  </Error>
</Result>

Example for the invalid customer Id supplied in input XML:



<?xml version="1.0" encoding="utf-8" ?>
<Result>
  <Status>NOK</Status>
  <Message>Quote is not created</Message>
  <Error>
    <ErrorCode>101003</ErrorCode>
    <Description>Supplied customer id is not found in CPQ db</Description>
    <NodeName>Customer/Id</NodeName>
    <Sequence>1</Sequence>
  </Error>
</Result>


Example for the invalid ZIP code for Ship to customer:



<?xml version="1.0" encoding="utf-8"?>
<Result>
  <Status>NOK</Status>
  <Message>Quote is not created</Message>
  <Error>
    <ErrorCode>101003</ErrorCode>
    <Description>Zip code is invalid</Description>
    <NodeName>ZipCode</NodeName>
    <Sequence>2</Sequence>
  </Error>
</Result>

Example for the invalid quote property:



<?xml version="1.0" encoding="utf-8"?>
<Result>
  <Status>NOK</Status>
  <Message>Quote is not created</Message>
  <Error>
    <ErrorCode>101003</ErrorCode>
    <Description>Unkonwn quote property ‘Some Property’</Description>
    <NodeName>Property</NodeName>
    <Sequence>2</Sequence>
  </Error>
</Result>
Yes
No