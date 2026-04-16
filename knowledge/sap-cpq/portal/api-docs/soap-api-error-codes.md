# SOAP API Error Codes | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/17747deaf51b460abf78577f785085dc.html?locale=en-US&state=PRODUCTION&version=2603
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
	
DoYouSeeMe API
	
XWS (EXTERNAL WEB SERVICE)
	
Invalid XML Characters
	
API Example
	
External Webservices
	
REST API
SOAP API Error Codes

Error Code - General API

	

Error Message




100000

	

Unexpected exception




101001

	

Invalid login username/password supplied

Error Code - New Quote API

	

Error Message




100011

	

Invalid customer role supplied. Allowed range is from 1 to 3




100012

	

Attribute "CustomerRoleType" is required for node customer




100013

	

First name is either not existing or is empty string, but it is a required field




100014

	

Last name is either not existing or is empty string, but it is a required field




100015

	

Address1 is a required field, and it is either not supplied or is empty




100016

	

City is a required field, and it is either not supplied or empty




100017

	

StateAbbrev is a required field, and it is either not supplied or empty




100018

	

Zip code is a required field, and You either did not supply it or left it empty




100019

	

CounrtyAbbrev is a required field and You either didn't supply it or left it empty




100020

	

EMail field is not supplied, or is supplied empty, and it is required




100022

	

Supplied owner username not found in CPQ database




100023

	

Invalid Market




100024

	

A minimum of {{requiredNumberOfCustomers}} customers needs to be supplied




100025

	

Supplied State AbbrevParameter Is Invalid




100026

	

Supplied CountryAbbrev parameter is invalid




100027

	

Supplied TerritoryName parameter is invalid




100028

	

Supplied email address is invalid




100029

	

Quote must have at least one item




100030

	

The item with catalogue code {{mi.PartNumber.Value}} does not exit




100031

	

Promo code {{apiCart.PromoCodes[0].CodeValue.Value}} is not a valid PromoCode




100032

	

Internal error




100043

	

You supplied an invalid string for customer ID




100044

	

Customer with supplied ID is not available




100045

	

Attribute name node is either not supplied or left blank




100046

	

At least one attribute value is required




100047

	

The name You supplied is not valid for the item




100048

	

You supplied an invalid value for attribute




100049

	

Customer with supplied External ID is not available




100050

	

OpportunityId node is required




100051

	

Mappings failed while downloading data from CRM




100053

	

Supplied quantity parameter must be greater than zero




100055

	

Cart property value not applicable




100056

	

You cannot create quotes with incomplete configurations




100057

	

Mappings failed while uploading data to CRM




API_NewQuote_ParameterMissing

	

All parameters not sent




API_NewQuote_UserNotMappedInCPQ

	

USER NOT MAPPED IN CPQ




API_NewQuote_ProductIsObsolete

	

You cannot add to quote the obsolete product




API_NewQuote_InvalidScparamDateFormat

	

Cart property value not applicable

Error Code - Uer Administration API

	

Error Message




103002

	

Approving parent user not found in CPQ database




103003

	

Ordering parent user not found in CPQ database




103004

	

Managing parent user not found in CPQ database




103005

	

Password cannot be blank




103006

	

First name cannot be blank




103007

	

User type cannot be blank




103008

	

Supplied user type is unknown in CPQ




103009

	

User's country/region cannot be blank




103010

	

Company code not found in CPQ




103011

	

Company with company code {{companyCode}} does not exist, and cannot be updated




103014

	

User with username {{username}} does not exist, and cannot be updated




103018

	

Node {{nodeName}} is required




103019

	

Can not convert value of {{nodeName}} : {{innerText}} to boolean




103020

	

Country/Region {{Country}} does not exist




103021

	

Brand for provided brand name not found




103022

	

Custom field not recognized




103023

	

User with username {{username}} already exists, and cannot be added




103025

	

Node {{nodeName}} has invalid attribute value

Error Code - Customers Administration API

	

Error Message




104003

	

Customer delete failed




104004

	

Saving customer failed




104005

	

Found {{number}} cutomers




104006

	

Invalid territory name




104007

	

Invalid country/region or state




104008

	

Deserialization failed




104009

	

Unknown owner username




104010

	

Invalid OwnerID




104011

	

