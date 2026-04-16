# Involved Parties in SAP CPQ - SAP Sales Cloud V2 Integration for Quote 2.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/e2a2c0ddbbec4e06ba25a90ad8fed335.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Integration Overview and Prerequisites
	
Configure Single Sign-On with Federation Settings
	
Configuration in SAP CPQ


	
Define Provider Settings
	
Adding Subscription to Events
	
Involved Parties in SAP CPQ - SAP Sales Cloud V2 Integration for Quote 2.0
	
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
Involved Parties in SAP CPQ - SAP Sales Cloud V2 Integration for Quote 2.0

In the SAP Sales Cloud V2 integration for Quote 2.0, business relationships of an organization and individual quotes are recorded via business partners and partner functions.

Note

Learn more about business partners and partner functions in SAP CPQ in the dedicated documentation.

Involved Parties Synchronization

To be able to relate sales quote and quote data to a specific involved party in SAP CPQ, you need to make sure that the involved parties data is synchronized from a back-end system, for example SAP S/4HANA, in both SAP CPQ and SAP Sales Cloud V2.

Business partner and partner function data can be synchronized either via the iFlows or via the following APIs:

Quotes

Business Partners

Partner Functions

Note

To be able to use the partner function Contact Person in this integration, you need to set the parameter Allow adding business partners on quotes without creating them first in Setup to TRUE in SAP CPQ. You can find the parameter in Setup    General  Application Parameters (Shopping Cart and Quotes).

Yes
No