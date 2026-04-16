# Business Configuration Set | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/df26d3edbd684954a5f9815d156a2718.html?locale=en-US&state=PRODUCTION&version=2603
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
Business Configuration Set

Purpose

Business Configuration Set CALDCPQ_ERP_INT is delivered with add-on CODERINT 600. The BC sets contains additional customizing setting for SAP CPQ and SAP ERP integration.

If BC set CALDCPQ_ERP_INT is activated, below manual configurations can be skipped. If you do not use standard SAP customizing for sales document types, the BC Set CALDCPQ_ERP_INT will not be activated completely. In this case, carry out the relevant steps manually as described in the main integration guide accordingly.

Maintain Output Type

Maintain ALE Outbound Process Code

Procedure

Call transaction SCPR20 and enter the BC Set CALDCPQ_ERP_INT.

Activate the BC Set clicking in the Activate BC Set button or press the F7 key.

Create a transport request that can be used for the activation in other systems.

Select Value for Functional Area in next screen and click on button Copy Values. Example: 0001
Note

Select the Functional area value which is used for Work Ticket Scenario.

Press Enter.

Note

Ignore if there are any warning messages during the activation of the BC set.

On this page
Purpose
Procedure
Yes
No