No Customers Provided




104012

	

Unknown action




104013

	

You shouldn't provide ID element when adding new cutomer




104014

	

Specified Custom Field doesn’t exist in the system

Error code - Custom Table Administration API

	

Error Message




105001

	

Invalid table name




105002

	

Invalid action




105003

	

column is necessery for this action




105004

	

Number of provided rows must be between 1 and defined limit




105005

	

Column missing or invalid column name




105007

	

column is not allowed for this action




105009

	

No entries found for provided SearchCriteria




105010

	

Missing column for update




105012

	

Colum names muste be unique




105013

	

Number of values doesn't match the number of columns provided

Error Code - Company Administration API

	

Error Message




106001

	

Company name is a required field




106002

	

Required node COMPANYCODE not supplied




106003

	

Node value {{nodeValue}} is too big. Max size is {{maxSize}}




106004

	

Node value {{nodeValue}} is not in the right format




106005

	 

Error Code - CREATENEWQUOTEANDGETQUOTEDATA API

	

Error Message




107001

	

ProductName is a required parameter




107002

	

Invalid ProductName

Error Code - PriceBook administration through Custom table API

	

Error Message




108001

	

Provided date is not valid




108002

	

Provided price is not valid

Error Code - Cross Reference

	

Error Message




CR_ProductNotFound

	

The part number is {{param}} . Product that matches the part number you inserted could not be found




CR_ProductFoundNoCrossRef

	

Competition product ' {{param}} ' matches the code you inserted , but it is not referenced to any home product




CR_ProductFoundNoConditition

	

Competition product ' {{param}} ' matches the code you inserted , but it can not be referenced to any home product because a condition is not met




CR_ProductFoundHeaderMessage

	

For the part number ' {{param1}} ' , ' {{param2}} ' , reference is made to home product ' {{param3}} '




CR_AttrValueRefNotFound

	

Reference for competition's attribute ' {{params1}} ' with attribute value ' {{params2}} ' could not be found

Error Code -Microsoft CRM

	

Error Message




MSCRM_NoCrmUserMapped

	

Cpq User does not have CRM user mapped and CRM admin account hasn't been set up




MSCRM_LoginUnsuccessfulWithCRMUserAccount

	

Logging into MSCRM with user's account failed




MSCRM_LoginUnsuccessfulWithCRMAdminAccount

	

Logging into MSCRM with admin's account failed




MSCRM_NoDiscoveryServiceUrl

	

Discovery Service Url hasn't been set up. Please contact your CPQ administrator




MSCRM_DomainUncorrect

	

Domain that MS CRM provided does not exist in CPQ. Please contact your MS CRM administrator




MSCRM_MSCRMNotSelected

	

CPQ has not been set up to be integrated with MS CRM. Please contact your CPQ administrator




MSCRM_UserIdNotProvided

	

MS CRM UserId was not provided. Please contact your MS CRM administrator




MSCRM_CrUpdOpp_OppNotUpdated

	

There was an error while updating opportunity




MSCRM_CrUpdOpp_CreatingOppLineItems

	

There was an error while creating opportunity line items




MSCRM_CustRoles_CreatingAccCont

	

There was en error while creating new opportunity




MSCRM_CrUpdOpp_OppNotCreated

	

There was en error while creating new opportunity




MSCRM_CrUpdOpp_AccountIdNotProvided

	

Opportunity cannot be created because the Account Id of the customer role that is used for creating Opportunity Account is empty




MSCRM_CartNotLoaded

	

Cart has not been loaded. Please select a cart




MSCRM_CrUpdOpp_RoleMissingForOppAccount

	

Opportunity cannot be created because the customer role that is used for creating Opportunity Account is empty




MSCRM_OppDoesntHavePriceList

	

Opportunity does not have price list set. In order to successfully create products in MS CRM, opportunity should have price list selecte

Error Code - SAP CRM API

	

Error Message




SAPCRM_DomainIncorrect

	

Incorrect domain name is not provided. Please contact your SAP CRM administrator




SAPCRM_MissingDomain

	

Domain name is not provided. Please contact your SAP CRM administrator




SAPCRM_SAPCRMNotSelected

	

CPQ has not been set up to be integrated with SAP CRM. Please contact your CPQ administrator

Yes
No