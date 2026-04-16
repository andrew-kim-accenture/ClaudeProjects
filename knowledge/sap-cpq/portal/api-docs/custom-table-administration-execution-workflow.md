# Custom Table Administration Execution Workflow | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/272f4545bf2d4bc4b7764b2575f61fba.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create Table Input XML Schema - AUX Table Administration
	
Create Table Output XML Schema - AUX Table Administration
	
Custom Table Administration - Output Parameters
	
Custom Table Administration Details
	
Custom Table Administration Execution Workflow
	
Custom Table Searching Rules
	
Custom Table Web Method - Input Parameters
	
Export Rows Input XML Schema - AUX Table Administration
	
Export Rows Output XML Schema - AUX Table Administration
	
Insert Update Upsert Delete Input Schema
	
Insert Update Upsert Delete Output Schema
	
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
Custom Table Administration Execution Workflow

The supplied username and password are checked for security reasons, if check fails, the API call will fail.

Columns’ names are deserialized. If required action is CREATETABLE the table name and columns’ names are checked. If any contains blank spaces, or anything except alphanumeric signs, the API call will fail. For any other action provided columns’ names are compared with provided table columns (in database). If they don’t match, the API call will fail.

If a number of provided rows exceeds allowed value for provided action, the API call will fail.

If length of provided values exceeds column’s size, the API call will fail.

If action is CREATETABLE, when new table is created, primary auto increment key ‘CpqTableEntryId’ is added to the table.

If action isn’t CretateTable Row nodes are deserialized from input XML.

Provided action is performed.

When the required action is performed for all provided rows, the result XML will be returned.

Yes
No