# Quote-First Approach for Variant Configuration Integration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/51d923feba9149a787d090fbe7a86627.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Quote-First Approach for Variant Configuration Integration
	
SAP Sales Area in SAP CPQ
	
Sales Logic for Variant Configuration Models
	
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
Quote-First Approach for Variant Configuration Integration

When SAP CPQ is integrated with SAP Variant Configuration and Pricing, the modelling in SAP CPQ needs to be done in such a way that users land on a new quote, not the catalog.

Additionally, upon landing on a new quote, a Bill-to customer, which is synchronized from SAP ERP over the SAP Cloud Integration to SAP CPQ, needs to be selected first. To make customer a required field that needs to be filled out first, enable the When creating a new quote, require customer to be selected first toggle switch for a particular user type in Setup  Users  User Types.

Related Information
Introduction to the Variant Configuration Integration
Technical Overview
Yes
No