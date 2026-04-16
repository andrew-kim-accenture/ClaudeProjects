# New Quote Details | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/f8f4552b3bcd45b89ba4a506ad894636.html?locale=en-US&state=PRODUCTION&version=2603
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
New Quote Details

<MarketCode >

If this field is missing, quote’s owner’s default market will be used for the quote.

If this field is supplied, the value found in XML has to match one of the market codes in the SAP CPQ system.

If the match is not found, the quote will not be created and the result sent to the API caller will contain the reason for the API call’s failure.

<ShippingMethod>

This field is required

Value found in XML has to match one of the valid shipping methods from SAP CPQ system.

If the match is not found, the quote will not be created and the result sent to the API caller will contain the reason for the API call’s failure.

<ShippingPrice>

This field is not required

If this node is empty or not found, cpq will provide the shipping price based on the shipping method specified in the node <ShippingMethod>.

If this node is found and is not empty, the numeric value written in the node will be used as shipping price. If the value is not numeric, the quote will not be created and the result sent to the API caller will contain the reason for the API call’s failure. If the shipping price is found to be 0, the shipping price will be set to zero without further calculations.

<TaxExempt>

This field is not required

It can have following values: 0, 1, true, false

If node is missing, or it doesn’t have one of the values above, it will be considered to be false (or 0)

If the node of the value is 0 or false, the tax calculated for the created quote will be included in the total price.

If the node of the value is 1 or true, the tax calculated for the created quote will not be included to the total price.

<CartComment>

This field is not required.

The value written in this node will be saved as created quote’s comment.

<PromoCode>

This field is not required

If this field exists and is not empty, the value written in this node has to be a valid promo code. Valid promo codes are kept in SAP CPQ database.

If this field exists and is not empty, the value written in this node has to be a valid promo code. Valid promo codes are kept in SAP CPQ database.

<Crm>

This node, is optional, but if present, then it must have its children populated.

(Attribute) ApplyMappings – This attribute is optional. If omitted, default is false. This attribute is intended for users to choose if they want to execute CRM mappings when linking opportunity to newly created quote. If this is set to true, CRM mappings would be executed. If false, the quote will only be linked to opportunity, without any data exchange between SAP CPQ and CRM system in any direction.

<OpportunityId>

