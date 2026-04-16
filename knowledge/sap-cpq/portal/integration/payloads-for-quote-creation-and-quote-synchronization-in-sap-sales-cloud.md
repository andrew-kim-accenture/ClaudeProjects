# Payloads for Quote Creation and Quote Synchronization in SAP Sales Cloud | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/dafc2afaef5249c9bd41ed82ab87127f.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions


	
System Requirements for SAP Integrations
	
Integrations with SAP Back-End Systems
	
SAP Sales Cloud Integration


	
SAP Sales Cloud Version 2 - SAP Sales Cloud Quote 2.0
	
SAP Sales Cloud - SAP CPQ Integration for Quote 2.0
	
SAP Sales Cloud - SAP CPQ Integration for Quote 1.0


	
General Prerequisites
	
Configuration
	
Ticket Components
	
User Journey from SAP Sales Cloud to SAP CPQ for Quote 1.0


	
Adding Items
	
Customers
	
Field Mapping
	
Updates and Status Change
	
Placing Order to ERP
	
Payloads for Quote Creation and Quote Synchronization in SAP Sales Cloud
	
SAP Commerce Cloud Integration
	
SAP Subscription Billing Integration for Quote 2.0
	
Integration with SAP Master Data Integration
	
Identity Provisioning Service Integration
	
CX AI Integration
	
Integration with Central Entry Point
	
Subscription to Events
	
Federated Single Sign-On
	
External Configurator Integration for Quote 2.0
	
AdobeSign Integration
	
Icertis Contract Intelligence Integration
	
DocuSign Integration
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
Payloads for Quote Creation and Quote Synchronization in SAP Sales Cloud

This section contains two XSD schemas, one with the payload used for quote creation in SAP CPQ, and the other with the payload used for synchronization with the SAP Sales Cloud sales quote.

GetSalesQuoteDetails Payload


<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="SalesQuoteDetails">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="Header">
          <xs:complexType>
            <xs:sequence>
              <xs:element type="xs:string" name="QuoteId" minOccurs="1" maxOccurs="1"/>
              <xs:element type="xs:string" name="QuoteName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="DistributionChain" minOccurs="1" maxOccurs="1"/>
              <xs:element type="xs:string" name="Currency" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="PricingDate" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="EffectiveDate" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="RequestedDate" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="DocumentTypeCode" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="DocumentTypeValue" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Comment" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="IsPrimary" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="OpportunityId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="OpportunityName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="OriginQuoteId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element name="CustomFields" minOccurs="0" maxOccurs="1" nillable="true">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="CustomField" maxOccurs="unbounded" minOccurs="0">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element type="xs:string" name="Name" minOccurs="1" maxOccurs="1"/>
                          <xs:element type="xs:string" name="Value" minOccurs="1" maxOccurs="1" nillable="true"/>
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="Items" minOccurs="0" maxOccurs="1" nillable="true">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Item" maxOccurs="unbounded" minOccurs="0">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element type="xs:string" name="ItemId" minOccurs="1" maxOccurs="1"/>
                    <xs:element type="xs:string" name="Quantity" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ProductSystemId" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="UnitOfMeasureCode" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="Comment" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element name="CustomFields" minOccurs="0" maxOccurs="1" nillable="true">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element name="CustomField" maxOccurs="unbounded" minOccurs="0">
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element type="xs:string" name="Name" minOccurs="1" maxOccurs="1"/>
                                <xs:element type="xs:string" name="Value" minOccurs="1" maxOccurs="1" nillable="true"/>
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
        <xs:element name="BillTo" minOccurs="0" maxOccurs="1" nillable="true">
          <xs:complexType>
            <xs:sequence>
              <xs:element type="xs:string" name="FirstName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="LastName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Title" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CompanyName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="AddressLine1" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="AddressLine2" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="City" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Province" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="State" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Country" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Territory" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="ZipCode" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="PrimaryIndustry" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="TerritoryName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Phone" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Fax" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Email" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CustomerCode" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CrmAccountId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CrmContactId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element name="CustomFields" minOccurs="0" maxOccurs="1" nillable="true">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="CustomField" maxOccurs="unbounded" minOccurs="0">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element type="xs:string" name="Name" minOccurs="1" maxOccurs="1"/>
                          <xs:element type="xs:string" name="Value" minOccurs="1" maxOccurs="1" nillable="true"/>
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>/
        <xs:element name="ShipTo" minOccurs="0" maxOccurs="1" nillable="true">
          <xs:complexType>
            <xs:sequence>
              <xs:element type="xs:string" name="FirstName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="LastName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Title" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CompanyName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="AddressLine1" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="AddressLine2" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="City" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Province" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="State" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Country" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Territory" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="ZipCode" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="PrimaryIndustry" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="TerritoryName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Phone" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Fax" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Email" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CustomerCode" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CrmAccountId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CrmContactId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element name="CustomFields" minOccurs="0" maxOccurs="1" nillable="true">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="CustomField" maxOccurs="unbounded" minOccurs="0">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element type="xs:string" name="Name" minOccurs="1" maxOccurs="1"/>
                          <xs:element type="xs:string" name="Value" minOccurs="1" maxOccurs="1" nillable="true"/>
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="EndTo" minOccurs="0" maxOccurs="1" nillable="true">
          <xs:complexType>
            <xs:sequence>
              <xs:element type="xs:string" name="FirstName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="LastName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Title" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CompanyName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="AddressLine1" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="AddressLine2" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="City" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Province" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="State" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Country" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Territory" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="ZipCode" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="PrimaryIndustry" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="TerritoryName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Phone" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Fax" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Email" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CustomerCode" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CrmAccountId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CrmContactId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element name="CustomFields" minOccurs="0" maxOccurs="1" nillable="true">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="CustomField" maxOccurs="unbounded" minOccurs="0">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element type="xs:string" name="Name" minOccurs="1" maxOccurs="1"/>
                          <xs:element type="xs:string" name="Value" minOccurs="1" maxOccurs="1" nillable="true"/>
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
UpdateSalesQuote Payload


