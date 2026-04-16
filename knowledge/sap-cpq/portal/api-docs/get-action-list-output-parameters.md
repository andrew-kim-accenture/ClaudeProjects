# Get Action List – Output parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/a4f9a55816074f5fa5497689829fe6e8.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Get Action List – Output parameters
	
Get Action List - Input Parameters
	
Output XML Schema - Get Action List
	
Result XML Examples
	
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
Get Action List – Output parameters
Tag	Data Type	Description	Required	Comments


Result

	

XML

	

This function will generate XML document wit list of available actions

	

Yes

	

Result is always generated




XML definition

	 	 	 	 
XML Definition
Element Name	Data Type	Description	Required	Comments


Result

	 	 	 	 


Result

	

String (50)

	

OK or NOK

	

Y

	

If OK, API call is performed successfully If NOK an error has occurred.




Reason

	

String(200)

	

Error message

	

Y

	

Empty if no error occurred.




Action

	

String(50)

	

Action name

	

Y

	

Name of the action that can be performed on quote.

Yes
No