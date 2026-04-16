# Set Cart Item Properties - Result XML | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/fcfbae312f2746eab1664fff5b6120f2.html#sample-xml-response---wrong-custom-field-name-provided
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
Set Cart Item Properties - Result XML
Tag	Data Type	Description	Required	Comments


Result

	

XML

	

This function will generate XML document as result of the performed actions

	

Yes

	

Result is always generated

Sample XML Response - No Error


<Result>
  <CartItem guid="7c65d5af-d404-4fd7-bb8f-d5dc297faec0">
    <CartItemCustomField name="Sample_Cart_Item_CF">
      <Status>OK</Status>
      <Message></Message>
    </CartItemCustomField>
  </CartItem>
</Result>
Sample XML Response - Wrong Cart Item Guid Provided

If you provide a wrong cart item guid through input XML, SAP CPQ will not be able to find the appropriate quote item field and an error XML will be returned



<Result>
  <Status>NOK</Status>
  <Message>Cart Item Custom Field is null or empty</Message>
</Result>
Sample XML Response - Wrong Custom Field Name Provided

If you provide a wrong name for custom field (non existing custom field name) through input XML, SAP CPQ will not be able to find it and an error XML will be returned. In this example, we provided name Sample_Cart_Item_FC instead of Sample_Cart_Item_CF



<Result>
  <CartItem guid="7c65d5af-d404-4fd7-bb8f-d5dc297faec0">
    <CartItemCustomField name="Sample_Cart_Item_FC">
      <Status>NOK</Status>
      <Message>Cart Item Custom field not found</Message>
    </CartItemCustomField>
  </CartItem>
</Result>
On this page
Sample XML Response - No Error
Sample XML Response - Wrong Cart Item Guid Provided
Sample XML Response - Wrong Custom Field Name Provided
Yes
No