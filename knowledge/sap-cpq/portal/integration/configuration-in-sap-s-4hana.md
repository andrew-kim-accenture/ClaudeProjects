# Configuration in SAP S/4HANA | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/b261a303085147a1b537efba3864d8c2.html?locale=en-US&state=PRODUCTION&version=2603
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
Configuration in SAP S/4HANA

This section describes how to configure SAP S/4HANA for the purpose of integration.



Create User

Certificate Management in SAP S/4HANA

Prerequisite
Release Inbound Interfaces

Do the following steps to release inbound interfaces:
Create Business System for SAP S/4HANA

This chapter describes the procedure to create a business system that represents the SAP S/4HANA system.
Define Logical System

This describes the procedure to create a logical system that represents the SAP CPQ system in SAP S/4HANA system. Logical systems are defined as cross-client systems.
Business Partner Replication from SAP S/4HANA to SAP CPQ

To replicate your business partners from SAP S/4HANA to SAP CPQ, perform the following steps:
Material Replication from SAP S/4HANA to SAP CPQ using SOAP

To replicate material from SAP S/4HANA to SAP CPQ using SOAP, do the following steps:
Configuration for Filter Values

Filter objects is used to remove the S/4HANA outbound processing code values which are not supported by the receiver system. During S/4HANA inbound processing these code values are added again.
Business Configuration Set

Business Configuration Set C4C_INTEGRATION_CS and C4C_INTEGRATION_CC contains additional customizing setting for SAP CPQ and SAP S/4HANA integration. BC set C4C_INTEGRATION_CC contains client-independent customizing entries for the ALE message types. Activate this BC set in the SAP S/4HANA client you use for cross-client customizing.
Automatically Generate Integration Settings for Data Exchange

Pricing Condition Filter

This describes the procedure to create an IDoc filter in SAP S/4HANA system. To allow only PPR0 Pricing Condition data to flow to SAP CPQ system.
Yes
No