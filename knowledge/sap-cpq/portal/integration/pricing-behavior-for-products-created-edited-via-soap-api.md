# Pricing Behavior for Products Created/Edited via SOAP API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/668f3fab1b5742d8b6d9a8fb632a5751.html?locale=en-US&state=PRODUCTION&version=2603
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
Pricing Behavior for Products Created/Edited via SOAP API

The Variant Pricing mechanism behaves in a specific way in case products are created or edited via SOAP API.

If the SAP Variant Configuration and Pricing integration is enabled and the Pricing Mechanism node is not listed in the ImportMaterialsFromERP SOAP API call, the resulting products have Variant Pricing selected as the pricing mechanism.

If the SAP Variant Configuration and Pricing integration is not enabled and the Pricing Mechanism node is not listed in the ImportMaterialsFromERP SOAP API call, the resulting products have the default pricing mechanism selected.

Variant Pricing can be selected only when the SAP Variant Configuration and Pricing integration is enabled, and the product is flagged as an SAP product (isSyncedFromBackOffice) = 1.

Related Information
Pricing
Technical Overview
Yes
No