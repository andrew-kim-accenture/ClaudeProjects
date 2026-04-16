# Release Inbound Interfaces | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/54148410821f44cda89c75a1b70de418.html?locale=en-US&state=PRODUCTION&version=2603
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
Release Inbound Interfaces

Do the following steps to release inbound interfaces:

Activate Inbound SOAP for IDoc

Access the following transaction:

Transaction Code

	

SICF

In the Service Path field enter /sap/bc/srt/IDoc.

Click Execute.

Check if the service is active; If not then right click the IDoc service and select Activate Service.

If it has been activated, it will be like below:

Otherwise you need to Activate Service.

Register Service for IDoc Inbound

Access the following transaction:

Transaction Code

	

SRTIDOC

Select the Register Service radio button.

In the Service Attributes section, enter the following parameters:

Parameter

	

Value




URI SOAP Application

	

urn:sap-com:soap:runtime:application:idoc




Name of Web Service Definition

	

GENERIC




Call Address (ICF Path)

	

/sap/bc/srt/idoc

Click Execute.

Create a new request for this action and input the short description with meaningful value.

Click Ok.

On this page
Activate Inbound SOAP for IDoc
Register Service for IDoc Inbound
Yes
No