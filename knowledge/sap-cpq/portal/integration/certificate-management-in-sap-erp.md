# Certificate Management in SAP ERP | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/f1bbc40717bd4608bf8414a841067e18.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Download ROOT CA Certificates
	
Maintain SSL Server Standard Trusted Cert List
	
Maintain SSL System Client Cert and Trusted Cert List
	
Export SAP ERP Client Certificate
	
Mapping Cloud Connector Certificate to Integration User in SAP ERP
	
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
Certificate Management in SAP ERP

Prerequisite

The customer network environment should be prepared. The SSL should be enabled on SAP ERP ABAP Server. SAP ERP Server/Client Certificates should be signed by the supported CA which is trusted by SAP Cloud Solution and SAP Cloud Managed Services.

For preparing the network environment, network security team that takes care of the customer network is responsible.

SSL needs to be enabled on SAP ABAP server by SAP Basis Consultant.

Note

Ensure all the certificates used are valid and are not expired.

Note

For details refer to Note 510007 - Setting up SSL on Web Application Server ABAP

For requesting signed certificates by SAP, go to https://support.sap.com/tcs

There are mainly two partners in the landscape, SAP side and Customer side.

SAP Cloud Solution certificates are signed by SAP Passport CA or TC Trust Center.

Yes
No