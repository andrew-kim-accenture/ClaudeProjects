# Define Logical System | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/5a407572b92d43d5a811266c24a32d33.html?locale=en-US&state=PRODUCTION&version=2603
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
Define Logical System

This describes the procedure to create a logical system that represents the SAP CPQ system in SAP S/4HANA system. Logical systems are defined as cross-client systems.

Access the following transaction:

Transaction Code

	

BD54

Click New Entries.

Create a logical system that identifies the on-demand system, as given in the table below:

Field

	

Entry




Logical System*

	

<logical system name of SAP CPQ tenant> Ex: CPQINTS4H




Name

	

<Description> Ex: SAP CPQ integration with S/4HANA.

Click Save

Click Ok to confirm the pop-up for saving the details in the transport request.

Yes
No