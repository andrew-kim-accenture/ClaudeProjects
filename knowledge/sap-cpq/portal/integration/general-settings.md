# General Settings | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/454cb403a7534628a6c7b2aa5f542783.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Knowledge Base Synchronization Settings
	
General Settings
	
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
General Settings

The Configuration and Pricing on Demand feature is now available for SAP CPQ Quote 2.0 and Variant Configuration and Pricing integration. This feature enables you to decide whether they you want to trigger the two processes, Rules Evaluation (configuration update), and Pricing without having to wait for backend response after each click during configuration. The application parameter Enable Varient Configuration and Pricing Calls on Demand in the General Settings tab must be enabled on the SAP Variant Configuration and Pricing Provider Settings page to enable this functionality.

Once the parameter is enabled, the Rules Evaluation (configuration update), and Pricing will not be triggered after every click during configuration. To apply your variant configuration updates, click on the update configuration button  located at the top of the quote header. This will initiate the configuration and pricing updates. You can view the updated prices by enabling the Show Price option found under the Configuration Summary tab. By default, this option is disabled.

Note

The update configuration button  is only available for SAP Variant Configuration type products.

Use the UpdateVariantConfiguration API for Configuration and Pricing calls on demand for variant configuration type products.

Yes
No