# New Quote - Execution Flow | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/12b8ff9e6c9244bab6ea82b031ca991e.html?locale=en-US&state=PRODUCTION&version=2603
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
New Quote - Execution Flow

API Cart is deserialized from input XML This will break if input XML is not valid XML.

API Cart is checked if it contains all required fields This will brake if API Cart (input XML) is missing some required filed.

New Current Cart is created – it’s empty.

Current Cart Market is set based on MarketCode field from API Cart API call will fail if MarketCode field in API Cart has a value not recognized as SAP CPQ defined market.

All Properties from API Cart will be added to Current Cart. If a property is not recognized API call will fail.

For each Customer for API Cart, a search is performed on saved SAP CPQ customers. If match found that customer will be added to Current Cart. If no match is found a new Customer will be created based on data from API Cart. If searching by either SAP CPQ or External ID, and if that search fails, API call will fail.

If Crm/OpportunityId node is present, and if Crm node has ApplyMappings attribute set to true, CRM mappings OnQuoteCreate/Update with direction CRM → SAP CPQ will be executed. Values from CRM are downloaded to SAP CPQ quote. If mapping function fails, the API call will fail, too. Newly created quote will be deleted, and the caller will get the error message describing what happened. If Crm node has no ApplyMapping attribute present, or if attribute is set to “0” (false), this step will not be executed at all.

For each item in API Cart a reverse search will be performed. If search fails API call will fail too. If search is successful a new item will be added to Current Cart. It will have default discounts set. If item's catalog code reverses to an incomplete configuration, and cart owner's group doesn't allow incomplete configurations to be stored, API call will fail, and the caller will be notified of error.

For each item and for each of it's attributes that are given values in XML, the values will be set. If attribute has an invalid name for that item, or if attribute has an invalid value, the API call will fail. Setting Attributes for items can lead to incomplete configurations. If configuration is incomplete, and quote owner user belongs to a group that is set not to be able to create quotes with incomplete configurations, API call will fail, and the user will get an error message about it.

If PromoCode is found in API Cart it will be checked and if valid special discounts will be applied to Current Cart items. This will overwrite default discounts. If PromoCode is invalid API call will fail.

Shipping method in Current Cart will be selected as specified by ShippingMethod field from API Cart. If such shipping method is not available the API call will fail. ShippingCost from API Cart is set to Current Cart.

For each item in API Cart, if ItemPrice is available, discount of corresponding Main item in Current Cart will be recalculated to match the specified price in API Cart. This will not affect additional line items, if any, of that item – just the main item discount. This will overwrite previously set discounts (default or promo code discounts). This may exceed allowed discount.

If CRM Crm/OpportunityId node is present in input XML, SAP CPQ quote will be linked with CRM opportunity. Additionally, if Crm node has ApplyMappings node present, and set to “1” (true), mappings OnQuoteCreate/Update with direction SAP CPQ → CRM will be executed. Values from SAP CPQ quote are uploaded to CRM. If mapping function fails for some reason, API call will fail, the newly created quote will be deleted, and the caller will get an error message describing what happened. If ApplyMappings node is not present, or if it is set to “0” (false), mappings won't be executed. The quote will be only linked to opportunity, without any mappings. If Optional OpportunityName node is present, in the case when no mappings are executed, opportunity name will be populated from this node.

The quote is saved

Alternative Flows – API Call failures

Input XML is invalid XML

Input XML does not contain all required fields

Supplied MarketCode is not valid SAP CPQ Market code

Unrecognized quote property strong name

Invalid Zip code supplied in input Customer

Invalid PartNumber is supplied

Invalid attribute name is supplied

Invalid attribute value is supplied

Invalid PromoCode is supplied

Invalid customer Id is supplied

Supplied ShippingMethod is not available

CRM mappings failed due to communication or other error type

Yes
No