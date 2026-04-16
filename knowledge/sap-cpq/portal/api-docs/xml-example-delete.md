# XML Example - Delete | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/11d43ce60583406abedf88e52a21dfd0.html?locale=en-US&state=PRODUCTION&version=2603
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


	
XML Example - Delete
	
XML Schema - Delete
	
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
XML Example - Delete

Input example:



<Root OnError="IGNORE" Report="ALL">
<Columns>
  <Column>PartNumber</Column>
  <Column>PriceCode</Column>
  <Column>Price</Column>
  <Column>Cost</Column>
  <Column>RecurringPrice</Column>
  <Column>RecurringCost</Column>
  <Column>ValidFrom</Column>
  <Column>ValidUntil</Column>
  <Column>PriceDescription</Column>
  <Column>Delete</Column>
</Columns>
<Rows>
  <Row>
    <Value>PartNumberXYZ</Value>
    <Value>123</Value>
    <Value>100</Value>
    <Value>50</Value>
    <Value>25</Value>
    <Value>10</Value>
    <Value>01/01/2013</Value>
    <Value>08/15/2013</Value>
    <Value>desc</Value>
    <Value>1</Value>
  </Row>
</Rows>
</Root>

Value for Delete node must be 1 in order to delete row.

Output examples:

Succesfull



<Result xmlns="http://webcominc.com/">
<Status>ALL_ENTRIES_IMPORTED</Status>
<Message />
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
      <Value>123</Value>
      <Value>OK</Value>
      <Value>Entry deleted.</Value>
    </Row>
  </Rows>
</Root>
</Result>

Error



<Result xmlns="http://webcominc.com/">
<Status>ERRORS_FOUND_WHEN_IMPORTING</Status>
<Message />
<Root>
  <Columns>
    <Column>PartNumber</Column>
    <Column>PriceCode</Column>
    <Column>Status</Column>
    <Column>Message</Column>
  </Columns>
  <Rows>
    <Row>
      <Value />
      <Value>123</Value>
      <Value>NOK</Value>
      <Value>Part Number Column empty.</Value>
    </Row>
  </Rows>
</Root>
</Result>
Yes
No