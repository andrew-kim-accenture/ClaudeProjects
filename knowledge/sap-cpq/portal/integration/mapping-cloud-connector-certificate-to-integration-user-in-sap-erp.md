# Mapping Cloud Connector Certificate to Integration User in SAP ERP | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/bc1c5d21695a40099289550623d6ae75.html?locale=en-US&state=PRODUCTION&version=2603
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
Mapping Cloud Connector Certificate to Integration User in SAP ERP

Prerequisite
Obtain the SAP Cloud Integration client certificate from your administrator. The certification is available when the tenant is provisioned by SAP. You can also receive it on creating an incident in the component for your respective SAP Middleware (LOD-CPI/LOD-PI).
Procedure
Access the transaction using one of the following navigation options:

Transaction Code

	

SM30

In the Maintain Table Views screen, enter VUSREXTID in the Table/View field..

Choose Maintain.

In the External ID type field, enter DN.

Click New Entries.

Next to the External ID field, choose Import.

Import the Cloud Connector certificate obtained from your administrator. Example: cloudconnectorclient.cer

Enter the sequence number, by example 000.

In the User field, enter the technical ERP user you have created in the ERP system. For example: CPQINTEG.

Activate the user by checking the Activated field.

Click Save.

On this page
Prerequisite
Procedure
Yes
No