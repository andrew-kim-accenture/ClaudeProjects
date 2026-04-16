# Variant Configuration Integration Troubleshooting | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/665a9ee212394653a84a393035090802/cacdfe55f1a24510b77793b692a9dda9.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ TroubleshootingVersion: 2603English
Provide feedback on our search

	
SAP CPQ Troubleshooting
	
Integrations Troubleshooting


	
SAP Cloud for Customer Integration Troubleshooting
	
Variant Configuration Integration Troubleshooting


	
Error Diagnostics - SAP Variant Configuration and Pricing Integration
	
Error Codes from SAP Variant Configuration and Pricing
	
Configurator Troubleshooting
	
Document Generation Troubleshooting
	
Catalog Troubleshooting
	
Quote Troubleshooting
	
User Interface Troubleshooting
	
Setup Troubleshooting
	
Login Troubleshooting
	
Scripting Troubleshooting
	
Performance Troubleshooting
Variant Configuration Integration Troubleshooting

This section provides more information about common issues that may occur when integrating Variant Configuration with SAP CPQ.

1. Why was my product not added to the quote?

It is possible that the product is not flagged as salesRelevant (sales relevant) in the configuration response arriving from SAP Variant Configuration and Pricing. The flag needs to be set in SAP Variant Configuration and Pricing. The item which is not sales-relevant and that item’s child items can’t be added to the quote.

Alternatively, it is possible that some of the child products were not synchronized properly. In that case, you should repeat the knowledge base synchronization job. For more information see the Technical Overview.

2. Prices in SAP CPQ are not identical to the prices arriving from SAP Variant Configuration and Pricing. Why?
There are several reasons why prices in SAP CPQ can appear different from the prices from SAP Variant Configuration and Pricing. Make sure the suggestions from the following list are met:

Make sure all the products are properly synchronized. Synchronized products have the knowledge base ID, knowledge base effective date and other knowledge-base-related data populated for their product versions in the Setup.

Check if all the parameters are properly set up in SAP General Attribute Mappings.

If Base Price and Selected Options are not properly set up and have their default values (BASE and VARC), the prices for products will be 0. However, the surcharges (attribute prices) may display in the Configurator, because they are taken straight from the SAP Variant Configuration and Pricing pricing response.

For catalog prices to display, Pricing Procedure Name for Catalog Prices must be properly set and all products must have the correct unit of measure. If some of the products on the page are missing the unit of measure, none of the products on the page will have the prices displayed.

For pricing in the Configurator, the Unit of Measure is taken from the configuration response, and not from product definition. If there is an error stating that the unit of measure is incorrect, SAP Variant Configuration and Pricing didn’t return the correct unit of measure value in the configuration response.

If Market and Currency factors are applied on top of the prices from SAP Variant Configuration and Pricing, the total price in SAP CPQ may be lower than the price in SAP Variant Configuration and Pricing. In this scenario, the market and currency factors need to be set to 1 for the correct prices to display in SAP CPQ.

If no quote context is used, make sure all the parameters are populated on the SAP General Attribute Mappings provider page in Attributes (No Quote).

If the prices are still incorrect after you have applied all the steps, check the response payload for details. See Error Diagnostics - SAP Variant Configuration and Pricing Integration.

3. Product configuration is behaving differently than expected, errors occur during configuration and subitems are not added to the quote.
If product configuration is behaving differently for Variant Configuration products and errors are displaying, make sure the suggestions from the following list are met:

Check if everything works with a different effective date. If the product behaves normally with a different effective date, that means that the version of the product active for the current date was not synchronized successfully. In that case, repeat or fix the knowledge base synchronization job to resolve the issue.

Are all products from the knowledge base successfully synchronized? If there is a product missing, there may be null reference errors in the Developer Console, the user may not be able to edit the configuration, an invalid flag may be displayed next to the item, and so on. Repeat or fix the knowledge base synchronization job to resolve the issue.

If there are rules or triggers on the product, or attributes used as line items or containers in SAP CPQ, you may experience issues because those features are currently not supported.

If unexpected behavior keeps occurring during product configuration, check the response payload for details. See Error Diagnostics - SAP Variant Configuration and Pricing Integration.

4. Why is a synchronized product not visible in the Catalog?

Only simple products and configurable root products are visible in the Catalog. It is possible that the configurable product is not flagged as a root item.

Additionally, check which product version is used for the effective date that is selected. Maybe the product is not a root item in that product version.

5. A synchronized product was created in SAP CPQ with some product tabs, but other product tabs are missing from it. Why?

Product tabs in SAP CPQ are global – the same tab, with the same ID, can be used in different products. However, in SAP Variant Configuration and Pricing, product tabs have IDs that start from 1 for each product. See Technical Overview for more information.

6. What do I do if my knowledge base synchronization is incomplete or unsuccessful?

If a knowledge base synchronization job fails, first make sure that the SAP Variant Configuration and Pricing provider is properly configured in the Setup. If products are not synchronized even when the job is manually triggered via Execute Job, for the Sync from date, choose any date which is older than the effective date of the product in the knowledge base. Additionally, synchronizing products can fail if the products have rules or triggers, because this is currently not supported.

7. How do I correctly import simple products?

Before the knowledge base synchronization, import all the simple products to SAP CPQ, either automatically via ImportMaterialsFromERP API or manually. All products must exist in SAP CPQ before the synchronization, regardless of whether they are sales-relevant or not.

Simple products must contain the following information:

the product system ID must have the value of the material number,

the product must be marked as Synced from back office in Setup  Products,

unit of measure must be populated for catalog pricing to work.



Error Diagnostics - SAP Variant Configuration and Pricing Integration

Use the Developer Console to troubleshoot the communication between SAP CPQ and SAP Variant Configuration and Pricing.
Error Codes from SAP Variant Configuration and Pricing

These are the error codes for errors from SAP Variant Integration and Pricing, listed with the issues that cause them to appear and possible fixes.
Yes
No