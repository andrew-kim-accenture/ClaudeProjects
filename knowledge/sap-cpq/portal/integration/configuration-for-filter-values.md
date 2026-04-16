# Configuration for Filter Values | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/f5cc7e1d0f454e3596c07bcff7bb0e59.html?locale=en-US&state=PRODUCTION&version=2603
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
Configuration for Filter Values

Filter objects is used to remove the S/4HANA outbound processing code values which are not supported by the receiver system. During S/4HANA inbound processing these code values are added again.

Filter Code Values
Note

These below steps are optional and should be performed based on your requirement.

To setup Filter Objects for Code value, navigate to below path.

Transaction Code

	

DRFF

Execute Replication Model Filters Activity, it will open a pop up screen.

Enter the Login credential for your S/4HANA system.

Select the relevant Replication Model and choose display. It will open a different window to Display Filter Criteria.

Click on Edit and choose the Filter Criteria to Include Business Objects.

Select the BP role to be Include in your business Partner replication to SAP CPQ.

For Example: FLCU01

Click on Show Segment filter and choose the Filter Object Business Partner Role-98601.

Choose Save.

Yes
No