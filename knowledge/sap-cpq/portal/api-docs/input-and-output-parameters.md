# Input and Output Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/6a2ac0da89444edd8581d3dd91d519cf.html?locale=en-US&state=PRODUCTION&version=2603
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
Input and Output Parameters

Simple Product Administration - Input parameters:

Tag

	

Data Type

	

Description

	

Required

	

Comments




Username

	

String

	

Only SAP CPQ admin users can execute this function. SAP CPQ user is defined in SAP CPQ admin.

	

Yes

	

SAP CPQ admin user name




Password

	

String

	

Only SAP CPQ admin users can execute this function. Password is defined in SAP CPQ admin.

	

Yes

	

SAP CPQ admin password for the admin user name provided in the username element




Action

	

String

	

Action that will be executed.

	

Yes

	

ADDORUPDATE or DELETE or GETLANGUAGES




Input

	

XML

	

Object passing Products data

	

Yes (ADDORUPDATE/DELETE)

	

XML formatted data for ADDORUPDATE or DELETE actions

Input XML can be logged to Event Log. By default, this logging is turned off. Internal application parameter: ProductWebserviceLogXMLOnRequest controls whether input XML is logged to Event Log.

Simple Product Administration – Output parameters:

Tag

	

Data Type

	

Description

	

Required

	

Comments




Result

	

XML

	

Output result

	

Yes

	

Result is an XML formatted string.

Related Information
SOAP API Authentication
Yes
No