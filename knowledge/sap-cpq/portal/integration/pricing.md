# Pricing | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/11ba1f8fcec5422fba4e2837f4171f10.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions


	
System Requirements for SAP Integrations
	
Integrations with SAP Back-End Systems


	
SAP ERP Integration for Quote 1.0
	
Integration with SAP S/4HANA
	
Integration with Sales Orders in SAP S/4HANA Cloud
	
Integration with SAP S/4HANA Cloud Solution Order
	
Variant Configuration Integration


	
Introduction to the Variant Configuration Integration
	
Integrate SAP CPQ with SAP Variant Configuration and Pricing
	
Define SAP General Attribute Mappings
	
Knowledge Base Diagnostics
	
Technical Overview
	
Pricing


	
Pricing Procedure Mapping
	
Set Up Pricing Procedure in SAP ERP
	
Map Pricing Response to Quote Columns
	
Pricing Details on Items
	
Pricing Behavior for Products Created/Edited via SOAP API
	
SAP Variant Configuration and Pricing Log
	
SAP Sales Cloud Integration
	
SAP Commerce Cloud Integration
	
SAP Subscription Billing Integration for Quote 2.0
	
Integration with SAP Master Data Integration
	
Identity Provisioning Service Integration
	
CX AI Integration
	
Integration with Central Entry Point
	
Subscription to Events
	
Federated Single Sign-On
	
External Configurator Integration for Quote 2.0
	
AdobeSign Integration
	
Icertis Contract Intelligence Integration
	
DocuSign Integration
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
Pricing

You can select Variant Pricing or Pricebook Lookup as the pricing type for Variant Configuration products in SAP CPQ.

Variant Pricing is the type of pricing which can be assigned in Products in the Setup for products synchronized from SAP Variant Configuration and Pricing. When Variant Pricing is the selected pricing type, product prices are synchronized from SAP Variant Configuration and Pricing. Therefore, this type of pricing is always selected by default for synchronized configurable products.

Moreover, if Variant Pricing is selected in the Setup, synchronized simple products can also obtain prices from SAP Variant Configuration and Pricing. Alternatively, you can select Pricebook Lookup for simple products. In that case, prices for simple products are sent from SAP ERP to SAP Cloud Integration over IDocs. SAP Cloud Integration then calls SAP CPQ SOAP API for pricing and loads prices into SAP CPQ pricebooks (which is why pricebooks need to be manually created in SAP CPQ). When updated, prices in SAP ERP will be synchronized with pricebooks in SAP CPQ.

Note

When prices obtained from SAP Variant Configuration and Pricing are being used and the market has a defined market factor and currency rate, the obtained price is multiplied with the market factor and the currency rate.

Item prices are calculated the following ways:

Base Price = Net Value - the price of Selected Options (VARC) as defined in SAP General Attribute Mappings

Total Price = Net Value (calculated as: Base Price + Selected Options function)

Total Price With Child Items (this is the total in the Responder) = Net Value + Subitem Net Values

Base price values for simple and configurable products are displayed in the Catalog if a Pricing Procedure Name for Catalog Prices is defined in SAP General Attribute Mappings and maintained in SAP ERP. Prices displayed for products synchronized from SAP Variant Configuration and Pricing in the Catalog do not include any preselections that were defined for that configurable product, but only the base price.

Prices in the Catalog are obtained from the pricing service by sending a batch request to api/v1/statelesspricing. The number of items in the batch request depends on the SAP CPQ Catalog paging (for example, if 50 products are rendered in the Catalog, the batch request is for 50 products).

Prices for configurable products are obtained in real time from SAP Variant Configuration and Pricing and displayed in the responder. The responder displays a complete breakdown of the pricing for products originating from SAP Variant Configuration and Pricing, which consists of the base price and the sum of surcharges (variant condition keys). The breakdown can be modeled to retrieve any pricing function from the backend (via base price, selected options and variant conditions attached to the characteristics in SAP General Attribute Mappings). Once a product is configured, the pricing breakdown is displayed in the Configuration Summary of the responder (see the screenshot). If the surcharges do not have descriptions, they are named after their keys. Surcharge descriptions are maintained in the field conditionTypeDescription on the product model in the back end.

If the pricing payload contains multiple variant conditions, and more than one of these conditions contain the same variant condition key (surcharge), but with different values, the Responder displays a total for every occurrence of that variant condition key. For example, the variant condition key ABC appears in multiple variant conditions: VA00 ABC ($1), VA01 ABC ($2), VA02 ABC ($3). In this case, in the Responder, the value $6 is displayed as the total for the variant condition key ABC.

You can write a script to access the pricing response from SAP Variant Configuration and Pricing. That way, you can expose a complete overview of the pricing procedure. Additionally, you can use scripting to assign the values of various condition types to item custom columns in the quote. By doing that, you can make the values of individual condition types visible on the quote user interface. More information is available in Map Pricing Response to Quote Columns.

Note

SAP CPQ does not support automatic product version upgrades in Quote 1.0. When using the Quote 1.0 engine, upgrading to a new product version is not supported for Variant Configuration (VC) products.

Note

For the pricing service to work properly within this integration, make sure that the Number of Decimals in Calculations is set to a value no greater than 3 in Setup  Pricing/Calculations  Rounding Setup for Quantity (or for Default if Quantity is not defined here).

Tip

By default, the quote summary on the user side of SAP CPQ displays only the list prices of products added to the quote. It is possible to edit the way prices display in the quote summary by using a custom responsive template (CartSummary template on the Shared page) and Quote.Items scripting properties, which you can use to fully access the prices of the current quote items.

In order to send prices from the SAP CPQ quote to the SAP back-end system, such as SAP ERP (ECC) or SAP S/4HANA when an order is placed, you can manually map pricing conditions in the SAP CPQ Setup. For more information, see Order Creation/Update Mapping.



Pricing Procedure Mapping

Pricing procedures are defined in SAP S/4HANA and consist of different pricing conditions. In SAP CPQ, you can map pricing conditions to quote item or header fields.
Set Up Pricing Procedure in SAP ERP

In order to set up the pricing procedure, adjustments need to be maintained in SAP ERP, along with the settings in SAP General Attribute Mappings on the SAP CPQ side.
Map Pricing Response to Quote Columns

The pricing response from SAP Variant Configuration and Pricing can be made visible in SAP CPQ if you map it to quote columns.
Pricing Details on Items

The Pricing Details on Items feature allows sales representatives to view or edit pricing details on quote items for products synchronized from SAP Variant Configuration and Pricing.
Pricing Behavior for Products Created/Edited via SOAP API

The Variant Pricing mechanism behaves in a specific way in case products are created or edited via SOAP API.
Yes
No