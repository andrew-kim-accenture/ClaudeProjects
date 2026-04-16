# Upsert Pricebook With Distribution Chain | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/7c8ac94154614a92b07e819418ef3c41.html#result-xml-example
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
Upsert Pricebook With Distribution Chain

Function name: UpsertPricebookWithDistributionChain

Note: This is not the standard Pricing API method.

The following logic is implemented:

When going through rows in XML, API method will look for part number and price code provided in row. If there is no price code, only part number will be used. If part number is empty, error “Part Number Column empty” will be sent as error for this row.

If part number and price code are provided, API method will look for pricebook entries by part number and price code. If price code is not provided, API method will look for pricebook entries with same part number and empty price code.

If API method finds pricebook entry(s) by part number (and possibly price code), all rows that match this condition will be updated with provided data in same row. Row will be updated with only provided columns. Columns that are not provided will not be updated.

If API method doesn’t find pricebook entry by part number (and possibly price code), new entry will be added to the pricebook. When adding new entry to the pricebook, entered data will be same as if entry was added manually (with zeros set for empty prices and decimal places added at the end of the number). If price code or Price Description are empty, they will be left empty in new pricebook entry.

If columns Delete is found in the row, it will be managed :If value is 1 :When adding new entry, this row will be skipped. When updating existing entry, this row will be deleted. If value is 0 or empty:Row will be created/updated as if column Delete was not sent.

Depending on Root node attribute “OnError” :If node is not included or if its value is “IGNORE”, SAP CPQ will commit all changes to rows where no errors happened. If value of the node is “STOP”, SAP CPQ will not commit any changes to the table. However, all rows will be processed and all errors will be reported in return XML.

Depending on Root node “Report”: If node is not included or if its value is “ERRORS_ONLY”, SAP CPQ will return only errors in result XML. If node’s value is “ALL”, SAP CPQ will return result of all rows in return XML.

When creating result XML, for each row SAP CPQ will return :Part Number and Price Code used for entry identification, Status – OK or NOK, Message: If upsert is successful, message will be :Entry inserted (when insert occurred), Entry updated (when updated occurred), Entry deleted (when delete occurred. If upsert is not successful, message will be sent according to the error that happened.“Incorrect characters found in price” – if non-numeric values are sent for price or “Part Number Column empty” – if row is missing part number.

Maximum number of entries that can be handled in one call is 2000.

Input Parameters

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




Distribution Chain

	

String

	

A combination of sales organization and distribution channel

	

Yes

	

Displayed as a six-character code in SAP CPQ pricebooks in the format 0001_01




Currency

	

String

	

Currency for the pricebook that is being updated

	

Yes

	

Currency for the pricebook that is being updated




XML

	

String

	

Data for populating the pricebook

	

Yes

	

XML should contain columns and rows(entries) to pricebook. Columns must be defined first. Only column PartNumber is required. Other columns are optional.Value for column Delete may be 1, 0 or empty

Input XML Example


<?xml version="1.0" encoding="utf-8"?>
<Root OnError="IGNORE" Report="ALL">
<Columns>
    <Column>PartNumber</Column>
    <Column>PriceCode</Column>
    <Column>Price</Column>
    <Column>Cost</Column>
    <Column>RecurringPrice</Column>
    <Column>RecurringCost</Column>
    <Column>PriceDescription</Column>
    <Column>Delete</Column>
  </Columns>
  <Rows>
    <Row>
      <Value>PartNumberXYZ</Value>
      <Value></Value>
      <Value>100</Value>
      <Value>50</Value>
      <Value></Value>
      <Value></Value>
      <Value>0</Value>
      <Value>0</Value>
    </Row>
  </Rows>
</Root>
Note

SearchCriteriaXML sent as a part of SOAP request body needs to be wrapped with <![CDATA[]]>, so for example the input stated above needs to be phrased like this: <![CDATA[<Root> <SearchCriteria>Criteria for search</SearchCriteria></Root>]]>

Result XML Example


<?xml version="1.0" encoding="utf-8"?>
<Result>
  <Status>ALL_ENTRIES_IMPORTED</Status>
  <Message></Message>
  <Root>
  <Columns>
    <Column>PartNumber</Column>
    <Column>PriceCode</Column>
    <Column>Status</Column>
   <Column>Message</Column>
  </Columns>
  <Rows>
    <Row>
      <Value>PartNumberXYZ</Value>
      <Value></Value>
      <Value>OK</Value>
      <Value>Entry Inserted</Value>
    </Row>
  </Rows>
  </Root>
</Result>
On this page
Input Parameters
Input XML Example
Result XML Example
Yes
No