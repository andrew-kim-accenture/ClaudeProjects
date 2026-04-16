# Release Inbound Interfaces | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/bbafd56458ef41ae8f362dc3060fa480.html?locale=en-US&state=PRODUCTION&version=2603
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
Release Inbound Interfaces

Activate Inbound SOAP for IDoc
Access the following transaction:

Transaction Code

	

SICF

In the Service Path field enter /sap/bc/srt/IDoc.

Choose Execute.

Check if the Service is Active; If not then right click the IDoc service and select Activate Service.

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

Create a new Request for this action and input the short description with meaningful value.

Click Ok.

On this page
Activate Inbound SOAP for IDoc
Register Service for IDoc Inbound
Yes
No