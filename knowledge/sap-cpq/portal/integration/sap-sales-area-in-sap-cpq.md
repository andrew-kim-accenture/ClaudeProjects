# SAP Sales Area in SAP CPQ | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/dbadf57edc1e450b8313b754132b53cd.html?locale=en-US&state=PRODUCTION&version=2603
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
SAP Sales Area in SAP CPQ

SAP Sales Area is an eight-character code, which is a combination of sales organization, distribution channel and division.

Before defining a sales area in SAP CPQ, you first need to:

manually create markets in SAP CPQ

manually create pricebooks for simple products in SAP CPQ, as prices for simple products will be sent from SAP ERP to SAP CPQ pricebooks via Upsert Pricebook With Distribution ChainUpsertPricebookWithDistributionChain method.

Sales Organization
Sales organization is market code in SAP CPQ. Markets related to SAP ERP sales organizations will have a market code that is equal to the sales organization code. Sales organization code is a four-digit alphanumeric, case-insensitive code.
Distribution Channel
Distribution channel is a field in SAP CPQ pricebooks. The field can be edited only when SAP CPQ is integrated with SAP ERP or SAP S/4HANA. Distribution channel is a two-digit alphanumeric, case-insensitive code.
Distribution Chain
Distribution chain is a combination of sales organization and distribution channel. The six-character code is also displayed in SAP CPQ pricebooks. The distribution chain code cannot be edited, as it is automatically created below the Distribution Channel field. Distribution chain is used for importing pricebook entries over the SAP CPQ API.
Division
A division code is a two-digit alphanumeric, case-insensitive code. Division is set up in SAP General Attribute Mappings.
Related Information
Define SAP General Attribute Mappings
Introduction to the Variant Configuration Integration
On this page
Sales Organization
Distribution Channel
Distribution Chain
Division
Related Information
Yes
No