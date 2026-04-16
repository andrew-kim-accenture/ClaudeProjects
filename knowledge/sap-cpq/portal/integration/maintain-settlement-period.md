# Maintain Settlement Period | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/d3c4778c1f454e8d919e7396702cf3d0.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Configure Workflow in SAP CPQ
	
Partner Functions
	
Product Replication Setup


	
Products: Types and Configuration
	
Maintain Product Types
	
Maintain Product Categories
	
Maintain Service Contract Duration
	
Maintain Service Profile
	
Maintain Response Profile
	
Maintain Billing Date
	
Maintain Settlement Period
	
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
Maintain Settlement Period

This step is only required for the replication of service contract products. The Settlement Period attribute is automatically added to the list of global attributes when SAP CPQ – SAP S/4HANA Cloud integration is enabled in SAP CPQ and must be maintained manually. You can do so using the following procedure:

Procedure

Login to SAP CPQ system using an Administrator user.

In the left menu bar, choose Setup  Setup.

In left navigation bar, select Product Catalog  Attributes.

Search for Settlement Period in the list of attributes.

Choose Edit for Settlement Period.

Choose Attribute Values  Add Values and add the following details:

Value: Description of the billing period, for example, <Monthly>

Value Code: For example, <BILL0001>

The Value Code must match the settlement period of the service contract product in SAP S/4HANA Cloud.

Billing Period: To be selected from the dropdown for example, <Monthly>

Choose Save.

Yes
No