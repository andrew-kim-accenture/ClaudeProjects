# New Quote - Input Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/18887bb5a9414234ab04ee092c3a7ebe.html?locale=en-US&state=PRODUCTION&version=2603
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
New Quote - Input Parameters
Tag	Data Type	Description	Required	Comments


Username

	

String (50)

	

Only SAP CPQ administrators can execute this function. SAP CPQ user is defined in SAP CPQ Setup.

	

Yes

	

SAP CPQ administrator username.




Password

	

String (50)

	

Only SAP CPQ administrators can execute this function. Password is defined in SAP CPQ Setup.

	

Yes

	

SAP CPQ administrator password for the administrator username provided in the username element.




Owner

	

String (50)

	

Username of the quote owner.

	

Yes

	

If not provided, username will be the owner of the quote.




XML

	

XML

	

XML Object

	

Yes

	

XML structure is shown below.

Data Definition for New Quote Input XML
Field Name	Description	Simple Data	Type	Size


MarketCode

	

Code of the market

	

USD

	

Text

	

25




PricebookCode

	

Code of the pricebook

	

USD Default

	

Text

	

100




ShippingMethod

	

Name of the shipping method

	

FedEx International Priority

	

Text

	

100




ShippingPrice

	

Price for the shipping method

	

125

	

Text

	

10




TaxExempt

	

Tax exempt

	

1

	

Boolean

	

3


 	

Possible values: True, False, 1, 0

	 	

Text

	

1000




CartComment

	

Cart comment

	 	

Text

	

50




PromoCode

	

Promo code

	

TRUE

	

Unsigned Byte

	 


CRM/[ApplyMappings]

	

“1” for “Yes/True”

	 	 	 
 	

0 for “No/False” (Default if omitted)

	 	 	 


Items/Item

	

Item node

	 	 	 


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

	

the Net Price of an item

	

100

	

Text

	

10




Items/Item/Attributes/Attribute

	

Atrribute node

	 	 	 


Name

	

Attribute name

	

SerialNumber

	

Text

	

50




Value

	

Attribute value, if the attribute type is on the following list. For other display types, use value code instead.

DisplayOnlyText

FreeFormMatchLower

FreeFormMatchUpper

HiddenCalculatedMatchUpper

HiddenCalculatedMatchLower

FreeInputNoMatching

HiddenCalculatedNoMatching

ConfigControl

FreeFormSetMatchLower

FreeFormSetMatchUpper

FreeFormExactMatch

FreeFormExactMatchWOtherwiseOption

AutoCompleteCustomTable

AutoCompleteQuoteTable

Button

FileAttachment

	

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

	

SAP

	

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

Yes
No