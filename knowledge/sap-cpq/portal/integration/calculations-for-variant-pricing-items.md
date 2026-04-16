# Calculations for Variant Pricing Items | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/76e33bae38634129b660a1992a599665.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Pricing Procedures from SAP Variant Configuration and Pricing


	
Select Pricing Procedure in SAP CPQ
	
Determinations
	
Define Pricing Condition Mapping
	
Allowed Value Combinations
	
Pricing Condition Mapping on Quote
	
Calculations for Variant Pricing Items
	
Calculations for Combined SAP CPQ and Variant Pricing Items
	
CPQ Line Items Calculations and Fields
	
CTX Tags for Fields Mapped from Pricing Conditions
	
Example Procedure for Mapping Pricing Conditions
	
Order Creation/Update Mapping
	
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
Calculations for Variant Pricing Items

If you are using SAP Variant Configuration and Pricing as your pricing service and you mapped pricing procedures from SAP S/4HANA to quote fields, you need to assign the necessary calculations to quote fields in Setup  Quotes  Fields, Calculations, Layout  Fields and Calculations.

When Variant Pricing is the pricing type selected for a product, all the total prices are calculated in SAP Variant Configuration and Pricing. You need to add the following calculations to the quote item or header fields that are used in SAP CPQ pricing condition mapping to ensure that the prices are calculated and retrieved from SAP Variant Configuration and Pricing:

Calculation

	

Description




Variant Pricing - All Item Fields

	

Retrieves the pricing result from the SAP Variant Configuration and Pricing and maps item conditions to quote item fields.




Variant Pricing - All Item Total Fields

	

Retrieves the pricing result from the SAP Variant Configuration and Pricing and maps header conditions to Item Total fields.




Total Amount

	

Calculates total one-time amount as a sum of all item extended amounts. This calculation sets the price which is mapped to Item Total One-Time Extended Amount to the quote Total Amount.




Total Recurring Amount

	

Calculates total recurring amount as a sum of all item recurring extended amounts. This calculation sets the price which is mapped to Item Total Recurring Extended Amount to quote Total Recurring Amount.

In case of fields referencing recurring prices on subscription products, the calculations Item Contract End Date, Item Estimated Billing Value, Item Estimated Total Contract Value and Total Estimated Total Contract Value also need to be added.

Note

Standard SAP CPQ calculations can't be assigned to a quote field at the same time as calculations specifically used for pricing condition mapping. If you are using pricing condition mapping, only the dedicated calculations listed here should be assigned to fields to which conditions are mapped.

The fields Estimated Billing Value, Estimated Total Contract Value, and Contract End Date aren't calculated in SAP Variant Configuration and Pricing, which is why they can’t be mapped from pricing conditions. Instead, they need to be calculated in SAP CPQ. To manage that, you need to add standard SAP CPQ calculations where applicable.

In order to use the standard calculations Item Estimated Total Contract Value, Item Estimated Billing Value, and Total Estimated Total Contract Value, the quote item field Extended Amount needs to be mapped from the pricing condition.

Item Estimated Billing Value - calculated based on Extended Amount, which should be mapped from the pricing condition, and Billing Cycle.

Item Estimated Total Contract Value - calculated using the Extended Amount, Contract Start Date, and Contract End Date.

Item Contract End Date - calculated based on the Contract Start Date and Contract Duration.

Calculations on Add/Copy/Delete Item

The calculations for quote fields used in condition mapping should be set in the following order:

Calculations on Quote Item and Total Fields

Whenever an item or quote total field mapped from a pricing condition is edited, the prices should be retrieved from SAP Variant Configuration and Pricing. To make sure that happens, you need to set calculations from SAP Variant Configuration and Pricing on that field.

Note

The pricing condition mappings displayed in this sections are only examples and can be used as points of reference. However, the mappings which you create will differ from the provided examples, because they will be dependent on the way pricing procedures are set up in your back-end system.

Example 1: One-Time Discount Percent

The following example illustrates how you define condition mappings and set calculations for the field One-Time Discount Percent.

Example 2: Recurring Discount Percent

The following example illustrates how you define condition mappings and set calculations for the field Recurring Discount Percent.

Example 3: Item Total One-Time Discount Percent

The following example illustrates how you define condition mappings and set calculations for the field Item Total One-Time Discount Percent.

Example 4: Item Total Recurring Discount Percent

The following example illustrates how you define condition mappings and set calculations for the field Item Total Recurring Discount Percent.

On this page
Calculations on Add/Copy/Delete Item
Calculations on Quote Item and Total Fields
Yes
No