# Input XML Schema | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/aa2686d3f9f2436284dcab9827410abc.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ API DocumentationVersion: 2603English
Provide feedback on our search

	
SAP CPQ API
	
SOAP API


	
Simple Product Administration SOAP API


	
Input and Output Parameters
	
Input XML Example
	
Input XML Schema
	
Output XML Example
	
Output XML Schema
	
PRODUCT ADMINISTRATION - Input XML Examples
	
PRODUCT ADMINISTRATION WEB METHOD
	
Sorting and Ranking Attributes
	
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
	
DoYouSeeMe API
	
XWS (EXTERNAL WEB SERVICE)
	
Invalid XML Characters
	
API Example
	
External Webservices
	
REST API
Input XML Schema

You can test your XML against XML schema here : http://www.utilities-online.info/xsdvalidation.



<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="Products">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="Product">
          <xs:complexType>
            <xs:sequence>
              <xs:element type="xs:string" name="CPQProductID"/>
              <xs:element type="xs:string" name="Identificator" maxOccurs="unbounded" minOccurs="0"/>
              <xs:element type="xs:boolean" name="Active"/>
              <xs:element name="Categories">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element type="xs:string" name="USEnglish"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element name="ProductName">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element type="xs:string" name="USEnglish"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element type="xs:string" name="UnitOfMeasure"/>
              <xs:element name="Description">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element type="xs:string" name="USEnglish"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element name="CartDescription">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element type="xs:string" name="USEnglish"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element type="xs:string" name="PartNumber"/>
              <xs:element type="xs:string" name="ProductSystemId"/>
              <xs:element type="xs:string" name="ProductType"/>
              <xs:element type="xs:string" name="DisplayType"/>
              <xs:element type="xs:string" name="PriceFormula"/>
              <xs:element type="xs:string" name="CostFormula"/>
              <xs:element type="xs:float" name="Price"/>
              <xs:element type="xs:string" name="Image"/>
              <xs:element type="xs:string" name="Weight"/>
              <xs:element type="xs:date" name="StartDate"/>
              <xs:element type="xs:date" name="EndDate"/>
              <xs:element type="xs:string" name="Permissions"/>
              <xs:element name="Obsolete">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element type="xs:string" name="Status"/>
                    <xs:element type="xs:string" name="ProductSysId"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element type="xs:string" name="PricingMechanism"/>
              <xs:element type="xs:string" name="PricingCode"/>
              <xs:element type="xs:string" name="UPC"/>
              <xs:element type="xs:string" name="MPN"/>
              <xs:element name="ShippingCosts">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element type="xs:string" name="CustomShipping"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element type="xs:string" name="ProductFamilyCode"/>
              <xs:element type="xs:string" name="RecurringPriceFormula"/>
              <xs:element type="xs:string" name="RecurringCostFormula"/>
              <xs:element type="xs:string" name="BaseRecurringPrice"/>
              <xs:element type="xs:string" name="Inventory"/>
              <xs:element type="xs:string" name="LeadTime"/>
              <xs:element type="xs:string" name="ProductVersion"/>
              <xs:element type="xs:string" name="ExternalId"/>
              <xs:element type="xs:byte" name="UserCanEnterQuantity"/>
              <xs:element type="xs:string" name="LongDescription"/>
              <xs:element type="xs:string" name="RDResponderTemplate"/>
              <xs:element name="ResponderAttributes">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Attribute" maxOccurs="unbounded" minOccurs="0">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element type="xs:string" name="Name"/>
                          <xs:element type="xs:int" name="Rank"/>
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element name="ResponderLineItems">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Attribute">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element type="xs:string" name="Name"/>
                          <xs:element type="xs:int" name="Rank"/>
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element name="Tabs">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Tab" maxOccurs="unbounded" minOccurs="0">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element type="xs:string" name="SystemId"/>
                          <xs:element type="xs:string" name="Name"/>
                          <xs:element type="xs:int" name="Rank"/>
                          <xs:element type="xs:string" name="LayoutTemplate"/>
                          <xs:element type="xs:string" name="RDTemplate"/>
                          <xs:element type="xs:string" name="VisibilityPermission"/>
                          <xs:element type="xs:string" name="VisibilityCondition"/>
                          <xs:element type="xs:byte" name="ShowTabHeader"/>
                          <xs:element name="Attributes">
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element name="Attribute" maxOccurs="unbounded" minOccurs="0">
                                  <xs:complexType>
                                    <xs:sequence>
                                      <xs:element type="xs:string" name="Name"/>
                                      <xs:element type="xs:int" name="Rank"/>
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
              <xs:element name="GlobalScripts">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Script" maxOccurs="unbounded" minOccurs="0">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element type="xs:string" name="Name"/>
                          <xs:element type="xs:int" name="Rank"/>
                          <xs:element name="Events">
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element type="xs:string" name="Event" maxOccurs="unbounded" minOccurs="0"/>
                              </xs:sequence>
                            </xs:complexType>
                          </xs:element>
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element name="Attributes">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Attribute" maxOccurs="unbounded" minOccurs="0">
                      <xs:complexType>
                        <xs:choice maxOccurs="unbounded" minOccurs="0">
                          <xs:element name="AttributeName">
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element type="xs:string" name="USEnglish"/>
                              </xs:sequence>
                            </xs:complexType>
                          </xs:element>
                          <xs:element name="Triggers">
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element name="Trigger" maxOccurs="unbounded" minOccurs="0">
                                  <xs:complexType>
                                    <xs:sequence>
                                      <xs:element type="xs:string" name="Type"/>
                                      <xs:element type="xs:byte" name="Engine"/>
                                      <xs:element type="xs:string" name="Formula"/>
                                    </xs:sequence>
                                  </xs:complexType>
                                </xs:element>
                              </xs:sequence>
                            </xs:complexType>
                          </xs:element>
                          <xs:element type="xs:string" name="ScriptOnRowAdded"/>
                          <xs:element type="xs:string" name="ScriptOnRowCopied"/>
                          <xs:element type="xs:string" name="ScriptOnRowDeleted"/>
                          <xs:element type="xs:string" name="ScriptOnCellEdited"/>
                          <xs:element type="xs:byte" name="InheritQuantity"/>
                          <xs:element type="xs:string" name="UnitOfMeasurement"/>
                          <xs:element type="xs:string" name="AttributeType"/>
                          <xs:element type="xs:string" name="DisplayType"/>
                          <xs:element type="xs:byte" name="IsRequired"/>
                          <xs:element type="xs:byte" name="IsLineItem"/>
                          <xs:element type="xs:byte" name="IsFirstValuePreselected"/>
                          <xs:element type="xs:string" name="ExternalId"/>
                          <xs:element type="xs:date" name="StartDate"/>
                          <xs:element type="xs:date" name="EndDate"/>
                          <xs:element type="xs:int" name="RankWithinCart"/>
                          <xs:element type="xs:string" name="AttributeSystemId"/>
                          <xs:element type="xs:byte" name="SpansAcrossEntireRow"/>
                          <xs:element type="xs:byte" name="ShowOneTimePrice"/>
                          <xs:element type="xs:byte" name="ShowRecurringPrice"/>
                          <xs:element type="xs:string" name="ButtonText"/>
                          <xs:element type="xs:string" name="AttachScriptButton"/>
                          <xs:element name="ButtonScripts">
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element name="ButtonScript" maxOccurs="unbounded" minOccurs="0">
                                  <xs:complexType>
                                    <xs:sequence>
                                      <xs:element type="xs:string" name="Name"/>
                                      <xs:element type="xs:int" name="Rank"/>
                                    </xs:sequence>
                                  </xs:complexType>
                                </xs:element>
                              </xs:sequence>
                            </xs:complexType>
                          </xs:element>
                          <xs:element type="xs:string" name="LineItemDescription"/>
                          <xs:element type="xs:string" name="Label"/>
                          <xs:element type="xs:string" name="Hint"/>
                          <xs:element name="Values">
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element name="Value" maxOccurs="unbounded" minOccurs="0">
                                  <xs:complexType>
                                    <xs:sequence>
                                      <xs:element type="xs:string" name="USEnglish"/>
                                      <xs:element type="xs:string" name="ValueCode"/>
                                      <xs:element type="xs:byte" name="UsePricebook"/>
                                      <xs:element type="xs:string" name="CatalogCode"/>
                                      <xs:element type="xs:string" name="Price"/>
                                      <xs:element type="xs:string" name="AttributeValueSystemId"/>
                                      <xs:element type="xs:int" name="Rank"/>
                                      <xs:element type="xs:byte" name="Selected"/>
                                      <xs:element type="xs:byte" name="Preselected" minOccurs="0"/>
                                      <xs:element type="xs:byte" name="Sort"/>
                                      <xs:element type="xs:string" name="RefProduct"/>
                                    </xs:sequence>
                                  </xs:complexType>
                                </xs:element>
                              </xs:sequence>
                            </xs:complexType>
                          </xs:element>
                        </xs:choice>
                        <xs:attribute type="xs:boolean" name="UpdateOnlyListedValues" use="optional"/>
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                  <xs:attribute type="xs:boolean" name="UpdateOnlyListedAttributes"/>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
            <xs:attribute type="xs:boolean" name="SkipCategoriesOnProductUpdate"/>
            <xs:attribute type="xs:boolean" name="SkipPermissionsOnProductUpdate"/>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>

Related Information
SOAP API Authentication
Yes
No