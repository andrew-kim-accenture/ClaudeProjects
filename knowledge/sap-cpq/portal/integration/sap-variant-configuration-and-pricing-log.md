# SAP Variant Configuration and Pricing Log | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/18fdf41bb8644b0ba9b0c64c974f5cec.html?locale=en-US&state=PRODUCTION&version=2603
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
SAP Variant Configuration and Pricing Log

Processes pertaining to the integration with SAP Variant Configuration and Pricing are logged in the SAP Variant Configuration and Pricing Log.

You can access the log in Setup  Developer Tools  SAP Variant Configuration and Pricing Log. The log is automatically available when the integration with SAP Variant Configuration and Pricing is enabled and works on both quote engines.

The log can be used for issue diagnostics and troubleshooting purposes. It contains information related to the following areas:

knowledge base synchronization

the configuration and pricing of synchronized products

the document pricing feature

calls executed via the Customizing API

Note

Only the processes related to knowledge base synchronization are logged at all times by default. To log any of the other types of processes, you must enable the switch Enable temporary logging for all calls, in which case all external calls will be logged for the following 30 minutes. Once you enable this option, a message appears on the same page displaying the precise time until which all calls will be logged. The message disappears when the logging period expires.

You can use the VcIntegrationEventLogs API to retrieve information from the log.

Yes
No