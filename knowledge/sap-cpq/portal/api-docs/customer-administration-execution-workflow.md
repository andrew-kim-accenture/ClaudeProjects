# Customer Administration Execution Workflow | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/7e85abf5c3bb4a27969678e30db9ef3b.html?locale=en-US&state=PRODUCTION&version=2603
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
Customer Administration Execution Workflow

The supplied username and password are checked for security reasons, if check fails, the API call will fail.

If required action is Update, AddOrUpdate or Delete the node SearchFields is deserialized.

If a number of provided customers exceeds allowed value - 50, the API call will fail.

Customer nodes are one by one deserialized from input XML.

Depending on the requested API action, the search of existing customers is performed, or the deserialized customer is being added (saved) in SAP CPQ DB without search.

If required action is Delete, Update or AddOrUpdate the search is performed in SAP CPQ for customer. Search rules are described later.

If search returns more than one customer, the search will be considered as failed: Delete, Update or AddOrUpdate action will fail for current customer and error XML will be generated and added to result XML, and the next customer will be deserialized from input xml. However, if action is Add, the search won't be performed, and new customer will be created using the provided data.

If search doesn’t return any value, AddOrUpdate action will be treated as Add action, but Delete and Update will fail for current customer, and error XML will be added to result XML, and the next customer will be deserialized from input XML.

If search returns only one customer record, desired action will be executed. If it is a Delete action, and for some reason deleting of current customer is impossible (it is already assigned to a quote, for example), the customer will be inactivated, so it can't be inserted in existing or new quotes. It will still, however, stay assigned to the quotes he was assigned to.

If action is Add, and one of required fields is missing, deserialization for current customer will fail, and its input XML will be included in API call results. Newly added customers are assumed to be “active”, if “active” node is not supplied.

If action is AddOrUpdate or Update, after all input XML nodes are reflected to existing customer, if it turns out that some customer's fields are now blank that are required (either if you erased them in this API call, or If they were not populated in the first place since the customer is created), the action will fail for existing customer, and its input XML will be added to error XML. The API call will move on to next customer node.

If action is Add, Customer's Id node (which should represent customer's ID from SAP CPQ system) will be ignored: he will be given its new, unique SAP CPQ ID.

When the required action is performed for all provided customers, the result XML will be returned.

Related Information
SOAP API Authentication
Yes
No