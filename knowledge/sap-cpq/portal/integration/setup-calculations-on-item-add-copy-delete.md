# Setup Calculations on Item Add/Copy/Delete | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/f5d7b2fbf08a4d9ebef25b6321912cc1.html?locale=en-US&state=PRODUCTION&version=2603
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
Setup Calculations on Item Add/Copy/Delete

The list of standard SAP CPQ calculations is expanded with additional calculations when the Provider SAP Billing Revenue and Innovation Management is enabled. Some specific calculations must be added to the list of calculations that are triggered whenever a service contract item is added to the quote, as well as when the item is copied and deleted.

Procedure

Login to the SAP CPQ system using an Administrator user.

In the left menu bar, choose Setup  Setup.

In the left navigation bar, select Quotes  Fields, Calculations, Layout.

Choose Fields and Calculations  Calculations on Add/Copy/Delete Item.

A list of Calculations that are triggered whenever an item is added, copied, or deleted is displayed.

Choose Add Calculation.

Choose → to add the following calculations to add them to the list for Service Contract Products:

Item Estimated Billing Value Service Contract

Variant Pricing – All Item Fields

Variant Pricing – All Item Total Fields

Item Contract End Date

Item Contract End Date Service Contract

Item Estimated Billing Value

Item Estimated Total Contract Value

Total Estimated Total Contract Value

Total Amount

Total Recurring Amount

These calculations are automatically added to the bottom of the existing list of calculations. You can rearrange them according to the business model.

Choose Save.

Yes
No