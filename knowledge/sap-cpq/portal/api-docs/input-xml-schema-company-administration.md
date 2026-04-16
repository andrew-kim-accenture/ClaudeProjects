# Input XML Schema - Company Administration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/f70471deeabf48cda7325abbc4609f79.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Company Administration - Input Parameters
	
Company Administration - Output Parameters
	
Result XML Examples
	
Input XML Schema - Company Administration
	
Output XML Schema - Company Administration
	
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
Input XML Schema - Company Administration



<?xml version="1.0" encoding="utf-8"?>
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="COMPANYPROPERTIES">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="COMPANYCODE" type="xs:string" maxOccurs="1" minOccurs="1" />
        <xs:element name="NAME" type="xs:string" maxOccurs="1" minOccurs="0" />
        <xs:element name="EMAILADDRESS" type="xs:string" maxOccurs="1" minOccurs="0" />
        <xs:element name="ADDRESS1" type="xs:string" maxOccurs="1" minOccurs="0" />
        <xs:element name="ADDRESS2" maxOccurs="1" minOccurs="0" type="xs:string" />
        <xs:element name="CITY" type="xs:string" maxOccurs="1" minOccurs="0" />
        <xs:element name="STATE" type="xs:string" maxOccurs="1" minOccurs="0" />
        <xs:element name="ZIPCODE" type="xs:string" maxOccurs="1" minOccurs="0" />
        <xs:element name="COUNTRY" type="xs:string" maxOccurs="1" minOccurs="0" />
        <xs:element name="PHONENUMBER" type="xs:string" maxOccurs="1" minOccurs="0" />
        <xs:element name="FAXNUMBER" type="xs:string" maxOccurs="1" minOccurs="0" />
        <xs:element name="IMAGE" type="xs:string" maxOccurs="1" minOccurs="0" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>

Yes
No