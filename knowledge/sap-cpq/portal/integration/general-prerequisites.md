# General Prerequisites | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/c67539eab5994d8083de12d7538706d3.html?locale=en-US&state=PRODUCTION&version=2603
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
	
SAP Sales Cloud - SAP CPQ Integration for Quote 2.0
	
SAP Sales Cloud - SAP CPQ Integration for Quote 1.0


	
General Prerequisites
	
Configuration
	
Ticket Components
	
User Journey from SAP Sales Cloud to SAP CPQ for Quote 1.0
	
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
General Prerequisites

There are several general prerequisites for integrating SAP Sales Cloud and SAP CPQ.

You have set up the SAP ERP Integration for Quote 1.0.

You have an integration tenant in SAP CPQ, SAP Sales Cloud and in SAP Cloud Integration respectively.

SAP CPQ instance

Ensure that your SAP CPQ instance is in place before you start implementing SAP CPQ integration with SAP Sales Cloud.

SAP Sales Cloud tenant

Ensure that you have your SAP Sales Cloud tenant.

URL Example: https://<YourTenant>crm.ondemand.com

SAP Cloud Integration tenant

The SAP Cloud Integration Runtime URL is included in the SAP CPI provisioning mail.

URL Example: https://<YourTenant>-iflmap.hana.ondemand.com

SAP CPQ and SAP Sales Cloud must be synchronized in terms of product (material) master, markets, and pricebooks. This synchronization occurs through the Enterprise Resource Planning software: SAP ERP or SAP S/4HANA. In the examples, SAP ERP is used.

A matching user must be created in both systems.

If you are integrating both SAP Commerce Cloud and SAP Sales Cloud with SAP CPQ, ensure that your SAP Sales Cloud quotes start with 1000000000 and that in SAP CPQ you use 8-digit quote numbers.

Related Information
System Requirements for SAP Integrations
User Journey from SAP Sales Cloud to SAP CPQ for Quote 1.0
Yes
No