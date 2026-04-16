# Simple Product Administration SOAP API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/32875dd531b64274a42b5fcc2985f244.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ API DocumentationVersion: 2603English
Provide feedback on our search

	
SAP CPQ API
	
SOAP API


	
Simple Product Administration SOAP API


	
Input and Output Parameters
	
Input XML Example
	
Input XML Schema
	
Output XML Example
	
Output XML Schema
	
PRODUCT ADMINISTRATION - Input XML Examples
	
PRODUCT ADMINISTRATION WEB METHOD
	
Sorting and Ranking Attributes
	
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
Simple Product Administration SOAP API

Function name: SimpleProductAdministration

Authentication: SOAP API authentication

Function description: The SimpleProductAdministration function can be used to:

Add Simple Products

Delete Simple Products

Update Simple Product information

Add/Update/Delete product data in multiple languages

Make Simple Products Active / Inactive

List of Action values for this function:

ADDORUPDATE

DELETE

GETLANGUAGES

Note

GETLANGUAGES functions should be called before using ADDORUPDATE in order to receive a list of valid languages for current SAP CPQ installation.

The SAP CPQ Simple Product Administration SOAP API also supports additional values other than simple products:

Configurable

System

Collection

Parent/Child

Click here to access the page about these values.

Note

You can add and update dictionaries using the Simple Product Administration API by providing the dictionary system ID or the dictionary name.

The Simple Product Administration API supports the Variant Pricing mechanism, which is available when SAP CPQ is integrated with SAP Variant Configuration and Pricing. When the integration is enabled, Variant Pricing can be set via the PricingMechanism node for products that are flagged as isSyncedFromBackOffice.

Note

Payloads created before the 2111 release of SAP CPQ (November 2021) contain the IsSapProduct flag instead of IsSyncedFromBackOffice. Although the system is adapted to accept both flags, all payloads created after the 2111 release should contain the IsSyncedFromBackOffice flag only.

The following is an example of the payload containing the Variant Pricing value:


<Products> 

                    <Product>   

                        <ProductSystemId>3569874648523</ProductSystemId> 

                        <PartNumber>DA353LNAL00</PartNumber> 

                        <ProductName> 

                            <USEnglish><![CDATA[Robot Arm]]></USEnglish> 

                        </ProductName> 

                        <ProductType>Hardware</ProductType> 

                        <Categories> 

                            <USEnglish><![CDATA[Battle Machinery]]></USEnglish> 

                        </Categories> 

                        <PricingMechanism>Variant Pricing</PricingMechanism> 

                        <isSyncedFromBackOffice>True</IsSyncedFromBackOffice> 

                    </Product> 

                </Products> 


During product and attribute update with this method, if the RefProduct node is used to create a reference to an attribute value from a product, the new value with the same name and a different ID is created and referenced to a product. This change is visible if the attribute is accessed from the product Attributes tab, but not from Product Catalog  Attributes.

If the Simple Product Administration API is used for creating a product and an attribute, and an attribute value which references a product with the RefProduct node is added, the created values are referenced. This is visible if the attribute is accessed from the product Attributes tab, but not from Product Catalog  Attributes.



Input and Output Parameters

Input XML Example

Input XML Schema

Output XML Example

Output XML Schema

PRODUCT ADMINISTRATION - Input XML Examples

PRODUCT ADMINISTRATION WEB METHOD

Sorting and Ranking Attributes

Yes
No