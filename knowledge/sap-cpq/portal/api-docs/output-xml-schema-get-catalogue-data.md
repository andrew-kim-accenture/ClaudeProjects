# Output XML Schema - Get Catalogue Data | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/f1c7a028896045eba17c4b4eff69111e.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Result XML Examples
	
Output XML Schema - Get Catalogue Data
	
Get Catalogue Data - Input and Output Parameters
	
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
Output XML Schema - Get Catalogue Data


<?xml version="1.0" encoding="utf-16"?>
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="CATALOGUE">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="CATEGORIES">
          <xs:complexType>
            <xs:sequence>
              <xs:element maxOccurs="unbounded" name="CATEGORY">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="ID" type="xs:unsignedByte" />
                    <xs:element name="NAME" type="xs:string" />
                    <xs:element name="RANK" type="xs:unsignedByte" />
                    <xs:element name="ACTIVE" type="xs:unsignedByte" />
                    <xs:element name="STARTDATE" />
                    <xs:element name="ENDDATE" />
                    <xs:element name="REDIRECTTOURL" />
                    <xs:element name="IMAGE" type="xs:string" />
                    <xs:element name="PRODUCTS">
                      <xs:complexType>
                        <xs:sequence minOccurs="0">
                          <xs:element maxOccurs="unbounded" name="PRODUCT">
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element name="ID" type="xs:unsignedByte" />
                                <xs:element name="NAME" type="xs:string" />
                                <xs:element name="PARTNUM" type="xs:string" />
                                <xs:element name="DESCRIPTION" type="xs:string" />
                                <xs:element name="PRICE" type="xs:decimal" />
                                <xs:element name="COST" type="xs:string" />
                                <xs:element name="PRODUCTTYPE" type="xs:string" />
                                <xs:element name="STARTDATE" />
                                <xs:element name="ENDDATE" />
                                <xs:element name="WEIGHT" type="xs:string" />
                                <xs:element name="RANKWITHINCATEGORY" type="xs:unsignedShort" />
                                <xs:element name="ISSIMPLE" type="xs:unsignedByte" />
                              </xs:sequence>
                            </xs:complexType>
                          </xs:element>
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                    <xs:element minOccurs="0" maxOccurs="unbounded" name="CATEGORY">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element name="ID" type="xs:unsignedByte" />
                          <xs:element name="NAME" type="xs:string" />
                          <xs:element name="RANK" type="xs:unsignedByte" />
                          <xs:element name="ACTIVE" type="xs:unsignedByte" />
                          <xs:element name="STARTDATE" />
                          <xs:element name="ENDDATE" />
                          <xs:element name="REDIRECTTOURL" />
                          <xs:element name="IMAGE" type="xs:string" />
                          <xs:element name="PRODUCTS">
                            <xs:complexType>
                              <xs:sequence minOccurs="0">
                                <xs:element maxOccurs="unbounded" name="PRODUCT">
                                  <xs:complexType>
                                    <xs:sequence>
                                      <xs:element name="ID" type="xs:unsignedByte" />
                                      <xs:element name="NAME" type="xs:string" />
                                      <xs:element name="PARTNUM" type="xs:string" />
                                      <xs:element name="DESCRIPTION" type="xs:string" />
                                      <xs:element name="PRICE" type="xs:decimal" />
                                      <xs:element name="COST" type="xs:string" />
                                      <xs:element name="PRODUCTTYPE" type="xs:string" />
                                      <xs:element name="STARTDATE" />
                                      <xs:element name="ENDDATE" />
                                      <xs:element name="WEIGHT" type="xs:string" />
                                      <xs:element name="RANKWITHINCATEGORY" type="xs:unsignedShort" />
                                      <xs:element name="ISSIMPLE" type="xs:unsignedByte" />
                                    </xs:sequence>
                                  </xs:complexType>
                                </xs:element>
                              </xs:sequence>
                            </xs:complexType>
                          </xs:element>
                          <xs:element minOccurs="0" maxOccurs="unbounded" name="CATEGORY">
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element name="ID" type="xs:unsignedByte" />
                                <xs:element name="NAME" type="xs:string" />
                                <xs:element name="RANK" type="xs:unsignedByte" />
                                <xs:element name="ACTIVE" type="xs:unsignedByte" />
                                <xs:element name="STARTDATE" />
                                <xs:element name="ENDDATE" />
                                <xs:element name="REDIRECTTOURL" />
                                <xs:element name="IMAGE" type="xs:string" />
                                <xs:element name="PRODUCTS">
                                  <xs:complexType>
                                    <xs:sequence>
                                      <xs:element maxOccurs="unbounded" name="PRODUCT">
                                        <xs:complexType>
                                          <xs:sequence>
                                            <xs:element name="ID" type="xs:unsignedByte" />
                                            <xs:element name="NAME" type="xs:string" />
                                            <xs:element name="PARTNUM" type="xs:string" />
                                            <xs:element name="DESCRIPTION" type="xs:string" />
                                            <xs:element name="PRICE" type="xs:decimal" />
                                            <xs:element name="COST" type="xs:string" />
                                            <xs:element name="PRODUCTTYPE" type="xs:string" />
                                            <xs:element name="STARTDATE" />
                                            <xs:element name="ENDDATE" />
                                            <xs:element name="WEIGHT" />
                                            <xs:element name="RANKWITHINCATEGORY" type="xs:unsignedByte" />
                                            <xs:element name="ISSIMPLE" type="xs:unsignedByte" />
                                          </xs:sequence>
                                        </xs:complexType>
                                      </xs:element>
                                    </xs:sequence>
                                  </xs:complexType>
                                </xs:element>
                              </xs:sequence>
                            </xs:complexType>
                          </xs:element>
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
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