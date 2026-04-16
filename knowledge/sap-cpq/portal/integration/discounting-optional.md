# Discounting (Optional) | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/86d0223b5a57463abed979ee53a9ddff.html?locale=en-US&state=PRODUCTION&version=2603
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
Discounting (Optional)

One of the major functionalities of SAP CPQ is on-the-fly discounts based on products, product types, product categories, users, and user types. You can setup discounting in Quote in your SAP CPQ system following below procedure.

Procedure

Login to SAP CPQ system using an Administrator user.

From the left menu bar, choose Setup  Setup.

In left navigation bar, select Pricing/Calculations.  Discounts.

Choose Add New.

Choose Select button to maintain the User Type as Sales under the Step 1.
Note

The above selection will allow users with user type ‘Sales’ to give discounts in Sales Quote, which we will be defined in the next step. Any condition for discount selection with User, User Type, Product, Product Type, or Category can be created.

Maintain the Maximum Value for Discount as 10. It will allow a Sales User to give maximum of 10 percent discount subject to approval.

Maintain Minimum Value for Discount as -10. It will allow Sales User to give minimum of -10 percent discount. Beyond -10 percent discount will be subject to approval.

Under Step 3, enter Condition as 1. Conditions can also be created using scripting languages.

Choose Save.

Yes
No