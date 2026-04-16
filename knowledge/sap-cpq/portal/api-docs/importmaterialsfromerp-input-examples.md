# ImportMaterialsFromERP - Input Examples | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/803fea96479b4070ab8e9290526b699c.html#example-input:-creating-a-subscription-product-with-hasusagepricing,-isbundleproduct-and-generalitemcategorygroup-nodes
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


	
ImportMaterialsFromERP - Input Parameters
	
ImportMaterialsFromERP - Input XML Schema
	
ImportMaterialsFromERP - Input Examples
	
ImportMaterialsFromERP - Output XML Schema
	
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
ImportMaterialsFromERP - Input Examples

Tip

You can test your input with a XML schema validation tool.

Notes on Product Attributes

Required product fields:

Categories

ProductName

ProductType

ProductSystemId

If a product belongs to more than one category, split the categories using the ; character.

For example: Software;Services;Old;...

If you need to specify product hierarchy, use the > character.

For example: Everything>Products>Hardware

If you define a preselected category, which determines where products are placed in the SAP CPQ catalog, products are added to the preselected category only when the Categories node contains this attribute: PreselectInCPQ=true.

The attribute ContractAutoRenewalIndicator (xPATH: //Products/Product/ContractAutoRenewalIndicator) supports these values:

Number

	

Description




0

	

No, selection can be changed




1

	

Yes, selection can be changed.




2

	

Not relevant for auto-renewal




3

	

Yes, selection cannot be changed

Example Input: Creating a Variant Configuration (VC) Product
Sample Code


<Products>
<Product>
<PricingMechanism>Pricebook Lookup</PricingMechanism>
<Active>TRUE</Active>
<Categories>
<USEnglish>DRAFT</USEnglish>
</Categories>
<IsSyncedFromBackOffice>TRUE</IsSyncedFromBackOffice>
<ProductName>
<USEnglish><![CDATA[Material from ERP]]></USEnglish>
</ProductName>
<UnitOfMeasure>PC</UnitOfMeasure>
<PartNumber>MFERP-1</PartNumber>
<PricingCode>001</PricingCode>
<ProductVersion>Version 1</ProductVersion>
<ProductSystemId>Material_from_ERP_cpq</ProductSystemId>
<ProductType>Material</ProductType>
</Product>
</Products>
Example Input: Creating a Subscription Product
Sample Code


<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:web="http://webcominc.com/">
   <soap:Header/>
   <soap:Body>
      <web:ImportMaterialsFromERP>
         <web:userName> </web:userName>
         <web:password> </web:password>
         <web:xDoc>
          <Products>
		   <Product>
		      <Categories>
		         <USEnglish>DRAFT</USEnglish>
		      </Categories>
		      <ProductName>
		         <USEnglish><![CDATA[Cloud Service Seats for CPQ]]></USEnglish>
		      </ProductName>
		      <ProductType>SUBS</ProductType>
		      <ProductSystemId>SOM_REC_CPQ_CLOUD_SEATS</ProductSystemId>
		      <UnitOfMeasure>EA</UnitOfMeasure>
		      <PartNumber>SOM_REC_CPQ_CLOUD_SEATS</PartNumber>
		      <PricingMechanism>Pricebook Lookup</PricingMechanism>
		      <PricingCode>001</PricingCode>
		      <ProductVersion>Version 1</ProductVersion>
		      <OrderItemType>Subscription</OrderItemType>
		      <IsSyncedFromBackOffice>1</IsSyncedFromBackOffice>
		      <BillingCycle>
		         <Values>
		            <Value>
		               <ValueCode>0001</ValueCode>
		            </Value>
		         </Values>
		      </BillingCycle>
		      <ContractDuration>
		         <Values>
		            <Value>
		               <ValueCode>12</ValueCode>
		               <Unit>M</Unit>
		            </Value>
		            <Value>
		               <ValueCode>24</ValueCode>
		               <Unit>M</Unit>
		            </Value>
		         </Values>
		      </ContractDuration>
		      <ContractExtensionPeriod>
		         <Values>
		            <Value>
		               <ValueCode>6</ValueCode>
		               <Unit>M</Unit>
		            </Value>
		            <Value>
		               <ValueCode>12</ValueCode>
		               <Unit>M</Unit>
		            </Value>
		            <Value>
		               <ValueCode>24</ValueCode>
		               <Unit>M</Unit>
		            </Value>
		         </Values>
		      </ContractExtensionPeriod>
		      <ContractAutoRenewalIndicator>1</ContractAutoRenewalIndicator>
		   </Product>
		</Products>
         </web:xDoc>       </web:ImportMaterialsFromERP>
   </soap:Body>
</soap:Envelope>


Example Input: Updating Contract Duration

This example shows how to update the contract duration by adding a new value. All other existing values are also included in the payload to avoid that they are deleted after the update.

Note

When you update values for the attributes ContractDuration, BillingCycle or ContractExtensionPeriod, you also need to include all other existing attribute values in the XML request. Otherwise, the update removes all the values that are not listed in the request.

Sample Code


<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:web="http://webcominc.com/">
   <soap:Header/>
   <soap:Body>
      <web:ImportMaterialsFromERP>
         <web:userName></web:userName>
         <web:password></web:password>
         <web:xDoc>
         <Products>
		   <Product>
		      <Categories>
		         <USEnglish>DRAFT</USEnglish>
		      </Categories>
		      <ProductName>
		         <USEnglish><![CDATA[Cloud Service Seats for CPQ]]></USEnglish>
		      </ProductName>
		      <ProductType>SUBS</ProductType>
		      <ProductSystemId>SOM_REC_CPQ_CLOUD_SEATS</ProductSystemId>
		      <UnitOfMeasure>EA</UnitOfMeasure>
		      <PartNumber>SOM_REC_CPQ_CLOUD_SEATS</PartNumber>
		      <PricingMechanism>Pricebook Lookup</PricingMechanism>
		      <PricingCode>001</PricingCode>
		      <ProductVersion>Version 1</ProductVersion>
		      <OrderItemType>Subscription</OrderItemType>
		      <IsSyncedFromBackOffice>True</IsSyncedFromBackOffice>
		      <BillingCycle>
		         <Values>
		            <Value>
		               <ValueCode>0001</ValueCode>
		            </Value>
		         </Values>
		      </BillingCycle>
		      <ContractDuration>
		         <Values>
		            <Value>
		               <ValueCode>12</ValueCode>
		               <Unit>M</Unit>
		            </Value>
		            <Value>
		               <ValueCode>24</ValueCode>
		               <Unit>M</Unit>
		            </Value>
		            <Value>
		               <ValueCode>36</ValueCode>
		               <Unit>M</Unit>
		            </Value>
		         </Values>
		      </ContractDuration>
		      <ContractExtensionPeriod>
		         <Values>
		            <Value>
		               <ValueCode>6</ValueCode>
		               <Unit>M</Unit>
		            </Value>
		            <Value>
		               <ValueCode>12</ValueCode>
		               <Unit>M</Unit>
		            </Value>
		            <Value>
		               <ValueCode>24</ValueCode>
		               <Unit>M</Unit>
		            </Value>
		         </Values>
		      </ContractExtensionPeriod>
		      <ContractAutoRenewalIndicator>1</ContractAutoRenewalIndicator>
		   </Product>
		</Products>
         </web:xDoc>
      </web:ImportMaterialsFromERP>
   </soap:Body>
</soap:Envelope>


Example Input: Updating Product with skipCategoriesOnProductUpdate Parameter

skipCategoriesOnProductUpdate parameter has been enabled, which can be used on Products node within the XML.

If the value is set to FALSE, then the categories for all the products provided through XML will be updated.

If the value is set toTRUE , then the categories for all the products provided through the XML will not be updated.



<Products skipCategoriesOnProductUpdate='true' >
<Product>
<PricingMechanism>Pricebook Lookup</PricingMechanism>
<Active>TRUE</Active>
<Categories>
<USEnglish>DRAFT</USEnglish>
</Categories>
<IsSyncedFromBackOffice>TRUE</IsSyncedFromBackOffice>
<ProductName>
<USEnglish><![CDATA[Material from ERP]]></USEnglish>
</ProductName>
<UnitOfMeasure>PC</UnitOfMeasure>
<PartNumber>MFERP-1</PartNumber>
<PricingCode>001</PricingCode>
<ProductVersion>Version 1</ProductVersion>
<ProductSystemId>Material_from_ERP_cpq</ProductSystemId>
<ProductType>Material</ProductType>
</Product>
</Products>
Example Input: Updating Product with SkipServiceOrSubscriptionContractAttributeValuesOnProductUpdate Parameter
The SkipServiceOrSubscriptionContractAttributeValuesOnProductUpdate parameter has been enabled, and can be used on the Products node within the XML.

If the value is set to FALSE, then the product attribute values (displayToUser) for service or subscription contract products provided through XML will be updated.

If the value is set to TRUE , then the product attribute values (displayToUser) for service or subscription contract products provided through XML will not be updated.

When the SkipServiceOrSubscriptionContractAttributeValuesOnProductUpdate parameter is set to TRUE, provided product attribute values for service or subscription contract will be skipped when an update is done. For example, if we had a situation where the displayToUser was set to true on 3 values for a particular attribute, such as BillingCycle, and only one value (the default) is received from replication, in the previous behavior (without SkipServiceOrSubscriptionContractAttributeValuesOnProductUpdate='true'), those 3 displayToUser values would be unselected, and only the default value passed via replication payload would be set to display to the user. If you set SkipServiceOrSubscriptionContractAttributeValuesOnProductUpdate='true', those 3 values will stay as they were. Even if you provide some other value in the payload, that value wouldn't be displayed to the user because in this case, we totally skip updating of product attribute values.


<Products SkipServiceOrSubscriptionContractAttributeValuesOnProductUpdate='true'>
    <Product>
        <PricingMechanism>Variant Pricing</PricingMechanism>
        <Active>True</Active>
        <Categories>
            <USEnglish>DRAFT</USEnglish>
        </Categories>
        <IsSAPProduct>True</IsSAPProduct>
        <OrderItemType>Service Contract</OrderItemType>
        <ProductName>
            <USEnglish>ServiceContract</USEnglish>
        </ProductName>
        <UnitOfMeasure>PC</UnitOfMeasure>
        <PartNumber>ServiceContract-ERP</PartNumber>
        <Description>
            <USEnglish>product description</USEnglish>
        </Description>
        <ProductSystemId>ServiceContract_ERP_cpq</ProductSystemId>
        <ProductType>Material</ProductType>
        <ServiceContractDuration>
            <Values>
                <Value>
                    <ValueCode>6</ValueCode>
                    <Unit>M</Unit>
                </Value>
                <Value>
                    <ValueCode>1</ValueCode>
                    <Unit>Y</Unit>
                </Value>
            </Values>
        </ServiceContractDuration>
        <ServiceProfile>
            <Values>
                <Value>
                    <ValueCode>5X10</ValueCode>
                </Value>
                <Value>
                    <ValueCode>7X24</ValueCode>
                </Value>
            </Values>
        </ServiceProfile>
        <ResponseProfile>
            <Values>
                <Value>
                    <ValueCode>FIRST</ValueCode>
                </Value>
                <Value>
                    <ValueCode>STANDARD</ValueCode>
                </Value>
            </Values>
        </ResponseProfile>
        <SettlementPeriod>
            <Values>
                <Value>
                    <ValueCode>BILL0001</ValueCode>
                </Value>
                <Value>
                    <ValueCode>BILL0004</ValueCode>
                </Value>
            </Values>
        </SettlementPeriod>
        <BillingDate>
            <Values>
                <Value>
                    <ValueCode>BILL0002</ValueCode>
                </Value>
                <Value>
                    <ValueCode>BILL0011</ValueCode>
                </Value>
            </Values>
        </BillingDate>
    </Product>
</Products>

Example Input: Creating a Subscription Product with HasUsagePricing, IsBundleProduct and GeneralitemCategoryGroup Nodes
Sample Code


<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:web="http://webcominc.com/">
   <soap:Header/>
   <soap:Body>
      <web:ImportMaterialsFromERP>
         <web:userName> </web:userName>
         <web:password> </web:password>
         <web:xDoc>
          <Products>
            <Product>
               <Identificator>ProductSystemId</Identificator>
               <ProductSystemId> Material_from_ERP_cpq </ProductSystemId>
               <PartNumber> MFERP-1</PartNumber>
               <ProductType> Material</ProductType>
                <UnitOfMeasure>EA</UnitOfMeasure>
                <Categories>
                   <USEnglish> DRAFT</USEnglish>
                </Categories>
                <IsSyncedFromBackOffice>TRUE</IsSyncedFromBackOffice>
                <OrderItemType>Subscription</OrderItemType>
		<HasUsagePricing>True</HasUsagePricing>
                <GeneralItemCategoryGroup>PPR</GeneralItemCategoryGroup>
                <IsBundleProduct>True</IsBundleProduct>
                <ProductName>
                 <USEnglish> <![CDATA[Material from ERP]]></USEnglish>
                </ProductName>
               </Product>
             </Products>
        </web:xDoc>     
       </web:ImportMaterialsFromERP>
   </soap:Body>
</soap:Envelope>


The following information is relevant when you are importing products from SAP Billing and Revenue Innovation Management:

For the node, <IsBundleProduct></IsBundleProduct>: If the argument is True, the value Bundle subscription customized is set for the label S/4 Subscription Item Category Type on the Product Definition tab in Setup.

For the node < HasUsagePricing></ HasUsagePricing >: If the argument is True, the value Usage-based priced is set for the label S/4 Subscription Item Category Type on the Product Definition tab in Setup.

For the node < GeneralItemCategoryGroup></GeneralItemCategoryGroup>: The argument that is provided is the value that will be set for the label General Item Category Group on the Product Definition tab in Setup.

On this page
Notes on Product Attributes
Example Input: Creating a Variant Configuration (VC) Product
Example Input: Creating a Subscription Product
Example Input: Updating Contract Duration
Example Input: Updating Product with skipCategoriesOnProductUpdate Parameter
Example Input: Updating Product with SkipServiceOrSubscriptionContractAttributeValuesOnProductUpdate Parameter
Example Input: Creating a Subscription Product with HasUsagePricing, IsBundleProduct and GeneralitemCategoryGroup Nodes
Yes
No