# Introduction to the Variant Configuration Integration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/a58d450892ca4f3197904aa4b79af60f.html?locale=en-US&state=PRODUCTION&version=2603
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
Introduction to the Variant Configuration Integration

Integrating SAP CPQ with Variant Configuration provides a cloud-based solution for simplifying and enhancing sales of complex configurable products.

SAP Variant Configuration and Pricing is the service providing this integration. It provides SAP CPQ with knowledge bases, the configuration result and the pricing result.

Why Integrate SAP CPQ with Variant Configuration

Variant Configuration is a module of the back-end system used for configuring exceedingly complex products. Although SAP CPQ also supports product configuration, Variant Configuration exists specifically for the use of configuring complex tangible goods for manufacturing purposes.

In other words, although Variant Configuration models can be recreated in SAP CPQ, that would come at a high cost in terms of time and resources. That is why the primary motivation for integrating SAP CPQ with Variant Configuration is eliminating these costs. This is especially convenient to clients who are already working with Variant Configuration models and wish to begin using SAP CPQ.

Moreover, highly complex models are typically a back-end feature. However, this integration unites the front-end practicality of SAP CPQ with the detailed features of Variant Configuration, resulting in a well-rounded solution.

On the one hand, integrating Variant Configuration expands the technical capabilities of SAP CPQ. On the other hand, SAP CPQ makes Variant Configuration models client-friendly and sales-oriented. With an integrated solution, users can experience Variant Configuration models in a practical, fast and lightweight cloud context, featuring a user-friendly and customizable interface. In SAP CPQ, the models can be adapted for a specific market or customer group, thus further optimizing the sales process.

In other terms, integrating SAP CPQ with Variant Configuration provides a cloud-based solution for simplifying and enhancing sales. However, this integration is unrelated to the manufacturing process, which primarily relies on on-premise solutions.

Note

Variant Configuration integration is available for both the Quote 1.0 and Quote 2.0 engines. The integration works in the same way on both quote engines.

Integration Flow

First, SAP ERP supplies SAP CPQ with simple materials via SOAP API. In SAP CPQ, products are imported from SAP ERP with specific product data (see Technical Overview for the list of data that is sent) and flagged as products originating from SAP systems. This is performed via SAP Cloud Integration, a cloud-based microservice which facilitates the integration of front-end and back-end applications.

Once simple products are imported from SAP ERP, SAP CPQ needs to obtain the configuration in order for these products to become complex, configurable Variant Configuration models. This information is obtained through the process of knowledge base synchronization – the process of exporting configurations and other model-related information from back-end applications into the cloud.

A knowledge base contains relevant information such as configurations, characteristics and pricing conditions. When knowledge base synchronization is executed, products flagged as SAP products are converted into configurable or parent/child products. The models are available in the product catalog and can be configured and added to the quote. When these products are configured on the user side, rules and constraints are triggered from the SAP Variant Configuration and Pricing configuration endpoint.

When SAP CPQ is integrated with Variant Configuration, the Quote-First Approach is used. The reason for that is the fact that the market and other fields need to be selected for SAP Variant Configuration and Pricing to use reference characteristics and pricing attributes in order to provide SAP CPQ with the correct configuration.

An example of a reference characteristic is customer country/region – if this value is specified in SAP CPQ, the characteristic provides SAP Variant Configuration and Pricing with the context that is necessary for it to retrieve the correct response from the pricing table.

For technical details about the integration flow, refer to the Technical Overview.

Related Information
System Requirements for SAP Integrations
Integrations with SAP Back-End Systems
Order Creation/Update Mapping
Integrate SAP CPQ with SAP Variant Configuration and Pricing
SAP Variant Configuration and Pricing
On this page
Why Integrate SAP CPQ with Variant Configuration
Integration Flow
Related Information
Yes
No