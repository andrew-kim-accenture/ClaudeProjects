# User Administration SOAP API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/cdb46e2dc7b84e458e497bc36d05a89a.html?locale=en-US&state=PRODUCTION&version=2603
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


	
User Administration - Input Parameters
	
User Administration - Output Parameters
	
Function Workflow
	
General Deserialization Rules
	
Input XML Scheme - User Administration
	
Output XML Scheme - User Administration
	
Managing User Custom Fields via API Method
	
User administration API XML Details
	
XML Definition
	
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
User Administration SOAP API

Function name: UserAdministration

Authentication: SOAP API authentication

Function description: UserAdministration function executes any available action on the specified User

List of Action values for this function:

ADD

UPDATE

ADD OR UPDATE

DELETE

API parameters Username and Password identify the api user. Action parameter defines the action that will be executed, and Userproperties XML contains the user data that will be added/updated to user.

When users are created by API, Email with log-in information is not sent to newly created users.

Yes
No