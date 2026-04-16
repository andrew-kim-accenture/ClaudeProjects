# Output XML Schema - Get Cart Properties | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/0968e6e37ef14d91a55ae217159bb7a2.html?locale=en-US&state=PRODUCTION&version=2603
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
Output XML Schema - Get Cart Properties


<?xml version="1.0" encoding="utf-8"?>
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="Result">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="Status" type="oknok" minOccurs="0" maxOccurs="1" />
        <xs:element name="Message" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="Properties" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element maxOccurs="unbounded" name="Property" minOccurs="0">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="StrongName" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element minOccurs="0" name="Status" type="oknok" maxOccurs="1" />
                    <xs:element minOccurs="0" name="Message" type="xs:string" maxOccurs="1" />
                    <xs:element minOccurs="0" name="Label" type="xs:string" maxOccurs="1" />
                    <xs:element minOccurs="0" name="Value" type="xs:string" maxOccurs="1" />
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
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