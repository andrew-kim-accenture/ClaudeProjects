# Place Order SOAP API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/57a6bf55ba2a4cbe88064da2a69ce2b2.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Place Order - Input Parameters
	
Place Order - Execution Flow
	
XML Schema - Place Order
	
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
Place Order SOAP API

PlaceOrder function creates a quote, billing info, shipping info, end user info, quote properties, calculates shipping method and executes SAP CPQ place order action.

Place order has the same effect as a call to NewQuote to create a new quote and a call to PerformCartAction to execute Place Order action. It has the same prototype (input and output) as NewQuote method. Refer to New Quote SOAP API for more details.

API parameters username/password identifies the API user

Owner API parameter defines username of the owner of a newly created quote

Based on ItemPrice XML node system will calculate discounts and check for discounting rules on main items only - not for line items

If the discount is overridden and user may override the discount then the quote will be created but 'place order' action will not be executed

Related Information
SOAP API Authentication
Yes
No