This field is required if it is contained in Crm node (which is optional – this means that Crm node, along with this child of it can be omitted from the input XML, but if Crm node is present, this node is a required node.

Id from the CRM opportunity. If supplied, the quote will be attached to the opportunity on the CPQ side. But field mappings will not be done by default. Attribute called ApplyMappings needs to be set to true, if caller wants CRM mappings to be executed. In this case, complete mappings are executed, and all needed data is exchanged between SAP CPQ and CRM. Note that this option results in slower API requests, since additional communication needs to be done between SAP CPQ and CRM. If network errors occur, this can also lead to API call failures. If this call to CRM fails for any reason, new quote won't be created, and the API caller will get NOK result XML which will contain error that CRM system reported. If ApplyMappings attribute is set to “false” or omitted from input XML, mappings won't be executed, and the API caller is responsible to maintain data integrity between SAP CPQ quotes and CRM opportunities. All fields which get copied from opportunity to quote won't get copied, so API caller must provide them manually via new quote input XML. This option is however, faster than when mappings are executed. Please note that CRM mappings need an CRM administrative account set up in SAP CPQ in order to be executed. So if you use this option, and if the account is not set up, API call will fail, and you will be notified about error, in result xml.

<OpportunityName>

This node is optional. If supplied, opportunity name will be populated when likning quote to opportunity. Please note that, when ApplyMappings attribute is set to “1”, the opportunity name node will be ignored, and the opportunity name will be populated while doing mappings. (It will be downloaded from CRM).

<Items>

All nodes labeled <Item> found under <Items> will be added to the quote

If reverse search for any of the items catalogue codes returns negative result, the quote will not be created.

<Item> n <Quantity>

This is required field.

The value of this node has to be numeric, otherwise the quote will not be created and the result sent to the API caller will contain the reason for the API call’s failure.

The value written in this node will be applied to the main configuration item

Additional configuration items will have quantities that are set up as default quantities for these attributes in product’s model administration.

If in the product’s model administration the quantity of main configuration item is set up to be applied to additional configuration items, the value of this node will be multiplied with default quantities for additional configuration items.

n <CatalogueCode>

This is required field.

SAP CPQ will perform the reverse search based on this catalogue code.

If the appropriate product model is found based on the catalogue code, SAP CPQ will add main and additional configuration items (if any) for this product model to the quote.

If no product model is found based on the catalogue number, the quote will not be created and the result sent to the API caller will contain the reason for the API call’s failure.

n <ItemPrice>

This field is not required.

If this field is not found or is empty, the product model configuration price will be calculated by the appropriate formula defined for this product model in administration. In the created quote, default discounts will be applied to main and additional configuration items.

If this field has numeric value that will be the price in the quote for this product model. The product model configuration price will be calculated by the appropriate formula defined for this product model in administration. In the created quote, default discounts will be applied to additional configuration items. For main configuration item, discount will be calculated based on the value written in this node. Formula used for calculating discount for main configuration item: (<ItemPrice> - sum(discounted additional conf. items)) / (price for main conf. item from product model)

n <Attributes>

This field is not required.

If this node is supplied, attributes for the item will be set as given in the input xml. This will change the product configuration, which may turn to an incomplete product after change.

<Attribute>-:$ <Name> n

This field is required.

The field represents the attribute name.

If there is no attribute in item with given name, quote will not be created, and the API call will fail and the result will contain the reason for API call's failure.

<Value>

This field is required

If the attribute has several values, each one that needs to be set should be set in the separate value XML tag.

The field is used to set a value to an attribute with given name

If the attribute is not a free form attribute, and the value is not found to be valid for that attribute, the API call will fail and the result will contain the reason for API call's failure.

<Properties> * <Property> o <Name> n

This field is required.

This field represents the strong name defined in SAP CPQ administration for some quote property.

If the value of this node does not correspond to some of the strong names defined for the owner of the created quote, the quote will not be created and the result sent to the API caller will contain the reason for the API call’s failure.

to add a quote with the date in a format different from user's date format, use the two attributes DateFormat and DateSeparator and enter the date format in uppercase:



Properties DateFormat="ddmmyyyy" DateSeparator="/">
   <Property>
       <Name>DATE</Name>
       <Value>2020-10-19</Value>
   </Property>

o <Value> n

This field is required.

The value of this node will be saved for the quote property with the strong name in the node <Name>.

<Customers>

<Customer CustomerRoleType=“1”>-:$

Before a customer is added to a quote, a lookup is performed in order to find out if such a customer already exists in the SAP CPQ system.

Search is performed first by looking if the SAP CPQ customer's ID is present in input XML. (Node “ID”). If there is a customer with a supplied ID, that customer will be used. If this ID is supplied wrong, the API call will fail, resulting in a message about the error that occurred. If SAP CPQ customer's ID is not present in input XML (since it is not a required node), then the External customer's ID is searched (if present). It is contained in the “ExternalId” node in input XML. This node is intended to uniquely identify customers by using their IDs from an external system that has integration with SAP CPQ. SAP CPQ customers have that ID stored in the “customer code” field in the database. If “ExternalId” node is present in input XML, then customers are searched by this ID. If a match is found, this customer is used by API. If this search fails, API call will fail, and the caller will get the error message describing the problem.

The flow for customer lookup according to their ID or external ID is presented in the following text:

First, SAP CPQ looks up an active local customer with the provided ID/External ID. If such a customer exists in the system, they are retrieved.

If a customer with the provided ID/External ID doesn't exist in the system, SAP CPQ looks up an active global customer with the provided ID/External ID. Global customer visibility is taken into consideration in this scenario. If a customer with the provided ID/External ID exists and is visible to the lookup performer, they are retrieved.

If a customer with the provided ID/External ID doesn't exist in the system or isn't visible to the lookup performer, SAP CPQ checks if the customer with the provided ID/External ID is an active local customer of another user. Local customer visibility is taken into consideration in this scenario. If a customer with the provided ID/External ID exists and is visible to the lookup performer, they are retrieved.

Note

If a customer is looked up according to their external ID, and more than one customer has an identical external ID, the first customer in the list is retrieved.

This ExternalId is not required, and when not supplied, customers are being searched by combination of first name, last name, company and address1. The search is case insensitive. If a customer is found, it will be used. Otherwise, if there’s no SAP CPQ customer with this combination of first name and last name, a new Customer will be created for that quote, using the supplied data. In any of these searches, if multiple records are found, the API will use the first one that database engine returns. Therefore, it is recommended not to use ambiguous customers identification in SAP CPQ system. Note that it is recommended to use Ids or ExternalIds since identification just by First name and Last name can cause to creation of many new customers over relatively small period of time, if there are many mismatches during customers searching.

(attribute) CustomerRoleType – defines customer role for this customer (1 is for ‘Bill To’, 2 is for ’Ship To’ and 3 is for ‘End User’).

All customer roles that are used in the system have to be defined in the XML, otherwise the quote will not be created and the result sent to the API caller will contain the reason for the API call’s failure.

<Id>

Not required.

<ExternalId>

Not required.

<FirstName>

Required.

<LastName>

Required.

<Company>

Not required.

<Address1>

Required.

<Address2>

Not required.

<City>

Required.

<StateAbbrev>

Required.

Two letter abbreviation for one of the States defined in SAP CPQ Setup. If supplied value is not recognized as valid two letter state abbreviation the quote will not be created and the result sent to the API caller will contain the reason for the API call’s failure.

<ZipCode>

Required.

<CountryAbbrev>

Required.

Three letter country/region abbreviation for one of the Countries/Regions defined in SAP CPQ Setup. If supplied value is not recognized as valid three letter country/region abbreviation the quote will not be created and the result sent to the API caller will contain the reason for the API call’s failure.

<TerritoryName>

Not required.

If supplied it should contain a name of a defined Territory in SAP CPQ Setup. If the value is not recognized as valid Territory name the quote will not be created and the result sent to the API caller will contain the reason for the API call’s failure.

<BusinessPhone>

Not required.

<BusinessFax>

Not required.

<Email>

Required.

This field should contain valid email address. If the value is not valid email address the quote will not be created and the result sent to the API caller will contain the reason for the API call’s failure.

<CRMAccountId>

Not required.

<CRMContactId>

Not required.

Yes
No