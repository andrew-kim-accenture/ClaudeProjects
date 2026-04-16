# Maintain Product Types | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/f23af5caadc841088ec082a46edb3ea9.html?locale=en-US&state=PRODUCTION&version=2603
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
Maintain Product Types

The product type is mapped from SAP S/4HANA Cloud Material Group in SAP Cloud Integration middleware. If, during product replication, a product type does not exist in SAP CPQ, the product is not replicated and an error is raised. You must replicate the product manually, after you have maintained the product type in SAP CPQ.

You can create the product type in SAP CPQ using the following procedure:

Procedure

Login to SAP CPQ system using an Administrator user.

In the left menu bar, choose Setup  Setup.

In left navigation bar, select Product Catalog  Product Types.

Choose Add New and maintain the following details:

Product Type Name: For example, <Metal Processing>

Product Type Rank: For example, <10>

Choose Save.

Choose Add New and maintain the following details:

Product Type Name: For example, <Electronics>

Product Type Rank: For example, <11>

Choose Save.

Yes
No