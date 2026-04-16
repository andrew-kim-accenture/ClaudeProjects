# Rounding Setup | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/904c304ecb544586bb80fd774343e3c7.html?locale=en-US&state=PRODUCTION&version=2603
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
Rounding Setup

Rounding in SAP CPQ and SAP S/4HANA Cloud is different. To ensure that quote item values from SAP CPQ are rounded properly, the best practice is to define the default rounding that is applied to all quote item columns.

Procedure

Login to SAP CPQ system using an Administrator user.

In the left menu bar, choose Setup  Setup.

In left navigation bar, select Pricing/Calculations  Rounding Setup.

The list of existing rounding rules is displayed.

Choose Edit for the Default setup.

Column Name is disabled and Default is displayed.

Enter Number of Decimals in Calculations and Number of Decimals when Rounding.

Note

For the rounding to be properly transferred to SAP S/4HANA Cloud via the API, you must ensure you enter the same number in both the fields.  Since SAP S/4HANA Cloud uses a different number of decimals for different currencies, you should enter a high number of decimals in these fields in SAP CPQ, higher than the number of decimals in SAP S/4HANA Cloud. This way you ensure that the values can be properly rounded in SAP S/4HANA Cloud.

Choose Save.

The rounding is now applied.
Note

If you are not applying default rounding and you need to define rounding for each quote item field, you must ensure that you not only set up rounding for that field but also for all other fields that affect its value.

Yes
No