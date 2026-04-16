# Output XML Schema - Get Quote Items Attribute | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/ea1059b4d6784f7b874e0169c76bc4c6.html?locale=en-US&state=PRODUCTION&version=2603
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
Output XML Schema - Get Quote Items Attribute


<?xml version="1.0" encoding="utf-8"?>
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified"
xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="CART">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="DateOrdered" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="DateClosed" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="DateCreated" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="DateModified" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="CartCompositeNumber" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="CartId" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="OwnerId" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="ActiveRevision" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="RevisionNumber" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="OrderStatusId" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="OrderStatusName" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="PRODUCT" maxOccurs="unbounded" minOccurs="0">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ProductId" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="Name" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="ProductType" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="IsSimple" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="IsValid" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="Description" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="DescriptionLong" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="CatCode" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="Cost" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="Price" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="Qty" type="xs:string" minOccurs="0" maxOccurs="1" />
			  <xs:element name="CartItem" type="xs:integer" maxOccurs="1" minOccurs="0"/>
              <xs:element name="BOM" maxOccurs="1" minOccurs="0">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="BOMITEM" maxOccurs="unbounded" minOccurs="0">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element name="ITEMNUM" type="xs:string" minOccurs="0" maxOccurs="1" />
                          <xs:element name="CONDITIONID" type="xs:string" minOccurs="0" maxOccurs="1" />
                          <xs:element name="CHARTID" type="xs:string" minOccurs="0" maxOccurs="1" />
                          <xs:element name="CHARTNAME" type="xs:string" minOccurs="0" maxOccurs="1" />
                          <xs:element name="PARTTYPE" type="xs:string" minOccurs="0" maxOccurs="1" />
                          <xs:element name="PARTNAME" type="xs:string" minOccurs="0" maxOccurs="1" />
                          <xs:element name="PARTDESCRIPTION" type="xs:string" minOccurs="0" maxOccurs="1" />
                          <xs:element name="PARSEDPARTNAME" type="xs:string" minOccurs="0" maxOccurs="1" />
                          <xs:element name="PARSEDPARTDESCRIPTION" type="xs:string" minOccurs="0" maxOccurs="1" />
                          <xs:element name="QUANTITY" type="xs:string" minOccurs="0" maxOccurs="1" />
                          <xs:element name="PARSEDQUANTITY" type="xs:string" minOccurs="0" maxOccurs="1" />                                    
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                 </xs:complexType>
              </xs:element>
              <xs:element name="ATTRIBUTE" maxOccurs="unbounded" minOccurs="0">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="AttributeName" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="AttributeDisplayValue" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="AttributeValueCode" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="AttributeQuantity" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="AttributeCost" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="AttributePrice" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="AttributeDescription" type="xs:string" minOccurs="0" maxOccurs="1" />
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