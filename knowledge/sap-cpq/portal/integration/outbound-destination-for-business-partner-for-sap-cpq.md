# Outbound Destination for Business Partner for SAP CPQ | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/73a2a034acdf4d4b8dbf46e8936a2fa7.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create Service Instances in SAP Master Data Integration for Business Partners replication
	
Outbound Destination for Business Partner for SAP CPQ
	
Distribution Model for SAP CPQ
	
Configuration for Integration in SAP S/4 HANA Cloud
	
SAP Cloud Integration Configuration
	
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
Outbound Destination for Business Partner for SAP CPQ

Note

An integration flow of SAP Cloud Integration is used for the integration with SAP CPQ .

Navigate to your subaccount and choose Connectivity  Destinations.

Choose New Destination.

Name

	

The name should have _BPOUTBOUND as suffix. The Master Data Integration checks for this suffix and sends out data to these systems, for example, <BusinessSystemName_BPOUTBOUND>. You must ensure that the Business_System_Name value is the same as the one used in creation of Service Instance.




Type

	

HTTP




URL

	

Endpoint URL of the Business Partner Integration flow in SAP Cloud Integration, for example, <URL>/cxf/scpmasterdata/bpreplicationtocpq>




Proxy Type

	

Internet




Authentication

	

Basic Authentication




User

	

SAP Cloud Integration Communication User Credentials

Choose Save.

Go to Additional Properties and enter MDOConsumer as true.

Yes
No