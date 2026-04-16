# Define Provider settings | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/a8eeda3d091241448648159990aa2770.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Configuration in SAP Cloud Integration
	
Configuration in SAP CPQ


	
Define Provider settings
	
Create CPQ Communication User
	
Product Replication Setup
	
Customer Replication Setup
	
Pricing/ Discounting Setup
	
Pricing Procedure Mapping
	
Sales Quote to Order Setup
	
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
Define Provider settings

Login to your SAP CPQ system using an Administrator User.

Click on SETUP in menu bar and choose Setup.

Select Providers in left navigation bar and then select SAP.

Select SAP Cloud Integration in Available SAP Providers.

In Common Settings tab, Switch on Enable Integration.

Select BasicAuth in Authentication Mode dropdown.

Maintain Integration Username and password as the username and password of SAP Cloud Integration User.

Under General Setting, Switch on Send customers along with quote payload.

Enter the Cloud Integration URL in REST API base URL address and a postfix /http to connect to http adapter.

Click Save.

Navigate to S/4 ERP Settings tab, maintain the endpoint as /CPQ/S4/Quote2Order.

Click Save.

Select SAP ERP in Available SAP Providers.

Select Connect SAP ERP as TRUE.

Click Save.

Yes
No