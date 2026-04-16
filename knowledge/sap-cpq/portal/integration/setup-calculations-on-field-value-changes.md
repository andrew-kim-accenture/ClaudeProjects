# Setup Calculations on Field Value Changes | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/75a4aee6932f425fa032406b8a988c65.html?locale=en-US&state=PRODUCTION&version=2603
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
Setup Calculations on Field Value Changes

Some existing and new quote fields must be set up in such a way that whenever their value is changed, a specific set of calculation is triggered.

Procedure

Login to SAP CPQ system using an Administrator user.

In the left menu bar, choose Setup  Setup.

In left navigation bar, select Quotes  Fields, Calculations, Layout.

Expand the MainItem section.

Add the calculations to the fields as listed below:

Field

	

Calculations




One-Time Discount Percent

	

Variant Pricing – All Item Fields

Variant Pricing – All Item Total Fields

Total Amount




One-Time Discount Amount

	

Item One-Time Discount Percent (from One-Time Discount Amount)

Item One-Time Net Price

Item One-Time Extended Amount

Product Type One-Time Net Price

Product Type One-Time Discount Amount

Product Type One-Time Discount Percent

Total One-Time Net Price

Total Amount

Total Product Discount Amount

Total Average Product Discount Percent

Item One-Time Gross Margin Percent

Product Type One-Time Gross Margin Percent

Total One-Time Gross Margin Percent




One-Time Net Price

	

Item One-Time Discount Amount (from One-Time Net Price)

Item One-Time Discount Percent (from One-Time Discount Amount)

Item One-Time Extended Amount

Product Type One-Time Net Price

Product Type One-Time Discount Amount

Product Type One-Time Discount Percent

Total One-Time Net Price

Total Amount

Total Product Discount Amount

Total Average Product Discount Percent

Item One-Time Gross Margin Percent

Product Type One-Time Gross Margin Percent

Total One-Time Gross Margin Percent




One-Time Extended Amount

	

Item One-Time Discount Amount (from One-Time Extended Amount)

Item One-Time Discount Percent (from One-Time Discount Amount)

Item One-Time Net Price

Item One-Time Extended Amount

Product Type One-Time Net Price

Product Type One-Time Discount Amount

Product Type One-Time Discount Percent

Total One-Time Net Price

Total Amount

Total Product Discount Amount

Total Average Product Discount Percent

Item One-Time Gross Margin Percent

Product Type One-Time Gross Margin Percent

Total One-Time Gross Margin Percent




Quantity

	

Item One-Time Extended List Price

Item One-Time Extended Amount

Item One-Time Extended Cost

Item One-Time Discount Amount (from One-Time Discount Percent)

Product Type One-Time Net Price

Product Type One-Time List Price

Product Type One-Time Discount Amount

Product Type One-Time Discount Percent

Product Type One-Time Cost

Total One-Time List Price

Total One-Time Net Price

Total Amount

Item Recurring Extended List Price

Item Recurring Extended Amount

Item Recurring Discount Amount (from Recurring Discount Percent)

Item Recurring Extended Cost

Product Type Recurring Net Price

Product Type Recurring List Price

Product Type Recurring Discount Amount

Product Type Recurring Discount Percent

Product Type Recurring Cost

Total Recurring List Price

Total Recurring Net Price

Total Recurring Amount

Total Product Discount Amount

Total Average Product Discount Percent

Total Recurring Product Discount Amount

Total Average Recurring Product Discount Percent

Total Recurring Cost

Total Cost

Item One-Time Gross Margin Percent

Item Recurring Gross Margin Percent

Product Type Recurring Gross Margin Percent

Product Type One- Time Gross Margin Percent

Total One- Time Gross Margin Percent

Total Recurring Gross Margin Percent




Recurring Discount Percent

	

Variant Pricing – All Item Fields

Variant Pricing – All Item Total Fields

Item Estimated Total Contract Value

Item Estimated Billing Value

Total Estimated Total Contract Value

Total Recurring Amount




Recurring Discount Amount

	

Variant Pricing – All Item Fields

Variant Pricing – All Item Total Fields

Item Estimated Total Contract Value

Item Estimated Billing Value

Item Estimated Billing Value for Service Contract Products

Total Estimated Total Contract Value

Total Recurring Amount




Recurring Net Price

	

Item Recurring Discount Amount (from Recurring Net Price)

Item Recurring Discount Percent (from Recurring Discount Amount)

Item Recurring Extended Amount

Product Type Recurring Net Price

Product Type Recurring Discount Amount

Product Type Recurring Discount Percent

Total Recurring Net Price

Total Recurring Amount

Total Recurring Product Discount Amount

Total Average Recurring Product Discount Percent

Item Recurring Gross Margin Percent

Product Type Recurring Gross Margin Percent

Total Recurring Gross Margin Percent




Recurring Extended Amount

	

Item Recurring Discount Amount (from Recurring Extended Amount)

Item Recurring Discount Percent (from Recurring Discount Amount)

Item Recurring Net Price

Item Recurring Extended Amount

Product Type Recurring Net Price

Product Type Recurring Discount Amount

Product Type Recurring Discount Percent

Total Recurring Net Price

Total Recurring Amount

Total Recurring Product Discount Amount

Total Average Recurring Product Discount Percent

Item Recurring Gross Margin Percent

Product Type Recurring Gross Margin Percent

Total Recurring Gross Margin Percent




Contract Start Date

	

Item Contract End Date

Item Contract End Date Service Contract

Item Estimated Total Contract Value

Product Type Estimated Total Contract Value

Total Estimated Total Contract Value




Contract End Date

	

Item Estimated Total Contract Value

Product Type Estimated Total Contract Value

Total Estimated Total Contract Value




Contract Change Activation Date

	

Item Estimated Total Contract Value

Product Type Estimated Total Contract Value

Total Estimated Total Contract Value

These calculations are automatically added to the bottom of the existing list of calculations. You can rearrange them according to the business model.

Expand the CartTotal section.

Add the calculations to the fields as listed below:

Field

	

Calculations




Item Total One-Time Discount Percent

	

Variant Pricing – All Item Fields

Variant Pricing – All Item Total Fields

Total Amount




Item Total Recurring Discount Percent

	

Variant Pricing – All Item Fields

Variant Pricing – All Item Total Fields

Item Estimated Total Contract Value

Item Estimated Billing Value

Total Estimated Total Contract Value

Total Recurring Amount

These calculations are automatically added to the bottom of the existing list of calculations. You can rearrange them according to the business model.

Choose Save.

Yes
No