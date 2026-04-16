# Login after API Quote Creation | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/2fe1fe22c3654347835e2ac3df626aa5.html?locale=en-US&state=PRODUCTION&version=2603
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


	
New Quote - Input Parameters
	
New Quote - Output Parameters
	
Result XML Examples
	
New Quote Details
	
New Quote - Execution Flow
	
Input XML Schema - New Quote
	
Output XML Schema - New Quote
	
Login after API Quote Creation
	
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
Login after API Quote Creation

This feature allows you to log in to SAP CPQ after quote has been created through API without having to enter un/pass/domain name. This is a single-sign on functionality when SAP CPQ is integrated with external system.

NewQuote API method generates 2 new nodes in result XML:

QuoteLink

This node is always a part of result XML when quote has been successfully created.

This node contains link to the login page. In its query string there will be an encrypted quote name. When users are redirected to this link, they will have to enter un/pass/domain in order to enter quote.

Example: https://yourdomain.cpq.cloud.sap/Login.aspx?quote=CED2CECFC7

QuoteSSOLink

This node is a part of result XML when quote has been successfully created and if application paremeter ‘Send Single Sign On Link to the Quote as result of NewQuote API method’ is set to TRUE

This node contains link to the single-sign on page. In its query string there will be a quote number that is not encrypted, domain name and username encrypted in standard way for single-sign on functionality. When users are redirected to this link, they won’t have to enter username/password/domain in order to enter quote. Instead, they will be automatically redirected to the quote (if correct parameters have been passed on to SSO login page).

Example for content of the node: https://yourdomain.cpq.cloud.sap/sso/login.aspx?u=ghLanimluj64XgtspvrSZSYYPG6TG7Ja86t1m5yLilE=&d=webcomqa&quotenumber=00010108

Example for the result XML:


<?xml version="1.0" encoding="utf-8"?>
<Result>
<Status>OK</Status>
<Message>New Quote Created</Message>
<QuoteStatus>Open</QuoteStatus>
<QuotationNumber>00010108</QuotationNumber>
<QuoteLink>https://yourdomain.cpq.cloud.sap/Login.aspx?quote=CED2CECFC7</QuoteLink>
<QuoteSSOLink>https://yourdomain.cpq.cloud.sap/sso/login.aspx?u=ghLanimluj64XgtspvrSZSYYPG6TG7Ja86t1m5yLilE=&d=webcomqa&quotenumber=00010108</QuoteSSOLink>
</Result>

Yes
No