# Customer Administration-Input Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/48d56486d0a4498f861e3f43f7aee258.html#related-information
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
Customer Administration-Input Parameters

Tag

	

Data Type

	

Description

	

Required

	

Comments




Username

	

String (50)

	

Only SAP CPQ administrators can execute this function. SAP CPQ user is defined in SAP CPQ Setup.

	

Yes

	

SAP CPQ administrator user name




Password

	

String (50)

	

Only SAP CPQ administrators can execute this function. Password is defined in SAP CPQ Setup.

	

Yes

	

SAP CPQ administrator's password for the administrator user name provided in the username element




Action

	

String (50)

	

Action that will be executed for the customer

	

Yes

	

Examples: - ADDORUPDATE - DELETE




XML

	

XML

	

XML Object

	

Yes

	

XML structure is shown below

Data Definition for Customer Administration input XML

Field Name

	

Description

	

Sample Data

	

Type

	

Size




SearchFileld

	

The fields whose value will be used for search

	

The fields whose value will be used for search

	

Text

	

20




SearchCustomFilelds → CustomField

	

The custom fields whose value will be used for search

	

CustomCode

	

Text

	

50




Id

	

ID from SAP CPQ

	

12345

	

Text

	

20




ExternalId

	

External ID (not from SAP CPQ)

	

000001

	

Text

	

20




Active

	

Used to activate (deactivate) customers.

	

“0” or “1” or “False” or “True”

	

Text

	

5




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




CustomerType

	

Type of a customer

	

Bill To

	

Text

	

10




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




Province

	

Province

	

New South Wales

	

Text

	

100




StateAbbrev

	

State (2 chars)

	

TX

	

Text

	

2




ZipCode

	

ZipCode

	

ZipCode

	

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




OwnerID

	

UserID from SAP CPQ that Customer belongs to

	 	

Text

	

20




OwnerUserName

	

UserName from SAP CPQ that Customer belongs to

	 	

Text

	

20




CRMAccountId

	

CRM Contact ID

	 	

Text

	

100




CRMContactId

	

CRM Account ID

	 	

Text

	

100

Example for company properties XML


<Root>
  <SearchFields Priority ="1">
    <SearchField>CRMAccountId</SearchField>
    <SearchField>FirstName</SearchField>
    <SearchField>StateAbbrev</SearchField>
    <SearchCustomFields>
	<CustomField>
	   <Name>CustomCode</Name>
	</CustomField>
    </SearchCustomFields>
  </SearchFields>
  <Customers>
    <Customer>
      <Id>23</Id>
      <ExternalId></ExternalId>
      <Active>0</Active>
      <FirstName>Harry</FirstName>
      <LastName>Bruce</LastName>
      <CustomerType></CustomerType>
      <Company>Procter &amp; Gamble Company, The</Company>
      <Address1>Procter &amp; Gamble Plaza</Address1>
      <Address2></Address2>
      <City>Cincinnati</City>
      <Province></Province>
      <StateAbbrev>OH</StateAbbrev>
      <ZipCode>45402</ZipCode>
      <CountryAbbrev>US</CountryAbbrev>
      <TerritoryName></TerritoryName>
      <BusinessPhone>(513) 698-6421</BusinessPhone>
      <BusinessFax>(513) 983-4381</BusinessFax>
      <EMail></EMail>
      <OwnerID>234</OwnerID>
      <OwnerUserName>MitchB</OwnerUserName>
      <CRMAccountId>0036000000Kq8eU</CRMAccountId>
      <CRMContactId>0016000000F0qvQ</CRMContactId>
      <CustomFields>
	<CustomField>
	   <Name>CustomCode</Name>
	   <Value>AAA111</Value>
	</CustomField>
      </CustomFields>
    </Customer>
    <Customer>
      <Id>32</Id>
      <ExternalId></ExternalId>
      <FirstName>John</FirstName>
      <LastName>Steven</LastName>
      <CustomerType></CustomerType>
      <Company>Procter &amp; Gamble Company, The</Company>
      <Address1>Procter &amp; Gamble Plaza</Address1>
      <Address2></Address2>
      <City>Cincinnati</City>
      <Province></Province>
      <StateAbbrev>OH</StateAbbrev>
      <ZipCode>45402</ZipCode>
      <CountryAbbrev>US</CountryAbbrev>
      <TerritoryName></TerritoryName>
      <BusinessPhone>(513) 698-6421</BusinessPhone>
      <BusinessFax>(513) 983-4381</BusinessFax>
      <EMail></EMail>
      <OwnerID></OwnerID>
      <OwnerUserName>MitchB</OwnerUserName>
      <CRMAccountId></CRMAccountId>
      <CRMContactId></CRMContactId>
      <CustomFields>
	<CustomField>
	   <Name>CustomCode</Name>
	   <Value>BBB222</Value>
	</CustomField>
      </CustomFields>
    </Customer>
    <Customer>
      <Id>2223</Id>
      <ExternalId></ExternalId>
      <FirstName>Tomas</FirstName>
      <LastName>Johanson</LastName>
      <CustomerType></CustomerType>
      <Company>Procter &amp; Gamble Company, The</Company>
      <Address1>Procter &amp; Gamble Plaza</Address1>
      <Address2></Address2>
      <City>Cincinnati</City>
      <Province></Province>
      <StateAbbrev>OH</StateAbbrev>
      <ZipCode>45402</ZipCode>
      <CountryAbbrev>US</CountryAbbrev>
      <TerritoryName></TerritoryName>
      <BusinessPhone>(513) 698-6421</BusinessPhone>
      <BusinessFax>(513) 983-4381</BusinessFax>
      <EMail></EMail>
      <OwnerID></OwnerID>
      <OwnerUserName></OwnerUserName>
      <CRMAccountId>0036000000332fg</CRMAccountId>
      <CRMContactId>0016000000F3432</CRMContactId>
       <CustomFields>
	<CustomField>
	   <Name>CustomCode</Name>
	   <Value>CCC333</Value>
	</CustomField>
      </CustomFields>
    </Customer>
  </Customers>
</Root>
Related Information
SOAP API Authentication
On this page
Data Definition for Customer Administration input XML
Example for company properties XML
Related Information
Yes
No