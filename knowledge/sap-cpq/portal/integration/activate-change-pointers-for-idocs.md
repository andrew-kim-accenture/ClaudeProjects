# Activate Change Pointers for IDocs | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/19a986b41695492ca1f48a39ea94ab41.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Preparation
	
Configuration


	
Configuration in SAP ERP


	
Create User
	
Certificate Management in SAP ERP
	
Release Inbound Interfaces
	
Business Configuration Set
	
Define Logical System
	
Automatically Generate Integration Settings for Data Exchange
	
Pricing Condition Filter
	
IDOC Data Filtration
	
Activate Change Pointers for IDocs
	
Configuration in SAP Cloud Integration
	
Configuration in SAP CPQ
	
Data Loading
	
Manual Build Steps
	
Troubleshooting Scenario
	
Integration with SAP S/4HANA
	
Integration with Sales Orders in SAP S/4HANA Cloud
	
Integration with SAP S/4HANA Cloud Solution Order
	
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
Activate Change Pointers for IDocs

Purpose
You create IDocs from change pointers to send new and updated master data from SAP ERP to the cloud solution.
Procedure

Open transaction SALE and follow the path: Modeling and Implementing Business Processes   Master Data Distribution  Replication of Modified Data.

Choose Activate Change Pointers – Generally.

Select the Change pointers activated – generally checkbox.

Choose Save, save it in a transport request, press Enter and choose Back.

Choose Activate Change Pointers for Message Types.

Select the Active checkbox for the following message types:

MATMAS_CFS

DEBMAS_CFS

Choose Save and select a transport request.

Open transaction SE16, input V_TBD62 in Table Name field, press Enter.

Input below message types, press Enter, and verify if there are value existing:

MATMAS_CFS

DEBMAS_CFS

On this page
Purpose
Procedure
Yes
No