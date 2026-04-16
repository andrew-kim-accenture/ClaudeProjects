# Customer Updating Rules | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/ed84b29aba164a34aed07dee0093ff23.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ API DocumentationVersion: 2603English
Provide feedback on our search

	
SAP CPQ API
	
SOAP API


	
Simple Product Administration SOAP API
	
Customer Administration SOAP API


	
Customer Administration-Input Parameters
	
Customer Administration - Output Parameters
	
Customer Administration Details
	
Customer Administration Execution Workflow
	
Customer Searching Rules
	
Customer Updating Rules
	
Input XML Schema - Customer Administration
	
Output XML Schema - Customer Administration
	
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
Customer Updating Rules
If an existing customer is being updated (via AddOrUpdate or via Update action) the updating works as follows:

After search returned an unique customer, it is being loaded from database.

Customer data that is deserialized from input XML will be used to update existing customer data.

If a node (field) in input XML is left blank (empty), it will erase existing SAP CPQ customer's corresponding field's value. I.e. If you provide nothing for <FirstName> node, the existing customer's first name will be set to blank.

If a node (field) in input XML is completely left over, it will not update the corresponding existing customer's field. I.e. If you omit <FirstName> node from input XML, the existing customer will preserve its original first name.

If you try to erase some field's value (by providing empty node in input XML), and that field is a required field, updating of current customer will fail, the customer's input XML will be added to error results, and the API will move on to deserialize and update next customer from input XML.

Related Information
SOAP API Authentication
Yes
No