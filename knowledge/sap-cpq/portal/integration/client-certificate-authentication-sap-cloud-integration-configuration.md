# Client Certificate Authentication - SAP Cloud Integration Configuration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/1bfba3fed2dd4d9d911ecb3f6d345c96.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Integration with Sales Orders in SAP S/4HANA Cloud
	
Integration with SAP S/4HANA Cloud Solution Order


	
Preparation
	
Configuration in SAP CPQ
	
Configuration in SAP Event Mesh
	
Configuration in SAP Master Data Integration
	
Configuration for Integration in SAP S/4 HANA Cloud
	
SAP Cloud Integration Configuration


	
Creating User Credentials in SAP Cloud Integration System
	
Client Certificate Authentication - SAP Cloud Integration Configuration
	
Copy package SAP CPQ - Quote 2.0 Integration with SAP S/4HANA Cloud Solution Order to Design section of SAP Cloud Integration
	
Configuration of the Integration Flow - Replicate Quote 2.0 From SAP CPQ To SAP S/4HANA Cloud Solution Order
	
Configuration of the Integration Flow - Update SAP CPQ Quote Status
	
Configuration of the Integration Flow - Replicate Product from SAP S/4HANA Cloud to SAP CPQ
	
Configuration of the Integration Flow - Replicate Business Partner from SAP Master Data Integration to CPQ
	
Maintain and Deploy Value Mapping for CPQ Integration with S4HANA Cloud for Solution Order
	
iFlow: Supported Grant Types for SAP CPQ API Authentication
	
Data Replication
	
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
Client Certificate Authentication - SAP Cloud Integration Configuration

Log on to the tenant management node of the SAP Cloud Integration system with the URL http://<tenant management node URL>/itspaces.

Choose Monitor from the left navigation bar.

Navigate to Manage Security section and choose Keystore.

Click on Add and Select Key Pair.

Enter the Alias name for the certificate and select the pfx or p12 certificate to upload.
Note

Note that SAP Cloud Integration requires certificate in *.p12 & *.pfx file format for uploading the Key Pair certificate. The certificate uploaded in SAP CPQ should be used to generate files in the *.p12 & *.pfx file format.

Enter the Password for the uploaded *.p12 & *.pfx certificate file and click Add.

Verify under Entries that the certificate key pair uploaded in added.

Yes
No