# Maintain SSL System Client Cert and Trusted Cert List | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/fc18791f967542768d79ff5a36afd773.html?locale=en-US&state=PRODUCTION&version=2603
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
Maintain SSL System Client Cert and Trusted Cert List

Choose SSL client SSL Client(Standard) PSE folder.

From Menu Path choose Certificate  Import to import the SAP Passport CA certificate.

Switch from Display to Change mode.

From Menu Path choose Edit  Add Certificate to add the imported certificate to the chosen certification list.

Repeat previous 2 steps for Cloud Platform Integration Trust Root CA Certificates.

Click Save on the standard tool bar.

Note

In case no supported CA signed client certificates for SAP ERP is available, it could be downloaded from the SAP Cloud Integration Certificate store, and then imported into SAP Trust Manager for use.

Yes
No