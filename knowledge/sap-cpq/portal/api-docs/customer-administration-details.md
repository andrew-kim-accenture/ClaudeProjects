# Customer Administration Details | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/13d977f545e44969b2bfa22cde39eb03.html?locale=en-US&state=PRODUCTION&version=2603
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
Customer Administration Details

<SearchFields> - not required

(attribute) Priority =“1” -If set to 1, fields listed in SearchFields nodes while have priority over ID and externalID nodes during search. This is discussed later.

<SearchField>

<Customers>

<Customer>

<Id> - Not required*

<ExternalId> - Not required*

<Active> - Not required

This node is not required, but can be used to activate/deactivate customers. Deactivated customers can stay attached to quotes (old quotes), but they are not participating in search when a user wants to attach a customer to quote. (Shipping Info page, customer lookup and Ajax lookup actions). If this node is not present, the customer will stay active/inactive just the way it was. If adding new customers, and this node is not provided, it will default to “true” - so customers will be added as “active”.

<FirstName> - Not required*

<LastName> - Not required*

<Company> - Not required*

<CustomerType> - - Not required*

<Address1> - Not required*

<Address2> - Not required*

<City> - Not required*

<Province> - Not required*

<StateAbbrev> - Not required*

Two letter abbreviation for one of the States defined in SAP CPQ admin. If supplied value is not recognized as valid two letter state abbreviation the customer will not be created/updated and the result sent to the API caller will contain the reason for the action failure.

<ZipCode> - Not required*

<CountryAbbrev> - Not required*

Three letter country/region abbreviation for one of the Countries defined in SAP CPQ admin. If supplied value is not recognized as valid three letter country/region abbreviation the customer will not be created/updated and the result sent to the API caller will contain the reason for the action failure.

<TerritoryName> - Not required*

If supplied it should contain a name of a defined Territory in SAP CPQ admin. If the value is not recognized as valid Territory name the customer will not be created/updated and the

result sent to the API caller will contain the reason for the action failure.

<BusinessPhone> - Not required*

<BusinessFax> - Not required*

<Email> - Not required*

This field should contain valid email address. If the value is not valid email address the customer will not be created/updated and the result sent to the API caller will contain the reason for the action failure.

- <OwnerID> - Not required*

<OwnerUserName> - Not required*

<CRMAccountId> - Not required*

<CRMContactId> - Not required*

* What fields are required is administered in Customer Fields

Permission » Advanced Permissions for Bill To Role, Default Status and User Type of User whose UserName is provided in API call parameters. Note that, if you change permissions to be more restrictive, next time you want to update existing customers, you will need to provide the data that was not required previously, or the update will fail.

* Customer field name and label must be the same, but they can have more than one word;name:“cust field test”, label: “cust field test.”

Related Information
SOAP API Authentication
Yes
No