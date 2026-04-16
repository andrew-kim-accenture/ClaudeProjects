# Output XML Schema - Perform Quote Action | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/13384554a23c4b46b8b42a4257f3aa3a.html?locale=en-US&state=PRODUCTION&version=2603
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
Output XML Schema - Perform Quote Action


<?xml version="1.0" encoding="utf-8"?>
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="RESULT">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="RESULT" type="xs:string" maxOccurs="1" minOccurs="1" />
        <xs:element name="REASON" type="xs:string" maxOccurs="1" minOccurs="1" />
        <xs:element name="STATUS" type="xs:string" maxOccurs="1" minOccurs="1" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:simpleType name="oknok">
    <xs:restriction base="xs:string">
      <xs:enumeration value="OK" />
      <xs:enumeration value="NOK" />
    </xs:restriction>
  </xs:simpleType>
</xs:schema>

Yes
No