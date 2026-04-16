# Integration with SAP S/4HANA Cloud Solution Order | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/b999a8467e8e4cfb9884eb7741426907.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Preparation
	
Configuration in SAP CPQ
	
Configuration in SAP Event Mesh
	
Configuration in SAP Master Data Integration
	
Configuration for Integration in SAP S/4 HANA Cloud
	
SAP Cloud Integration Configuration
	
Data Replication
	
Variant Configuration Integration
	
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
Integration with SAP S/4HANA Cloud Solution Order

This document describes the steps to configure the basic integration between SAP CPQ and SAP S/4HANA Cloud using SAP Cloud Integration.

SAP CPQ can be integrated with SAP S/4HANA Cloud to provide a workflow for users to automatically create a solution order in SAP S/4HANA Cloud whenever an SAP CPQ quote is sent to SAP S/4HANA Cloud. The follow-up documents are created inside SAP S/4HANA Cloud automatically. This integration only works with the Quote 2.0 engine in SAP CPQ.

The Integration is triggered by the “Place Order” event when user chooses Place Order action in SAP CPQ Quote, that is, when the user finishes the quoting process and sends the final quote to the backend which would create a Solution Order. SAP Variant Configuration and Pricing is used as a default mechanism for configuring and pricing products in SAP CPQ. The SAP CPQ Quote including product information and pricing details is transferred to SAP S/4HANA Cloud.

Note

Product master data and product attribute master data that are created in SAP CPQ and used in the quote creation will not be used in the integration flow to create SAP S/4HANA Cloud Solution Order from SAP CPQ Quote. Hence, those quote line items will not be created in the solution order.

The setup instructions in this guide only describes the basic authentication. Nevertheless, certificate-based authentication might also be possible, depending on the system preconditions.

Yes
No