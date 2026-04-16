# Output XML Schema - Customer Administration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/9ce2cd881274414fba38f0f090336e0c.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ API DocumentationVersion: 2603English
Provide feedback on our search

	
SAP CPQ API
	
SOAP API


	
Simple Product Administration SOAP API
	
Customer Administration SOAP API


	
Customer Administration-Input Parameters
	
Customer Administration - Output Parameters
	
Customer Administration Details
	
Customer Administration Execution Workflow
	
Customer Searching Rules
	
Customer Updating Rules
	
Input XML Schema - Customer Administration
	
Output XML Schema - Customer Administration
	
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
Output XML Schema - Customer Administration


<?xml version="1.0" encoding="utf-8"?>
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="Result">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="Status" type="oknok" maxOccurs="1" minOccurs="1" />
        <xs:element name="Message" type="xs:string" maxOccurs="1" minOccurs="1" />
        <xs:element name="Errors" maxOccurs="1" minOccurs="0">
          <xs:complexType>
            <xs:sequence>
              <xs:element maxOccurs="unbounded" name="Error" minOccurs="0">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="ErrorCode" type="xs:string" maxOccurs="1" 
                      minOccurs="1" />
                    <xs:element name="Description" type="xs:string" maxOccurs="1" 
                      minOccurs="1" />
                    <xs:element name="Customer" maxOccurs="1" minOccurs="0">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element name="Id" type="xs:unsignedInt" 
                            maxOccurs="1" minOccurs="0" />
                          <xs:element name="ExternalId" maxOccurs="1" 
                            type="xs:string" minOccurs="0" />
                          <xs:element name="FirstName" type="xs:string" 
                            maxOccurs="1" minOccurs="0" />
                          <xs:element name="LastName" type="xs:string" 
                            maxOccurs="1" minOccurs="0" />
                          <xs:element name="Company" type="xs:string" 
                            maxOccurs="1" minOccurs="0" />
                          <xs:element name="CustomerType" maxOccurs="1" 
                            type="xs:string" minOccurs="0" />
                          <xs:element name="Address1" type="xs:string" 
                            maxOccurs="1" minOccurs="0" />
                          <xs:element name="Address2" maxOccurs="1" 
                            type="xs:string" minOccurs="0" />
                          <xs:element name="City" type="xs:string" 
                            maxOccurs="1" minOccurs="0" />
                          <xs:element name="Province" maxOccurs="1" 
                            type="xs:string" minOccurs="0" />
                          <xs:element name="StateAbbrev" type="xs:string" 
                            maxOccurs="1" minOccurs="0" />
                          <xs:element name="ZipCode" type="xs:string" 
                            maxOccurs="1" minOccurs="0" />
                          <xs:element name="CountryAbbrev" type="xs:string" 
                            maxOccurs="1" minOccurs="0" />
                          <xs:element name="TerritoryName" maxOccurs="1" 
                            type="xs:string" minOccurs="0" />
                          <xs:element name="BusinessPhone" type="xs:string" 
                            maxOccurs="1" minOccurs="0" />
                          <xs:element name="BusinessFax" type="xs:string" 
                            maxOccurs="1" minOccurs="0" />
                          <xs:element name="EMail" maxOccurs="1" 
                            type="xs:string" minOccurs="0" />
                          <xs:element name="OwnerID" maxOccurs="1" 
                            type="xs:unsignedInt" minOccurs="0" />
                          <xs:element name="OwnerUserName" maxOccurs="1" 
                            type="xs:string" minOccurs="0" />
                          <xs:element name="CRMAccountId" type="xs:string" 
                            maxOccurs="1" minOccurs="0" />
                          <xs:element name="CRMContactId" type="xs:string" 
                            maxOccurs="1" minOccurs="0" />
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
Related Information
SOAP API Authentication
Yes
No