# IDOC Data Filtration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/588cad4fd7eb444ebf4b73dc56f5ef4d.html?locale=en-US&state=PRODUCTION&version=2603
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
IDOC Data Filtration

Purpose
This describes the procedure to create an IDoc filter in the SAP ERP system to allow only specific data IDOC to flow to SAP CPQ system.
Procedure

Access the following transaction:

Transaction Code

	

BD64

The Distribution Model for SAP CPQ will be created by connectivity report, Search and Expand the Distribution Model ‘Callidus CPQ Integration’.

Expand the MATMAS_CFS message type and double click on No filter set.

In the Change Filter popup, click on the Create Filter Group button.

Expand the Filter Group and select the field, on which basis IDoc will be filtered.

Click on Add button to add a value to filter field.

Click Ok button in popup windows and Save the Distribution Model.

In similar way you can filter all other Message Types.

Note

In case the field you want is not available in Field group, Go to Tcode BD59 in SAP ERP system to add the field in message type and then filter based on that field.

On this page
Purpose
Procedure
Yes
No