# Input XML Schema - Perform Cart Action | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/c9a20b8d01b04d24856219c403d6ad6b.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Perform Cart Action - Input Parameters
	
Perform Cart Action – Output Parameters
	
Result XML Examples
	
Input XML Schema - Perform Cart Action
	
Output XML Schema - Perform Cart Action
	
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
Input XML Schema - Perform Cart Action


<?xml version="1.0" encoding="utf-8"?>
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="ACTION">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="NAME" type="xs:string" maxOccurs="1" minOccurs="1" />
        <xs:element name="PARAMETER" minOccurs="0" maxOccurs="unbounded">
          <xs:complexType>
            <xs:simpleContent>
              <xs:extension base="xs:string">
                <xs:attribute name="name" type="xs:string" use="required" />
              </xs:extension>
            </xs:simpleContent>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>

Input XML Schema with <COMMENTS> Node


<?xml version="1.0" encoding="utf-8"?>
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="ACTION">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="NAME" type="xs:string" maxOccurs="1" minOccurs="1" />
        <xs:element name="PARAMETER" minOccurs="0" maxOccurs="unbounded">
          <xs:complexType>
            <xs:simpleContent>
              <xs:extension base="xs:string">
                <xs:attribute name="name" type="xs:string" use="required" />
              </xs:extension>
            </xs:simpleContent>
          </xs:complexType>
        </xs:element>
        <xs:element name="ORDER_ID" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="EXTERNAL_QUOTE_STATUS" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="COMMENTS" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element type="xs:string" name="CommentSource" minOccurs="1" maxOccurs="1" />
              <xs:element name="CartComments" minOccurs="0" maxOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="CartComment" minOccurs="0" maxOccurs="unbounded">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element type="xs:string" name="UserFullName" minOccurs="1" maxOccurs="1" />
                          <xs:element type="xs:string" name="UserEmail" minOccurs="1" maxOccurs="1" />
                          <xs:element type="xs:string" name="UserCompany" minOccurs="0" maxOccurs="1" />
                          <xs:element type="xs:string" name="Comment" minOccurs="1" maxOccurs="1" />
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element name="ItemComments" minOccurs="0" maxOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="ItemComment" minOccurs="0" maxOccurs="unbounded">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element type="xs:short" name="ItemId" minOccurs="1" maxOccurs="1" />
                          <xs:element type="xs:string" name="UserFullName" minOccurs="1" maxOccurs="1" />
                          <xs:element type="xs:string" name="UserEmail" minOccurs="1" maxOccurs="1" />
                          <xs:element type="xs:string" name="UserCompany" minOccurs="0" maxOccurs="1" />
                          <xs:element type="xs:string" name="Comment" minOccurs="1" maxOccurs="1" />
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