# Create Markets | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/4a5c5dfdd70847ee95d3c37aeecf9b33.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create Communication User
	
Enable the Integration with SAP Cloud Integration
	
Enable Integration with SAP S/4 HANA ERP
	
Enable Integration with SAP Variant Configuration and Pricing
	
SAP General Attribute Mappings
	
Pricing Setup


	
Maintain Pricing Procedure in SAP CPQ
	
Create Markets
	
Create Pricebook
	
Discounting (Optional)
	
Discounting Priorities (Optional)
	
Setup Calculations on Item Add/Copy/Delete
	
Setup Calculations on Field Value Changes
	
Rounding Setup
	
Configure Workflow in SAP CPQ
	
Partner Functions
	
Product Replication Setup
	
Enable Quote and Item Comments
	
Configuration in SAP Event Mesh
	
Configuration in SAP Master Data Integration
	
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
Create Markets

A market is created in SAP CPQ against every Sales Organization of SAP S/4HANA Cloud. This will help in pricing determination in the Quote in the SAP CPQ system.

Procedure

Login to your SAP CPQ system using an Administrator User.

In the left menu bar, choose Setup  Setup.

In left navigation bar, select Pricing/Calculations  Markets.

Choose Add New.

Enter the following details:

Market Code: Sales Organization name from SAP S/4HANA Cloud. For example, <1710>

Market Name: For example, <Sales Org US>

Currency: For example, <USD>

Market Factor: For example, 1

Choose Save.

In left navigation bar, select Pricing/Calculations  Market Visibility.

Choose Add New.

In Step 2, select Market Name created above, for example, Sales Org US.

In Step 3, enter Visibility Condition as 1.

Choose Save.

Yes
No