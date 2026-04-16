# New Quote - Input XML Example | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/1850997057b84a5cb2b5c7c581813e4c.html?locale=en-US&state=PRODUCTION&version=2603
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


	
New Quote - Input XML Example
	
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
New Quote - Input XML Example


<?xml version="1.0" encoding="utf-8"?>
<Cart PREVENT_EMPTY_QUOTE="1">
  <MarketCode>USD</MarketCode>
  <PricebookCode>USD_Default</PricebookCode>
  <ShippingMethod></ShippingMethod>
  <ShippingPrice>1</ShippingPrice>
  <TaxExempt>0</TaxExempt>
  <CartComment></CartComment>
  <PromoCode>A223344</PromoCode>
  <Crm ApplyMappings="1">
    <OpportunityId>892ADE6756HIX</OpportunityId>
    <OpportunityName>Test opportunity</OpportunityName>
  </Crm>
  <Items>
    <Item>
      <Quantity>1</Quantity>
      <ProductName>A screwdriver +, type 1</ProductName>
      <CatalogueCode>A2223B</CatalogueCode>
      <ItemPrice>100</ItemPrice>
      <Attributes>
        <Attribute>
          <Name>ExampleName</Name>
          <Value>100</Value>
          <Value>101</Value>
        </Attribute>
      </Attributes>
    </Item>
    <Item>
      <Quantity>2</Quantity>
      <ProductName>A screwdriver -, type 1</ProductName>
      <CatalogueCode>A4541V</CatalogueCode>
      <ItemPrice>120</ItemPrice>
      <Attributes>
        <Attribute>
          <Name>ExampleName</Name>
          <Value>100</Value>
        </Attribute>
        <Attribute>
          <Name>OtherExampleName</Name>
          <Value>161</Value>
        </Attribute>
      </Attributes>
    </Item>
  </Items>
  <Properties>
    <Property>
      <Name>GP Order Number</Name>
      <Value></Value>
    </Property>
    <Property>
      <Name>Project Code</Name>
      <Value></Value>
    </Property>
  </Properties>
  <Customers>
    <Customer CustomerRoleType="1">
      <Id></Id>
      <ExternalId></ExternalId>
      <FirstName>Harry</FirstName>
      <LastName>Bruce</LastName>
      <Company>Procter &amp; Gamble Company, The</Company>
      <Address1>Procter &amp; Gamble Plaza</Address1>
      <Address2></Address2>
      <City>Cincinnati</City>
      <StateAbbrev>OH</StateAbbrev>
      <ZipCode>45402</ZipCode>
      <CountryAbbrev>US</CountryAbbrev>
      <TerritoryName></TerritoryName>
      <BusinessPhone>(513) 698-6421</BusinessPhone>
      <BusinessFax>(513) 983-4381</BusinessFax>
      <EMail></EMail>
      <CRMAccountId>0036000000Kq8eU</CRMAccountId>
      <CRMContactId>0016000000F0qvQ</CRMContactId>
    </Customer>
    <Customer CustomerRoleType="2">
      <Id></Id>
      <ExternalId></ExternalId>
      <FirstName>Harry</FirstName>
      <LastName>Bruce</LastName>
      <Company>Procter &amp; Gamble Company, The</Company>
      <Address1>Procter &amp; Gamble Plaza</Address1>
      <Address2></Address2>
      <City>Cincinnati</City>
      <StateAbbrev>OH</StateAbbrev>
      <ZipCode>45402</ZipCode>
      <CountryAbbrev>US</CountryAbbrev>
      <TerritoryName></TerritoryName>
      <BusinessPhone>(513) 698-6421</BusinessPhone>
      <BusinessFax>(513) 983-4381</BusinessFax>
      <EMail></EMail>
      <CRMAccountId>0036000000Kq8eU</CRMAccountId>
      <CRMContactId>0016000000F0qvQ</CRMContactId>
    </Customer>
    <Customer CustomerRoleType="3">
      <Id></Id>
      <ExternalId></ExternalId>
      <FirstName>Harry</FirstName>
      <LastName>Bruce</LastName>
      <Company>Procter &amp; Gamble Company, The</Company>
      <Address1>Procter &amp; Gamble Plaza</Address1>
      <Address2></Address2>
      <City>Cincinnati</City>
      <StateAbbrev>OH</StateAbbrev>
      <ZipCode>45402</ZipCode>
      <CountryAbbrev>US</CountryAbbrev>
      <TerritoryName></TerritoryName>
      <BusinessPhone>(513) 698-6421</BusinessPhone>
      <BusinessFax>(513) 983-4381</BusinessFax>
      <EMail></EMail>
      <CRMAccountId>0036000000Kq8eU</CRMAccountId>
      <CRMContactId>0016000000F0qvQ</CRMContactId>
    </Customer>
  </Customers>
