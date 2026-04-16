# Input XML Schema - New Quote | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/20bae2f0556b42669a08c07e6381facf.html?locale=en-US&state=PRODUCTION&version=2603
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
Input XML Schema - New Quote


<?xml version="1.0" encoding="utf-8"?>
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="Cart">
    <xs:attribute name="PREVENT_EMPTY_QUOTE" type="xs:integer" use="optional"/>
    <xs:complexType>
      <xs:sequence>
        <xs:element name="MarketCode" type="xs:string" maxOccurs="1" minOccurs="0" />
        <xs:element name="ShippingMethod" type="xs:string" maxOccurs="1" minOccurs="1" />
        <xs:element name="ShippingPrice" minOccurs="0" maxOccurs="1" type="xs:decimal" />
        <xs:element name="TaxExempt" type="yesno" minOccurs="0" maxOccurs="1" />
        <xs:element name="CartComment" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="PromoCode" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="Crm" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="OpportunityId" type="xs:string" maxOccurs="1" minOccurs="1" />
              <xs:element name="OpportunityName" type="xs:string" minOccurs="0" maxOccurs="1" />
            </xs:sequence>
            <xs:attribute name="ApplyMappings" type="yesno" use="required" />
          </xs:complexType>
        </xs:element>
        <xs:element name="Items" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Item" minOccurs="0" maxOccurs="unbounded">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Quantity" type="xs:decimal" maxOccurs="1" minOccurs="1" />
                    <xs:element name="CatalogueCode" type="xs:string" maxOccurs="1" minOccurs="1" />
                    <xs:element name="ProductName" type="xs:string" maxOccurs="1" minOccurs="1" />
                    <xs:element name="ItemPrice" type="xs:decimal" minOccurs="0" maxOccurs="1" />
                    <xs:element name="Attributes" minOccurs="0" maxOccurs="1">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element name="Attribute" minOccurs="0" maxOccurs="unbounded">
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element name="Name" type="xs:string" maxOccurs="1" minOccurs="1" />
                                <xs:element name="Value" type="xs:string" minOccurs="1" maxOccurs="unbounded" />
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
        <xs:element name="Properties" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element maxOccurs="unbounded" name="Property" minOccurs="0">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Name" type="xs:string" maxOccurs="1" minOccurs="1" />
                    <xs:element name="Value" type="xs:string" maxOccurs="1" minOccurs="1" />
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="Customers" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element maxOccurs="3" name="Customer" minOccurs="0">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Id" type="xs:unsignedInt" minOccurs="0" maxOccurs="1" />
                    <xs:element name="ExternalId" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="FirstName" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="LastName" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="Company" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="Address1" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="Address2" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="City" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="StateAbbrev" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="ZipCode" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="CountryAbbrev" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="TerritoryName" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="BusinessPhone" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="BusinessFax" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="EMail" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="CRMAccountId" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="CRMContactId" type="xs:string" minOccurs="0" maxOccurs="1" />
                  </xs:sequence>
                  <xs:attribute name="CustomerRoleType" type="customerRole" use="required" />
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:simpleType name="yesno">
    <xs:restriction base="xs:string">
      <xs:enumeration value="0" />
      <xs:enumeration value="1" />
      <xs:enumeration value="true" />
      <xs:enumeration value="false" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="customerRole">
    <xs:restriction base="xs:string">
      <xs:enumeration value="1" />
      <xs:enumeration value="2" />
      <xs:enumeration value="3" />
    </xs:restriction>
  </xs:simpleType>
</xs:schema>

Yes
No