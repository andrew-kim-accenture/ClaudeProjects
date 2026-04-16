# Search Quotes from SF SOAP API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/d69d8cf558934b69a602d71ea8fe3f49.html#result-xml-document
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
Search Quotes from SF SOAP API

Function name: SearchQuotesFromSF

Function description: this method enables external system to retrieve quotes from SAP CPQ based on provided search criteria in the same way as SearchQuotes with the difference that authentication is done with data received from Salesforce (session ID and API URL). This method is only available if SAP CPQ user account that is used to make call is set as administrative account. Maximum number of quotes that can be returned is 2000.

Parameters:

DomainName = SAP CPQ domain name

SFSessionId = Salesforce Session ID (used to log in to Salesforce API)

SFAPIUrl = Salesforce API URL (used to log in to Salesforce API)

SearchCriteriaXML = XML used to define quotes that are returned

Authentication: SOAP API authentication

Input XML Document

<Root> <SearchCriteria>Criteria for search</SearchCriteria> </Root>

Examples:

DATE_MODIFIED > '8/3/2011 13:50:20'

Returns all quotes that have been modified after this date/time

DATE_CREATED > '9/24/2011 00:00:00'

Returns all quotes that have been created after this date/time

DATE_MODIFIED > '8/3/2011 13:50:20' AND ORDER_STATUS = '2'

Returns all quotes that have been modified after this date/time that are in status ‘Order Placed’

If Criteria for search is empty, SAP CPQ will return all quotes (top 2000 quotes).

Result XML Document
On this page
Input XML Document
Result XML Document
Yes
No