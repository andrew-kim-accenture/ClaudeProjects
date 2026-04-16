# Create New Quote and Get Quote Data - Input Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/8118676425c34801aa46255c6b1c2317.html#simple-xml-example
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


	
Create New Quote and Get Quote Data - Input Parameters
	
Create New Quote and Get Quote Data - Output Parameters
	
SOAP API Authentication
	
SOAP API Error Codes
	
Pricing API
	
DoYouSeeMe API
	
XWS (EXTERNAL WEB SERVICE)
	
Invalid XML Characters
	
API Example
	
External Webservices
	
REST API
Create New Quote and Get Quote Data - Input Parameters

API parameters username/password identifies the API user.

Owner API parameter defines username or the owner of a newly created quote.

Based on Product/ItemPrice XML the node system will calculate discounts and check for discounting rules on main items only – not on line items.

Tag	Data Type	Description	Required	Comments


username

	

String (50)

	

Valid username and valid tenant separated by # sign. (username#tenat)

	

Yes

	 


password

	

String (50)

	

Valid SAP CPQ password provided for the username provided in the username element

	

Yes

	 


owner

	

String (50)

	

Username of the quote owner

	

No

	

If not provided then the username will be the owner of the quote.




inputXml

	

String (8000)

	

Input XML object in a form of a string

	

Yes

	

XML needs to arrive HTML encoded. Otherwise bad request message would be returned




attributeNames

	

List of strings

	

Input XML object in a form of a string

	

Yes

	

If not provided then the quote will be created, but the error message will be displayed.

Data Definition for New Quote Input XML
Field Name	Description	Sample Data	Type	Size


MarketCode

	

Code of the Market

	

USD

	

Text

	

25




ShippingMethod

	

Name of the Shipping method

	

FedEx International Priority

	

Text

	

100




ShippingPrice

	

Price for the shipping method

	

125

	

Text

	

10




TaxExempt

	

Tax Exempt.

	

1

	

Boolean

	

3


 	

Possible values: True, False, 1, 0

	 	 	 


CartComment

	

Cart Comment

	 	

Text

	

1000




PromoCode

	

Promo code

	 	

Text

	

50




CRM/[ApplyMappings]

	

“1” for “Yes/True”

	

TRUE

	

Unsigned Byte

	 
 	

0 for “No/False” (Default if omitted)

	 	

Text

	 


CRM/OpportunityId

	

CRM Opportunity id

	

892ADE6756HIX

	

Text

	

50




CRM/OpportunityName

	

CRM Opportunity name

	

“TEST OPPORTUNITY”

	

Text

	

250




Items/Item

	

Item node

	 	

Text

	 


Quantity

	

Item Quantity

	

1

	

Text

	

5




CatalogueCode

	

Catalog Code

	

A2223B

	

Text

	

50




ProductName

	

Product Name

	

A screwdriver +, type 1

	

Text

	

255




ItemPrice

	

Price per one item

	

100

	

Text

	

10




Items/Item/Attributes/Attribute

	

Atrribute node

	 	

Text

	 


Name

	

Attribute name

	

SerialNumber

	

Text

	

50




Value

	

Attribute value

	

SN1234

	

Text

	

50




Property/Name

	

Cart custom field (property) name

	

Project Code

	

Text

	

50




Property/Value

	

Cart custom field (property)Value

	

555

	

Text

	

100




Customers/Customer

	

Customer node

	 	 	 


[CustomerRoleType]

	

1 for Bill to

2 for Ship to

3 for End user

	

1

	

Unsigned Byte

	 


Id

	

ID from SAP CPQ

	

12345

	

Text

	

20




ExternalId

	

External ID (not from SAP CPQ)

	

1

	

Text

	

20




FirstName

	

First Name

	

Harry

	

Text

	

100




LastName

	

Last Name

	

Bruce

	

Text

	

100




Company

	

Company Name

	

Webcom

	

Text

	

100




Address1

	

The first address

	

8601 RR 2222

	

Text

	

100




Address2

	

The second address

	

xxx

	

Text

	

100




City

	

City

	

Austin

	

Text

	

100




StateAbbrev

	

State (2 chars)

	

TX

	

Text

	

2




ZipCode

	

Zip Code

	

78730

	

Text

	

10




CountryAbbrev

	

Country/Region (3 chars)

	

USA

	

Text

	

3




TerritoryName

	

Territory Name

	

North America

	

Text

	

100




BusinessPhone

	

Phone Number

	 	

Text

	

100




BusinessFax

	

Fax Number

	 	

Text

	

100




EMail

	

Email address

	 	

Text

	

100




CRMAccountId

	

CRM Contact ID

	 	

Text

	

100




CRMContactId

	

CRM Account ID

	 	

Text

	

100




Cart → PREVENT_EMPTY_QUOTE

	

Attribute to prevent empty quote. This attribute is optional.

	 	

Text

	

100

Simple XML Example

(for complex XML take a look at the New Quote - Input Parameters)



<Cart> 
  <Items> 
    <Item> 
      <Quantity>1</Quantity> 
      <CatalogueCode>PartNumber</CatalogueCode> 
    </Item> 
  </Items> 
  <Properties> 
    <Property> 
      <Name>CustomFieldName</Name> 
      <Value>123456</Value> 
    </Property> 
  </Properties> 
</Cart>
On this page
Data Definition for New Quote Input XML
Simple XML Example
Yes
No