</Cart>

An example of XML containing parent-child configurations in quote is provided below. Consider the following scenario:

You want to send parent item with container and child item configuration via XML. There are attributes that are present both on parent and child items, and are set to transfer from parent to child via container column. Attribute is set to be propagated from parent to child and XML has that attribute stated only on parent product.

When quote is created, only parent product would have that attribute selected. But, if child product is edited, propagation would be done and attribute would be selected on child product as well. So, in order to have the desired configuration state in the quote, you should select all attributes via XML both on parent and child configurations.



<?xml version="1.0" encoding="utf-8"?>
<Cart>
  <MarketCode>USD</MarketCode>
  <Crm ApplyMappings="0">
    <OpportunityId>0006500243422</OpportunityId>
    <OpportunityName>Test opportunity</OpportunityName>
  </Crm>
  <Items>
    <Item>
      <Quantity>1</Quantity>
      <ProductName>Parent</ProductName>
      <ItemPrice>100.00</ItemPrice>
      <Attributes>
        <Attribute Quantity="2">
          <Name>AttrWithQuantity</Name>
          <Value>1</Value>
        </Attribute>
        <Attribute>
          <Name>Memory</Name>
          <Value>256</Value>
        </Attribute>
        <Attribute>
          <Name>Monitor</Name>
          <Value>F19</Value>
        </Attribute>
        <Attribute>
          <Name>Processor_name_of_att</Name>
          <Value>P2</Value>
        </Attribute>
        <Attribute>
          <Name>Warranty</Name>
          <Value>1&lt;2&lt;a href="#"&gt;'test"&lt; &gt;&lt;/a&gt;</Value>
        </Attribute>
        <Attribute>
          <Name>Hard disk</Name>
          <Value>60</Value>
        </Attribute>
        <Attribute>
          <Name>Nested-FirstAttribute</Name>
          <Rows>
            <Row>
              <Product>
                <Name>Nested-First</Name>
                <CatalogCode>PN-SMB10</CatalogCode>
                <Attributes>
                  <Attribute>
                    <Name>Memory</Name>
                    <Value>3GB DDR2</Value>
                  </Attribute>
                  <Attribute>
                    <Name>Processor_name_of_att</Name>
                    <Value></Value>
                  </Attribute>
                  <Attribute>
                    <Name>Monitor</Name>
                    <Value>T17</Value>
                  </Attribute>
                  <Attribute>
                    <Name>Hard disk</Name>
                    <Value>60</Value>
                  </Attribute>
                  <Attribute>
                    <Name>Warranty</Name>
                    <Value>123<a href="#">test</a></Value>
                  </Attribute>
                  <Attribute>
                    <Name>NonProductContainer</Name>
                    <Rows>
                      <Row>
                        <Columns>
                          <Column>
                            <Name>Test1</Name>
                            <Value>12312321</Value>
                          </Column>
                          <Column>
                            <Name>Test2</Name>
                            <Value>Intel Pentium 3.0GHz</Value>
                          </Column>
                        </Columns>
                      </Row>
                    </Rows>
                  </Attribute>
                  <Attribute>
                    <Name>ProductContainer</Name>
                    <Rows>
                      <Row>
                        <Product ExecuteRules="True">
                          <Name>Smb2 Simple Computer container+</Name>
                          <CatalogCode>PN-SMB10</CatalogCode>
                          <Attributes>
                            <Attribute>
                              <Name>Memory</Name>
                              <Value>256</Value>
                            </Attribute>
                            <Attribute>
                              <Name>Processor_name_of_att</Name>
                              <Value>A3</Value>
                            </Attribute>
                            <Attribute>
                              <Name>Monitor</Name>
                              <Value>T17</Value>
                            </Attribute>
                            <Attribute>
                              <Name>Hard disk</Name>
                              <Value>60</Value>
                            </Attribute>
                            <Attribute>
                              <Name>Warranty</Name>
                              <Value>1232131232323</Value>
                            </Attribute>
                          </Attributes>
                        </Product>
                        <Columns>
                          <Column>
                            <Name>Memory</Name>
                            <Value>60GB</Value>
                          </Column>
                          <Column>
                            <Name>Monitor</Name>
                            <Value>T17</Value>
                          </Column>
                          <Column>
                            <Name>Processor</Name>
                            <Value>A3</Value>
                          </Column>
                          <Column>
                            <Name>AttributeTest</Name>
                            <Value>aaa</Value>
                          </Column>
                        </Columns>
                      </Row>
                    </Rows>
                  </Attribute>
                </Attributes>
              </Product>
              <Columns>
                <Column>
                  <Name>ProductContainer</Name>
                  <Value></Value>
                </Column>
                <Column>
                  <Name>Monitor</Name>
                  <Value>T17</Value>
                </Column>
                <Column>
                  <Name>Hard disk</Name>
                  <Value>60GB</Value>
                </Column>
                <Column>
                  <Name>Processor</Name>
                  <Value></Value>
                </Column>
                <Column>
                  <Name>SomeAttribute</Name>
                  <Value>222</Value>
                </Column>
              </Columns>
            </Row>
            <Row>
              <Product>
                <Name>Nested-First</Name>
                <CatalogCode>PN-SMB10</CatalogCode>
                <Attributes>
 
                  <Attribute>
                    <Name>Memory</Name>
                    <Value>16GB</Value>
                  </Attribute>
                  <Attribute>
                    <Name>Warranty</Name>
                    <Value>dddd</Value>
                  </Attribute>
                </Attributes>
              </Product>
              <Columns>
                <Column>
                  <Name>SomeAttribute</Name>
                  <Value>222</Value>
                </Column>
                <Column>
                  <Name>doesNotExist</Name>
                  <Value>someValue</Value>
                </Column>
              </Columns>
            </Row>
          </Rows>
        </Attribute>
        <Attribute>
          <Name>NonProductContainer</Name>
          <Rows>
            <Row>
              <Columns>
                <Column>
                  <Name>Test1</Name>
                  <Value>bbbbb</Value>
                </Column>
                <Column>
                  <Name>Test2</Name>
                  <Value>C2</Value>
                </Column>
              </Columns>
            </Row>
            <Row>
              <Columns>
                <Column>
                  <Name>Test1</Name>
                  <Value>iiii</Value>
                </Column>
                <Column>
                  <Name>Test2</Name>
                  <Value>A3</Value>
                </Column>
              </Columns>
            </Row>
          </Rows>
        </Attribute>
      </Attributes>
    </Item>
  </Items>
  <Properties>
  </Properties>
  <Customers>
  </Customers>
</Cart>

Tips and Tricks

When users are using SOAP 1.2. for calls to our API they may get an “object null reference error.” This can happen because the SOAP 1.2. propagates the namespace from the SOAP envelope. To avoid this error for now, users should put an empty namespace in the root node. An example is provided in the following text.



<Cart xmlns="">
       <MarketCode>USD</MarketCode>
       <ShippingMethod>Standard Shipping</ShippingMethod>
       <Crm><OpportunityId>testing</OpportunityId></Crm>
       <Items>
         <Item>
            <Quantity>1</Quantity>
            <ProductName>A screwdriver +, type 1</ProductName>
            <CatalogueCode>000123456789</CatalogueCode>
         </Item>
       </Items>
     <Properties />
     <Customers />
  </Cart>
Yes
No