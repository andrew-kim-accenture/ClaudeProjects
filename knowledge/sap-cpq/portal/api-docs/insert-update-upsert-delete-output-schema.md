# Insert Update Upsert Delete Output Schema | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/dd636452998e486f9c7748a2b19e011c.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create Table Input XML Schema - AUX Table Administration
	
Create Table Output XML Schema - AUX Table Administration
	
Custom Table Administration - Output Parameters
	
Custom Table Administration Details
	
Custom Table Administration Execution Workflow
	
Custom Table Searching Rules
	
Custom Table Web Method - Input Parameters
	
Export Rows Input XML Schema - AUX Table Administration
	
Export Rows Output XML Schema - AUX Table Administration
	
Insert Update Upsert Delete Input Schema
	
Insert Update Upsert Delete Output Schema
	
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
Insert Update Upsert Delete Output Schema


<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema" targetNamespace="http://webcominc.com/" xmlns="http://webcominc.com/">
  <xs:element name="Result">
    <xs:complexType>
      <xs:sequence >
        <xs:element name="Status" type="oknok" maxOccurs="1" minOccurs="1" />
        <xs:element type="xs:string" name="Message" maxOccurs="1" minOccurs="0"/>
        <xs:element name="Error" maxOccurs="1" minOccurs="0">
          <xs:complexType>
            <xs:sequence>
              <xs:element type="xs:int" name="ErrorCode"/>
              <xs:element type="xs:string" name="Description"/>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="Root" maxOccurs="1" minOccurs="0">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Columns" maxOccurs="1" minOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element maxOccurs="unbounded" name="Column" minOccurs="0">
                      <xs:complexType>
                        <xs:simpleContent>
                          <xs:extension base="xs:string">
                            <xs:attribute name="key" type="xs:string"/>
                          </xs:extension>
                        </xs:simpleContent>
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element name="Rows" maxOccurs="1" minOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element maxOccurs="unbounded" name="Row"
                        minOccurs="0">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element maxOccurs="unbounded" name="Value"
                            type="xs:string" minOccurs="0" />
                          <xs:element name="Result" maxOccurs="1" minOccurs="1">
                            <xs:complexType>
                              <xs:sequence >
                                <xs:element name="Status" type="oknok" maxOccurs="1" minOccurs="1" />
                                <xs:element type="xs:string" name="Message" maxOccurs="1" minOccurs="0"/>
                                <xs:element type="xs:string" name="ActionTaken" maxOccurs="1" minOccurs="0"/>
                                <xs:element name="CpqTableEntryId" type="xs:integer" maxOccurs="1" minOccurs="0" />
                                <xs:element name="Error" maxOccurs="1" minOccurs="0">
                                  <xs:complexType>
                                    <xs:sequence>
                                      <xs:element name="ErrorCode" type="xs:string" maxOccurs="1" minOccurs="1" />
                                      <xs:element name="Description" type="xs:string" maxOccurs="1" minOccurs="1" />
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