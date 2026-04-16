# Variant Configuration Integration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/244a99754e7f4e72b0a480e47a765b12.html?locale=en-US&state=PRODUCTION&version=2603
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
Variant Configuration Integration

The SAP CPQ – Variant Configuration integration unites front and back-office processes to simplify complex product configurations for sales representatives.

The SAP CPQ – Variant Configuration integration is available for both the Quote 1.0 and Quote 2.0 engines and it works in the same way.

The Variant Configuration integration is provided by the configuration and pricing services of SAP Variant Configuration and Pricing. Limitations of the Variant Configuration integration with SAP CPQ are available in SAP Note 2726240 .
Note

It is possible to integrate the Advanced Variant Configurator (AVC) with SAP CPQ. However, the integration currently only operates in the scope supported by the integration with SAP Variant Configuration and Pricing. Namely, the integration with the Advanced Variant Configurator requires models with syntax that is compatible with the Variant Configurator. That way, a knowledge base is created and treated like a Variant Configurator model. However, the new features specific to Advanced Variant Configurator modeling are not supported, including extensions based on pre-processing and post-processing BAdIs.

Alternatively, the Variant Configuration service can forward calls to the Advanced Variant Configurator instead of processing them with its own engine. The prerequisite for this process is having the latest release of SAP S/4HANA and activated advanced knowledge-base generation. For more details see the Administration Guide for SAP Variant Configuration and Pricing and SAP Note 2711932 .

In addition, if you are using the Advanced Variant Configurator integration, note that the performance of the integration will be faster if the layout of products synchronized from the Advanced Variant Configurator remains unchanged in SAP CPQ.



Introduction to the Variant Configuration Integration

Integrating SAP CPQ with Variant Configuration provides a cloud-based solution for simplifying and enhancing sales of complex configurable products.
Integrate SAP CPQ with SAP Variant Configuration and Pricing

To enable the SAP Variant Configuration and Pricing integration on the SAP CPQ side, configure the following settings in the Setup.
Define SAP General Attribute Mappings

After connecting SAP CPQ to SAP Variant Configuration and Pricing, you need to map general attributes.
Knowledge Base Diagnostics

You can directly access and manage diagnostic data related to knowledge base synchronization on the Knowledge Base Diagnostics page, available in the Developer Tools section of the Setup.
Technical Overview

The Variant Configuration integration is provided by the SAP Variant Configuration and Pricing service.
Pricing

You can select Variant Pricing or Pricebook Lookup as the pricing type for Variant Configuration products in SAP CPQ.
SAP Variant Configuration and Pricing Log

Processes pertaining to the integration with SAP Variant Configuration and Pricing are logged in the SAP Variant Configuration and Pricing Log.
Yes
No