# Request for Quotation - Input Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/5c0a9735e2de4739a366d598f9bbe4bc.html#input-xml-example
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


	
Input XML Schema - Request for Quotation
	
Output XML Schema - Request for Quotation
	
Request for Quotation - Input Parameters
	
Request for Quotation - Output Parameters
	
Result XML Examples - Request for Quotation
	
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
Request for Quotation - Input Parameters

Tag

	

Data Type

	

Description

	

Required

	

Comments




Username

	

String (50)

	

Only SAP CPQ admin users can execute this function. SAP CPQ user is defined in SAP CPQ admin.

	

Yes

	

SAP CPQ admin username




Password

	

String (50)

	

Only SAP CPQ admin users can execute this function. Password is defined in SAP CPQ admin.

	

Yes

	

SAP CPQ admin password for the admin username provided




Owner

	

String (50)

	

Quote owner.

	

No

	

If not provided, the previously defined username will be set as the owner.




Quote payload in XML format

	

XML

	

XML Object

	

Yes

	

XML structure is shown below

Data Definition for Request for Quotation Input XML

Field Name

	

Description

	

Type

	

Size




ExternalId

	

External quote ID

	

Text

	

100




PromotionsSummary

	

Summary details of all promotions given on the SAP Commerce side on quote and item level

	

Text

	

3000




PricingProcedureName

	

Name of the pricing procedure used on the SAP Commerce side to obtain price details for configurable products

	

Text

	

100




DistributionChain

	

Combination of sales organization and distribution channel

	

Text

	 


Currency

	

Currency of the specified market

	

Text

	

3




UserFullName

	

Name of the user; Applies to both cart and item level comments;

	

Text

	

250




UserEmail

	

Email address of the user; Applies to both cart and item level comments;

	

Text

	

250




UserCompany

	

Company the user belongs to; Applies to both cart and item level comments;

	

Text

	

250




Comment

	

Comment on cart and item level

	

Text

	

2000




CatalogueCode

	

Catalog code

	

Text

	

50




Quantity

	

Item quantity

	

Text

	

5




ConfigurationId

	

External configuration ID representing Variant Configuration of a specific configurable item

	

Text

	

100




ExternalCartItem

	

External quote item

	

Text

	

50




CustomerRoleType

	

1 for Bill to

	

Unsigned Byte

	 


ExternalId

	

Customer ID in SAP ERP

	

Text

	

20




FirstName

	

First name

	

Text

	

100




LastName

	

Last name

	

Text

	

100




Company

	

Company name

	

Text

	

100




Address1

	

The first address

	

Text

	

100




Address2

	

The second address

	

Text

	

100




City

	

City

	

Text

	

100




StateAbbrev

	

Two-letter state abbreviation

	

Text

	

2




ZipCode

	

ZIP code

	

Text

	

10




CountryAbbrev

	

Three-character country/region abbreviation

	

Text

	

3




TerritoryName

	

Territory name

	

Text

	

100




BusinessPhone

	

Phone number

	

Text

	

100




BusinessFax

	

Fax number

	

Text

	

100




EMail

	

Email address

	

Text

	

100




CRMAccountId

	

CRM account ID

	

Text

	

100




CRMContactId

	

CRM contact ID

	

Text

	

100




Cart ? PREVENT_EMPTY_QUOTE

	

Attribute that prevents an empty quote; The attribute is optional.

	

Text

	

100




Property/Name

	

Quote custom field (property) name

	

Text

	

50




Property/Value

	

Quote custom field (property) value

	

Text

	

100

Input XML Example


<Cart PREVENT_EMPTY_QUOTE="1">
    <ExternalId>000458</ExternalId>
    <PricingProcedureName>FX56R</PricingProcedureName>
    <PromotionsSummary>10% discount on all products</PromotionsSummary>
    <DistributionChain>USD_K3</DistributionChain>
    <Currency>USD</Currency>
    <CartComments>
        <CartComment>
            <UserFullName>Sandra Smith</UserFullName>
            <UserEmail>sandra_smith@zoho.com</UserEmail>
            <UserCompany>Acme</UserCompany>
            <Comment>Comment on the cart level</Comment>
        </CartComment>
    </CartComments>
    <Items>
        <Item>
            <ExternalCartItem>1</ExternalCartItem>
            <ConfigurationId>94fefea8-93ef-4408-ac65-c454a89be23b</ConfigurationId>
            <Quantity>3</Quantity>
            <CatalogueCode>P-crr-911</CatalogueCode>
            <ItemComments>
                <ItemComment>
                    <UserFullName>Sandra Smith</UserFullName>
                    <UserEmail>sandra_smith@zoho.com</UserEmail>
                    <UserCompany>Acme</UserCompany>
                    <Comment>Comment on the item level</Comment>
                </ItemComment>
            </ItemComments>
        </Item>
        <Item>
            <ExternalCartItem>2</ExternalCartItem>
            <ConfigurationId>94fefea8-93ef-4408-ac65-c454a89be23b</ConfigurationId>
            <Quantity>1</Quantity>
            <CatalogueCode>P-crr-911</CatalogueCode>
            <ItemComments>
                <ItemComment>
                    <UserFullName>Sandra Smith</UserFullName>
                    <UserEmail>sandra_smith@zoho.com</UserEmail>
                    <UserCompany>Acme</UserCompany>
                    <Comment>Comment on the item level</Comment>
                </ItemComment>
            </ItemComments>
        </Item>
    </Items>
</Cart>

On this page
Data Definition for Request for Quotation Input XML
Input XML Example
Yes
No