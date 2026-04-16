# Pricing Procedure Mapping | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/64b2e830075141da80ea64a4d7fdb33d.html?locale=en-US&state=PRODUCTION&version=2603
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
Pricing Procedure Mapping

Pricing procedures are defined in SAP S/4HANA and consist of different pricing conditions. In SAP CPQ, you can map pricing conditions to quote item or header fields.

Pricing procedure mapping can be accessed in Setup  Pricing/Calculations  Pricing Procedures. The feature that is available depends on whether you are using the pricing service of SAP Variant Configuration and Pricing or not:

If SAP Variant Configuration and Pricing is used as the pricing service for your products, you define the way pricing data from SAP Variant Configuration and Pricing is used in SAP CPQ by creating pricing condition mappings. In SAP CPQ, it is possible to modify the condition records that are calculated using the determined pricing procedure and the context of the quote. The pricing conditions from SAP Variant Configuration and Pricing in SAP CPQ can be manually manipulated, for example, by mapping a quote item custom field to an individual pricing condition. For more information, see Pricing Procedures from SAP Variant Configuration and Pricing.

If SAP Variant Configuration and Pricing isn’t used as the pricing service for your products, pricing conditions can still be mapped to quote fields in order to send prices from the SAP CPQ quote to SAP S/4HANA when an order is placed. For more information see Order Creation/Update Mapping.

Note

Pricing procedure mapping is supported in the integration of SAP CPQ Quote 2.0 with SAP Billing and Revenue Innovation Management. It is possible to add Variant Configuration sales products to the same quote with service and subscription products which are used in the integration with SAP Billing and Revenue Innovation Management.

Yes
No