<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="Quote">
    <xs:complexType>
      <xs:sequence>
        <xs:element type="xs:string" name="CompositeNumber" minOccurs="1" maxOccurs="1"/>
        <xs:element type="xs:string" name="DateClosed" minOccurs="0" maxOccurs="1" nillable="true"/>
        <xs:element type="xs:string" name="DateCreated" minOccurs="0" maxOccurs="1" nillable="true"/>
        <xs:element type="xs:string" name="DateModified" minOccurs="1" maxOccurs="1"/>
        <xs:element type="xs:string" name="DateOrdered" minOccurs="0" maxOccurs="1" nillable="true"/>
        <xs:element type="xs:string" name="EffectiveDate" minOccurs="1" maxOccurs="1"/>
        <xs:element type="xs:string" name="MarketFactor" minOccurs="0" maxOccurs="1" nillable="true"/>
        <xs:element type="xs:string" name="QuoteId" minOccurs="1" maxOccurs="1"/>
        <xs:element type="xs:string" name="QuoteExternalId" minOccurs="0" maxOccurs="1" nillable="true"/>
        <xs:element type="xs:string" name="IsPrimary" minOccurs="0" maxOccurs="1" nillable="true"/>
        <xs:element type="xs:string" name="OpportunityId" minOccurs="0" maxOccurs="1" nillable="true"/>
        <xs:element type="xs:string" name="AccountId" minOccurs="0" maxOccurs="1" nillable="true"/>
        <xs:element type="xs:string" name="ExternalId" minOccurs="0" maxOccurs="1" nillable="true"/>
        <xs:element type="xs:string" name="OrderId" minOccurs="0" maxOccurs="1" nillable="true"/>
        <xs:element type="xs:string" name="PricingProcedureName" minOccurs="0" maxOccurs="1" nillable="true"/>
        <xs:element type="xs:string" name="CountryISOCode" minOccurs="0" maxOccurs="1" nillable="true"/>
        <xs:element type="xs:string" name="DocumentTypeCode" minOccurs="0" maxOccurs="1" nillable="true"/>
        <xs:element type="xs:string" name="RevisionNumber" minOccurs="0" maxOccurs="1" nillable="true"/>
        <xs:element type="xs:string" name="UserId" minOccurs="0" maxOccurs="1" nillable="true"/>
        <xs:element type="xs:string" name="UserEmail" minOccurs="0" maxOccurs="1" nillable="true"/>
        <xs:element type="xs:string" name="Comment" minOccurs="0" maxOccurs="1" nillable="true"/>
        <xs:element name="CartComments" minOccurs="0" maxOccurs="1" nillable="true">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="CartComment" maxOccurs="unbounded" minOccurs="0">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element type="xs:string" name="UserFullName" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="UserEmail" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="UserCompany" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="Comment" minOccurs="0" maxOccurs="1" nillable="true"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="SalesArea" minOccurs="0" maxOccurs="1" nillable="true">
          <xs:complexType>
            <xs:sequence>
              <xs:element type="xs:string" name="SalesOrganization" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="DistributionChannel" minOccurs="1" maxOccurs="1"/>
              <xs:element type="xs:string" name="Division" minOccurs="0" maxOccurs="1" nillable="true"/>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="OrderStatus" minOccurs="0" maxOccurs="1" nillable="true">
          <xs:complexType>
            <xs:sequence>
              <xs:element type="xs:string" name="Id" minOccurs="1" maxOccurs="1"/>
              <xs:element type="xs:string" name="Name" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="NameTranslated" minOccurs="0" maxOccurs="1" nillable="true"/>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="SelectedMarket" minOccurs="1" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element type="xs:string" name="CurrencyCode" minOccurs="1" maxOccurs="1"/>
              <xs:element type="xs:string" name="CurrencyDescription" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CurrencyRate" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CurrencySign" minOccurs="1" maxOccurs="1"/>
              <xs:element type="xs:string" name="ForwardCurrencyRate" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="MarketCode" minOccurs="1" maxOccurs="1"/>
              <xs:element type="xs:string" name="MarketFactor" minOccurs="1" maxOccurs="1"/>
              <xs:element type="xs:string" name="MarketName" minOccurs="1" maxOccurs="1"/>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="CustomFields">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="CustomField" maxOccurs="unbounded" minOccurs="0">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element type="xs:string" name="Content" minOccurs="1" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="Id" minOccurs="1" maxOccurs="1"/>
                    <xs:element type="xs:string" name="Name" minOccurs="1" maxOccurs="1"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>

        <xs:element name="BillToCustomer" minOccurs="0" maxOccurs="1" nillable="true">
          <xs:complexType>
            <xs:sequence>
              <xs:element type="xs:string" name="QuoteId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Active" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="FirstName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="LastName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="OwnerName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Title" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CompanyName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Address1" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Address2" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="City" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Province" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="StateAbbreviation" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CountryAbbreviation" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="ZipCode" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="PrimaryIndustry" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="TerritoryName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="BusinessPhone" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="BusinessFax" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Email" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CustomerCode" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CustomerType" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CrmAccountId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CrmContactId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="UserId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="ExternalId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element name="CustomFields" minOccurs="0" maxOccurs="1" nillable="true">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="CustomField" maxOccurs="unbounded" minOccurs="0">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element type="xs:string" name="Content" minOccurs="1" maxOccurs="1" nillable="true"/>
                          <xs:element type="xs:string" name="Id" minOccurs="1" maxOccurs="1"/>
                          <xs:element type="xs:string" name="Name" minOccurs="1" maxOccurs="1"/>
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="ShipToCustomer" minOccurs="0" maxOccurs="1" nillable="true">
          <xs:complexType>
            <xs:sequence>
              <xs:element type="xs:string" name="QuoteId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Active" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="FirstName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="LastName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="OwnerName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Title" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CompanyName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Address1" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Address2" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="City" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Province" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="StateAbbreviation" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CountryAbbreviation" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="ZipCode" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="PrimaryIndustry" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="TerritoryName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="BusinessPhone" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="BusinessFax" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Email" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CustomerCode" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CustomerType" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CrmAccountId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CrmContactId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="UserId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="ExternalId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element name="CustomFields" minOccurs="0" maxOccurs="1" nillable="true">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="CustomField" maxOccurs="unbounded" minOccurs="0">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element type="xs:string" name="Content" minOccurs="1" maxOccurs="1" nillable="true"/>
                          <xs:element type="xs:string" name="Id" minOccurs="1" maxOccurs="1"/>
                          <xs:element type="xs:string" name="Name" minOccurs="1" maxOccurs="1"/>
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="EndUserCustomer" minOccurs="0" maxOccurs="1" nillable="true">
          <xs:complexType>
            <xs:sequence>
              <xs:element type="xs:string" name="QuoteId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Active" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="FirstName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="LastName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="OwnerName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Title" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CompanyName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Address1" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Address2" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="City" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Province" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="StateAbbreviation" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CountryAbbreviation" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="ZipCode" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="PrimaryIndustry" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="TerritoryName" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="BusinessPhone" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="BusinessFax" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="Email" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CustomerCode" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CustomerType" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CrmAccountId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="CrmContactId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="UserId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="ExternalId" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element name="CustomFields" minOccurs="0" maxOccurs="1" nillable="true">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="CustomField" maxOccurs="unbounded" minOccurs="0">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element type="xs:string" name="Content" minOccurs="1" maxOccurs="1" nillable="true"/>
                          <xs:element type="xs:string" name="Id" minOccurs="1" maxOccurs="1"/>
                          <xs:element type="xs:string" name="Name" minOccurs="1" maxOccurs="1"/>
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>

        <xs:element name="Items">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Item" maxOccurs="unbounded" minOccurs="0">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element type="xs:string" name="DefaultMrcMultiplier" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="DefaultMultiplier" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="MaxMrcMultiplier" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="MaxMultiplier" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="MinMrcMultiplier" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="MinMultiplier" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="MRCMultiplier" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="Multiplier" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ParentRolledUpQuoteItem" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="PromoDiscountAmount" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="PromoDiscountPercent" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ChannelCommissionPercent" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ChannelMarginPercent" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ChannelMarkupPercent" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="MRCChannelMarginPercent" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="MRCChannelMarkupPercent" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ParentItemGuid" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ProductVersion" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="QuoteItemGuid" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="UserCommissionPercent" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="Inventory" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="BaseQuantity" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="UniversalProductCode" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ManufacturerPartNumber" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="LeadTime" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="FamilyCode" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="Weight" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ExternalId" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ExternalCartItem" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="UnitOfMeasure" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ConfigurationId" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="CpsItemId" minOccurs="0" maxOccurs="1" nillable="true"/>

                    <xs:element type="xs:string" name="ParentItemId" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ItemId" minOccurs="1" maxOccurs="1"/>
                    <xs:element type="xs:string" name="RolledUpQuoteItem" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="DateAdded" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="DefaultDiscountPercent" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="DefaultMrcDiscountPercent" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="Description" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="DescriptionLong" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="IsLineItem" minOccurs="1" maxOccurs="1"/>
                    <xs:element type="xs:string" name="IsMainItem" minOccurs="1" maxOccurs="1"/>
                    <xs:element type="xs:string" name="IsOptional" minOccurs="1" maxOccurs="1"/>
                    <xs:element type="xs:string" name="IsVariant" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="IsAlternative" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ItemType" minOccurs="1" maxOccurs="1"/>
                    <xs:element type="xs:string" name="MarginPercent" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="MaxDiscountPercent" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="MaxMrcDiscountPercent" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="MinDiscountPercent" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="MinMrcDiscountPercent" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="MRCMarginPercent" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ParentItem" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="PartNumber" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ProductSystemId" minOccurs="1" maxOccurs="1"/>
                    <xs:element type="xs:string" name="ProductId" minOccurs="1" maxOccurs="1"/>
                    <xs:element type="xs:string" name="ProductName" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ProductNameTranslated" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ProductTypeId" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ProductTypeName" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="ProductTypeNameTranslated" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="Quantity" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="Rank" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="Comment" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element name="CustomFields" minOccurs="0" maxOccurs="1" nillable="true">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element name="CustomField" maxOccurs="unbounded" minOccurs="0">
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element type="xs:string" name="Content" minOccurs="1" maxOccurs="1" nillable="true"/>
                                <xs:element type="xs:string" name="Name" minOccurs="1" maxOccurs="1"/>
                              </xs:sequence>
                            </xs:complexType>
                          </xs:element>
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                    <xs:element name="PriceComponent" maxOccurs="unbounded" minOccurs="0">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element type="xs:string" name="TypeCode" minOccurs="1" maxOccurs="1"/>
                          <xs:element type="xs:string" name="Description" minOccurs="0" maxOccurs="1" nillable="true"/>
                          <xs:element type="xs:string" name="DecimalValue" minOccurs="1" maxOccurs="1"/>
                          <xs:element type="xs:string" name="Currency" minOccurs="1" maxOccurs="1"/>
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                    <xs:element name="ItemComments">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element name="ItemComment" maxOccurs="unbounded" minOccurs="0">
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element type="xs:string" name="UserFullName" minOccurs="0" maxOccurs="1" nillable="true"/>
                                <xs:element type="xs:string" name="UserEmail" minOccurs="0" maxOccurs="1" nillable="true"/>
                                <xs:element type="xs:string" name="UserCompany" minOccurs="0" maxOccurs="1" nillable="true"/>
                                <xs:element type="xs:string" name="Comment" minOccurs="0" maxOccurs="1" nillable="true"/>
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
        <xs:element name="PriceComponent" maxOccurs="unbounded" minOccurs="0">
          <xs:complexType>
            <xs:sequence>
              <xs:element type="xs:string" name="TypeCode" minOccurs="1" maxOccurs="1"/>
              <xs:element type="xs:string" name="Description" minOccurs="0" maxOccurs="1" nillable="true"/>
              <xs:element type="xs:string" name="DecimalValue" minOccurs="1" maxOccurs="1"/>
              <xs:element type="xs:string" name="Currency" minOccurs="1" maxOccurs="1"/>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="AdditionalDiscounts" minOccurs="0" maxOccurs="1" nillable="true">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="AdditionalDiscount" maxOccurs="unbounded" minOccurs="0">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element type="xs:string" name="Id" minOccurs="1" maxOccurs="1"/>
                    <xs:element type="xs:string" name="Description" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="DiscountAmount" minOccurs="0" maxOccurs="1" nillable="true"/>
                    <xs:element type="xs:string" name="DiscountPercent" minOccurs="0" maxOccurs="1" nillable="true"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element type="xs:string" name="TotalNetPrice" minOccurs="1" maxOccurs="1"/>
        <xs:element type="xs:string" name="TotalShippingCost" minOccurs="1" maxOccurs="1"/>
        <xs:element type="xs:string" name="TotalAmount" minOccurs="1" maxOccurs="1"/>
        <xs:element name="QuoteTables" minOccurs="0" maxOccurs="1" nillable="true">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="QuoteTable"  minOccurs="0" maxOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element type="xs:string" name="QuoteTableName"  minOccurs="1" maxOccurs="1"/>
                    <xs:element type="xs:string" name="Rows"  minOccurs="1" maxOccurs="1" nillable="true"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="Messages" maxOccurs="unbounded" minOccurs="0">
          <xs:complexType>
            <xs:sequence>
              <xs:element type="xs:string" name="message" minOccurs="1" maxOccurs="1" nillable="true"/>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="Custom" maxOccurs="unbounded" minOccurs="0">
          <xs:complexType>
              <xs:element type="xs:string" name="message" minOccurs="1" maxOccurs="1" nillable="true"/>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>

Related Information
Specific SAP CPQ Prerequisites
Field Mapping
On this page
GetSalesQuoteDetails Payload
UpdateSalesQuote Payload
Related Information
Yes
No