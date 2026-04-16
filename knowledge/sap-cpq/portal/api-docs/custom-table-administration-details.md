# Custom Table Administration Details | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/f3b6b25ca2ef4083b25fdbc36ac30dba.html?locale=en-US&state=PRODUCTION&version=2603
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
Custom Table Administration Details

<Columns> - required

<Column> - required, representing Column name, for all actions except CreateTable, of table with provided name.

<ColumnName>- required, for CreateTable action.

<ColumnSize> - required, for CreateTable action.

<Rows> - required, for all actions except CreateTable

<Row> - required, representing values for provided columns

<SearchCriteria> - required, for Export action

<Value> - required, for all actions except CreateTable

Column and value node must be provided in matching order.

Yes
No