# Download ROOT CA Certificates | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/bbcc7b215eed4e6786dd56582f98553c.html?locale=en-US&state=PRODUCTION&version=2603
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
Download ROOT CA Certificates

Go to https://service.sap.com/tcs web site.

Navigate to Download Area  Root Certificates.

Download the SAP Passport CA Certificates and Save.
Note

Save the certificates in .cer format.

Go to SAP Cloud Integration URL, for example:: https://xxxx-tmn.hci.int.sap.hana.ondemand.com/itspaces/ and log in with an administrator user. Navigate using the following path: Monitor   Keystore under Manage Security.

Download the ROOT Certificates of SAP Cloud Integration with the following names:

Baltimore CyberTrust Root

Verizon Public SureServer CA G14-SHA2

Note

In case of error downloading certificates, go to Internet Explorer   Tools  Internet Options  Content   Certificates   Trusted Root Certification authorities. Export the relevant certificate from the list.

Yes
No