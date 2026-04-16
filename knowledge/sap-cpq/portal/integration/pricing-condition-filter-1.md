# Pricing Condition Filter | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/9cb2cbe0b45c4a65a840fa22d4f13c8f.html?locale=en-US&state=PRODUCTION&version=2603
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


	
SAP S/4HANA Sales Order Integration for Quote 1.0


	
Purpose
	
Preparation
	
Configuration


	
Configuration in SAP S/4HANA


	
Create User
	
Certificate Management in SAP S/4HANA
	
Release Inbound Interfaces
	
Create Business System for SAP S/4HANA
	
Define Logical System
	
Business Partner Replication from SAP S/4HANA to SAP CPQ
	
Material Replication from SAP S/4HANA to SAP CPQ using SOAP
	
Configuration for Filter Values
	
Business Configuration Set
	
Automatically Generate Integration Settings for Data Exchange
	
Pricing Condition Filter
	
Configuration in SAP Cloud Integration
	
Configuration in SAP CPQ
	
Initial Data Load
	
Manual Build Steps
	
SAP S/4HANA Sales Order Integration for Quote 2.0
	
SAP Billing and Revenue Innovation Management Integration
	
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
Pricing Condition Filter

This describes the procedure to create an IDoc filter in SAP S/4HANA system. To allow only PPR0 Pricing Condition data to flow to SAP CPQ system.

Access the following transaction:

Transaction Code

	

BD64

2. The Distribution Model for CPQ will be created by connectivity report, Search and Expand the Distribution Model SAP CPQ Integration with S/4HANA.

Expand the COND_A message type and double click on No filter set.

In a Change Filter popup, click on Create Filter Group button.

Expand the Filter Group and select the field Condition Type.

Click on Add button to add a value to filter field PPR0.

Click Ok button in popup windows and Save the Distribution Model.

Yes
No