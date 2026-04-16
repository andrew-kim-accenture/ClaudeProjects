# Link Opportunity SOAP API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/0d8ed3984eb74358bbcbf6a085becfee.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Link Opportunity - Input Parameters
	
Link Opportunity - Output Parameters
	
Result XML Examples
	
Input XML Schema - Link Opportunity
	
Output XML Schema - Link Opportunity
	
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
Link Opportunity SOAP API

Function name: LinkOpportunity

Authentication: SOAP API authentication

Function description:

LinkOpportunity function links a SAP CPQ quote to a CRM opportunity. Note that this method links quote to opportunity, and executes SAP CPQ-CRM mappings. This means that some data from quote will be uploaded to CRM opportunity, and also, that some data from opportunity will be written to SAP CPQ quote, and will overwrite fields in SAP CPQ quote if they already contained some values.

Please note that CRM mappings need an CRM administrative account set up in SAP CPQ in order to be executed. If this account is not set up, API call will fail, and the caller will be notified about error, in result xml.

Yes
No