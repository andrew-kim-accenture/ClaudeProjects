# Output XML Schema - UPDATE ROWS action | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/cffcd6badf17459482b21cc2df1c1bf2.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Set Cart Properties SOAP API
	
Set Cart Properties For Every Quote In Opportunity SOAP API
	
Set Cart Item Properties SOAP API
	
Create New Quote and Get Quote Data SOAP API
	
SOAP API Authentication
	
SOAP API Error Codes
	
Pricing API


	
DELETE PRICEBOOK
	
INSERT PRICEBOOK
	
UPDATE PRICEBOOK
	
Pricing Table Administration Details
	
Pricing Table Web Method - Input Parameters
	
Input XML Example for INSERTROWS action
	
Input XML Example for UPDATEROWS Action
	
Input XML Example for DELETEROWS Action
	
Input XML Example for EXPORTROWS action
	
Input XML Schema - DELETE ROWS action
	
Input XML Schema - EXPORT ROWS action
	
INPUT XML Schema - INSERT ROW Action
	
INPUT XML Schema - UPDATE ROW action
	
OUTPUT XML Example - UPDATE ROWS action
	
Output XML Schema - INSERT ROWS action
	
Output XML Schema - UPDATE ROWS action
	
Pricing Table Administration - Output Parameters
	
Upsert API Method for Pricebook
	
Upsert Pricebook With Distribution Chain
	
DoYouSeeMe API
	
XWS (EXTERNAL WEB SERVICE)
	
Invalid XML Characters
	
API Example
	
External Webservices
	
REST API
Output XML Schema - UPDATE ROWS action


<xs:schema attributeFormDefault=“unqualified” elementFormDefault=“qualified” targetNamespace=“http://webcominc.com/” xmlns:xs=“http://www.w3.org/2001/XMLSchema”>

<xs:element name="Result">
  <xs:complexType>
    <xs:sequence>
      <xs:element type="xs:string" name="Status"/>
      <xs:element type="xs:string" name="Message"/>
      <xs:element name="Root">
        <xs:complexType>
          <xs:sequence>
            <xs:element name="Columns">
              <xs:complexType>
                <xs:sequence>
                  <xs:element type="xs:string" name="Column" maxOccurs="unbounded" minOccurs="0"/>
                </xs:sequence>
              </xs:complexType>
            </xs:element>
            <xs:element name="Rows">
              <xs:complexType>
                <xs:sequence>
                  <xs:element name="Row">
                    <xs:complexType>
                      <xs:sequence>
                        <xs:element type="xs:string" name="Value" maxOccurs="unbounded" minOccurs="0"/>
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