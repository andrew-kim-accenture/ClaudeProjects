# Result XML Examples | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/5bf951f221fc486a89db3f554f15510c.html?locale=en-US&state=PRODUCTION&version=2603
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
Result XML Examples

Input attributes were: “Processor”, “Monitor”, “Hard Drive” and “Toner”.



<?xml version="1.0" encoding="utf-16"?>
<CART>
  <DateOrdered />
  <DateClosed />
  <DateCreated>7/22/2009</DateCreated>
  <DateModified>7/24/2009</DateModified>
  <CartCompositeNumber>00010007</CartCompositeNumber>
  <CartId>7</CartId>
  <OwnerId>1</OwnerId>
  <ActiveRevision>1</ActiveRevision>
  <RevisionNumber>0</RevisionNumber>
  <OrderStatusId>1</OrderStatusId>
  <OrderStatusName>Open</OrderStatusName>
  <PRODUCT>
    <ProductId>1</ProductId>
    <Name>SMB2 Desktop computer</Name>
    <ProductType>Hardware</ProductType>
    <IsSimple>0</IsSimple>
    <IsValid>1</IsValid>
    <Description>SMB2 Desktop Computer with:AMD Athlon 3000+ Processor,256MB-DDR Memory,250GB Hard Disc,CD-R 52/16/52 Drive,19inch Flat Screen Monitor</Description>
    <DescriptionLong>SMB2 Desktop computer</DescriptionLong>
    <CatCode>SMB2-A3-256-H25-C519F</CatCode>
    <Cost>0.0000000000</Cost>
    <Price>345</Price>
    <Qty>1</Qty>
    <CartItem>1</CartItem>
    <BOM>
      <BOMITEM>
        <ITEMNUM>1</ITEMNUM>
        <CONDITIONID>4</CONDITIONID>
        <CHARTID>3</CHARTID>
        <CHARTNAME><![CDATA[proba]]></CHARTNAME>
        <PARTTYPE><![CDATA[Hardware]]></PARTTYPE>
        <PARTNAME><![CDATA[SMB2 Desktop computer]]></PARTNAME>
        <PARTDESCRIPTION><![CDATA[Reliable Desktop computers for any kind of exploitation]]></PARTDESCRIPTION>
        <PARSEDPARTNAME><![CDATA[]]></PARSEDPARTNAME>
        <PARSEDPARTDESCRIPTION><![CDATA[]]></PARSEDPARTDESCRIPTION>
        <QUANTITY><![CDATA[1]]></QUANTITY>
        <PARSEDQUANTITY><![CDATA[]]></PARSEDQUANTITY>
      </BOMITEM>
    </BOM>
</PRODUCT>
</CART>

Yes
No