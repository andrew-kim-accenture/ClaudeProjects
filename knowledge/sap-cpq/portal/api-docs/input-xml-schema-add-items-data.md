# Input XML Schema - Add Items Data | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/fd0ec71f681c4a3794f3e714f7b23407.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Add Items Data - Input Parameters
	
Input XML Schema - Add Items Data
	
Output XML Schema - Add Items Data
	
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
Input XML Schema - Add Items Data


<?xml version="1.0" encoding="utf-8"?>
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="ItemObjects">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="ItemObject" minOccurs="1" maxOccurs="unbounded">
          <xs:complexType>
            <xs:sequence>
              <xs:choice maxOccurs="unbounded" minOccurs="1">
                <xs:element name="ItemID" type="xs:unsignedInt" maxOccurs="1" 
                  minOccurs="1" />
                <xs:element name="ItemDetail" maxOccurs="1" minOccurs="1">
                  <xs:complexType>
                    <xs:sequence>
                      <xs:element name="ItemSequence" type="xs:unsignedInt" 
                        maxOccurs="1" minOccurs="1" />
                      <xs:element name="SerialNumberEach" type="xs:string" 
                        maxOccurs="1" minOccurs="0" />
                      <xs:element name="TrackingNumber" type="xs:string" 
                        maxOccurs="1" minOccurs="0" />
                      <xs:element name="TrackingURL" type="xs:string" 
                        maxOccurs="1" minOccurs="0" />
                      <xs:element name="EstimatedShipDate" type="xs:string" 
                        maxOccurs="1" minOccurs="0" />
                      <xs:element name="ActualShipDate" type="xs:string" 
                        maxOccurs="1" minOccurs="0" />
                      <xs:element name="LicenseKeyNumber" type="xs:string" 
                        maxOccurs="1" minOccurs="0" />
                      <xs:element minOccurs="0" name="MiscItemDetail01" 
                        type="xs:string" maxOccurs="1" />
                      <xs:element minOccurs="0" name="MiscItemDetail02" 
                        type="xs:string" maxOccurs="1" />
                      <xs:element minOccurs="0" name="MiscItemDetail03" 
                        type="xs:string" maxOccurs="1" />
                      <xs:element minOccurs="0" name="MiscItemDetail04" 
                        type="xs:string" maxOccurs="1" />
                      <xs:element minOccurs="0" name="MiscItemDetail05" 
                        type="xs:string" maxOccurs="1" />
                    </xs:sequence>
                  </xs:complexType>
                </xs:element>
              </xs:choice>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>

Yes
No