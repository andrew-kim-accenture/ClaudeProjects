# Setting Up Generic Configuration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/2ea9b199b15641b2934aff0e47053334.html?locale=en-US&state=PRODUCTION&version=2603
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


	
SAP S/4HANA Cloud Service Instance Creation for Business Partner Read and Replicate
	
SAP CPQ Service Instance Creation for Business Partner Read and Replicate
	
Setting Up Generic Configuration
	
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
Setting Up Generic Configuration

Procedure

Go the SAP BTP subaccount where you want the SAP Master Data Integration instance to be created. Select Services  Instances and Subscriptions.

Choose Create.

Enter the following details:

Service: Master Data Integration

Plan: sap-integration

Runtime Environment: <Cloud Foundry>

Space for example: <sap-mdi>

Instance Name: For example, <Generic_configuration>

Choose Next and enter the JSON to create the service instance.

Choose Next.

Review and choose Create.

Select the created service instance and choose Create Service Key.

Choose Next  Create.
Note

Please refer to Prerequisites - Business System Configuration for configuring a Business System in SAP Master Data Integration using Generic Configuration. This is a onetime activity and should be carried out before data replication.

Yes
No