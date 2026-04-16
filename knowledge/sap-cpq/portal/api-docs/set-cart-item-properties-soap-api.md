# Set Cart Item Properties SOAP API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/9328908d62f24c56bbb817e91cf3c679.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Set Cart Item Properties - Result XML
	
Set Cart Item Properties - Input Parameters
	
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
Set Cart Item Properties SOAP API

SetCartItemProperties updates the value of custom fields on your quote items.

To call this method you must provide an input XML, which should follow this pattern:



<CartItems>
  <CartItem>
    <CartItemGuid>7c65d5af-d404-4fd7-bb8f-d5dc297faec0</CartItemGuid>
    <CartItemCustomFields>
      <CartItemCustomField>
        <Name>Sample_Cart_Item_CF</Name>
        <Value>This was edited externally. Via API</Value>
      </CartItemCustomField>
    </CartItemCustomFields>
  </CartItem>
</CartItems>

API parameters username/password identify the API user

API parameter cart composite number identify the quote

API parameter cart revision identify quote revision

You must provide Guid for each quote item and name of each custom field (See previous XML example) to be able to call this function properly. To find Guid you can call function GetQuoteData, providing quote composite number. This function will return quote XML where you can find (among other information) Guids that you need.

The Name node must contain the name of the custom field.

The Value node must contain the value you want to send.

Related Information
SOAP API Authentication
Yes
No