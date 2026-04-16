# Scenarios for SAP Sales Cloud - SAP CPQ Integration for Quote 2.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/5110faad7a4c4c26923aeccf01dffd95.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions


	
System Requirements for SAP Integrations
	
Integrations with SAP Back-End Systems
	
SAP Sales Cloud Integration


	
SAP Sales Cloud Version 2 - SAP Sales Cloud Quote 2.0


	
Scenarios for SAP Sales Cloud - SAP CPQ Integration for Quote 2.0


	
Subscription Contract Renewal
	
Integration Overview and Prerequisites
	
Configure Single Sign-On with Federation Settings
	
Configuration in SAP CPQ
	
Configuration in SAP Sales Cloud V2
	
Configuration in SAP Sales Cloud Integration
	
SAP Sales Cloud - SAP CPQ Integration for Quote 2.0
	
SAP Sales Cloud - SAP CPQ Integration for Quote 1.0
	
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
Scenarios for SAP Sales Cloud - SAP CPQ Integration for Quote 2.0

This page describes the scenarios covered in the SAP Sales Cloud Version 2 - SAP CPQ integration for Quote 2.0.

Typical User Scenario

In the typical user scenario, API calls are directly made between SAP Sales Cloud Version 2 and SAP CPQ. There is no shadow quote created in SAP Sales Cloud Version 2, and users do not interact with a separate landing page in SAP CPQ. Instead, the quote is directly synchronized between the two systems through API communication, streamlining the experience.

Synchronizing Data from SAP CPQ to SAP Sales Cloud Version 2

In order to have aligned quote data in both SAP CPQ and SAP Sales Cloud Version 2, data synchronization is handled via quote events in SAP CPQ, as well as APIs and IFlows in SAP Cloud Integration. When an action is triggered on the quote, SAP CPQ triggers a quote event that contains the relevant data. SAP Cloud Integration calls the quote APIs, reads the data and sends it back to SAP Sales Cloud Version 2.

Make Quote Primary

If there are multiple quotes assigned to an opportunity, one of them can be marked as primary using the Make Primary action. The Primary Quote flag is set automatically with Yes and it’s read-only. All other quotes assigned to the same opportunity are automatically marked as Not primary. After triggering this action, the payload for synchronization of the SAP Sales Cloud quote is sent, including the ID of the opportunity, the total value of the quote (Expected Amount in the opportunity) and the indicator that the quote is made primary.

Note

Configurable products synchronized from SAP Variant Configuration and Pricing to SAP Sales Cloud Version 2 can be used in a scenario for the SAP CPQ integration.

When synchronized configurable products are added to the SAP Sales Cloud Version 2 Quote, and the user lands from SAP Sales Cloud Version 2 to SAP CPQ, configurable products are added to the SAP CPQ quote with the Incomplete Configuration status in the Quotation tab. The prices of these items are all 0. However, when a configuration is edited, the edited item is updated with the prices from SAP Variant Configuration and Pricing.

Yes
No