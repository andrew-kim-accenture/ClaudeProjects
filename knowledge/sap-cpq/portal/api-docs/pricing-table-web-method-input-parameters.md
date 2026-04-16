# Pricing Table Web Method - Input Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/4ec6e823ec264898b27963755ada8323.html?locale=en-US&state=PRODUCTION&version=2603
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


	
DELETE PRICEBOOK
	
INSERT PRICEBOOK
	
UPDATE PRICEBOOK
	
Pricing Table Administration Details
	
Pricing Table Web Method - Input Parameters
	
Input XML Example for INSERTROWS action
	
Input XML Example for UPDATEROWS Action
	
Input XML Example for DELETEROWS Action
	
Input XML Example for EXPORTROWS action
	
Input XML Schema - DELETE ROWS action
	
Input XML Schema - EXPORT ROWS action
	
INPUT XML Schema - INSERT ROW Action
	
INPUT XML Schema - UPDATE ROW action
	
OUTPUT XML Example - UPDATE ROWS action
	
Output XML Schema - INSERT ROWS action
	
Output XML Schema - UPDATE ROWS action
	
Pricing Table Administration - Output Parameters
	
Upsert API Method for Pricebook
	
Upsert Pricebook With Distribution Chain
	
DoYouSeeMe API
	
XWS (EXTERNAL WEB SERVICE)
	
Invalid XML Characters
	
API Example
	
External Webservices
	
REST API
Pricing Table Web Method - Input Parameters

Tag

	

Data Type

	

Description

	

Required

	

Comments




Username

	

String (20)

	

Only CPQ admin users can execute this function. CPQ user is defined in CPQ admin.

	

Yes

	

CPQ admin user name




Password

	

String (25)

	

Only CPQ admin users can execute this function. Password is defined in CPQ admin.

	

Yes

	

CPQ admin password for the admin user name provided in the username element




Action

	

String (50)

	

Action that will be executed for the AUXTable

	

Yes

	

Examples: 1. CREATETable 2. DELETEROWS




TableName

	

String(100)

	

Name of the table on which the action will be performed – no white spaces allowed

	

Yes

	

ExternalPrices




AUXTablesproperties

	

XML

	

Object Passing User Data

	

Yes

	

The AUXTablesproperties XML structure for each action is shown

Input XML definition – for other actions

Field Name

	

Description

	

Sample Data

	

Type

	

Size




Column

	

The name of the column from specified table. Only alphanumeric signs are allowed. White spaces aren’t allowed.

	

PriceCode

	

Text

	

50




Value

	

Columns PartNumber, PriceCode and PriceDescription

	

ABC123

	

nvarchar

	

200




Value

	

Columns Price, Cost, RecurringPrice, RecurringCost

	

123

	

decimal

	

decimal

Yes
No