# Create Pricebook | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/bddbc6aac03d43249b9e4fac4e416b70.html?locale=en-US&state=PRODUCTION&version=2603
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
Create Pricebook

A Pricebook is created for each SAP CPQ Market and is mapped to the distribution channel maintained in SAP S/4HANA. Market is mapped with sales organisation. In this way, during the quoting process, SAP CPQ can provide the sales organisation (Market) and distribution channel (Pricebook) as pricing attributes for Variant Configuration and Pricing services to determine correct pricing for the item in the quote.

To create a Pricebook, you must group it under a market, define who sees it, and then add the relevant entries (products and prices).

You can do so using the following procedure:

Go to Setup  Pricing/Calculations  Pricebooks.

Go to Pricebooks  Market and a list of the underlying Pricebooks is displayed.

Select Add New Pricebook and a page with the Definition and Entries tabs is displayed.

Define the Pricebook name.

Insert the Distribution Channel two-digit code that is maintained in SAP S/4HANA.

Select Visible to Everyone to make the pricebook accessible to all users. Alternatively, you can define advanced or simple visibility conditions to restrict access to the pricebook. If not set to be visible to everyone, a pricebook must have at least one visibility condition defined so that the system can trace it and include it in the pricebook drop-down list on Quotes.

Define the validity of the pricebook using Valid From and Valid Until.

Optionally, you can describe the Pricebook in Description and choose Save.

Navigate to the Entries tab to add products and their respective prices.

Note

For more details on creating and managing pricebooks, refer to Pricebooks in the SAP CPQ Setup and Administration Guide.

Ensure that the user selects the Default Pricebook (with the distribution channel from SAP S/4HANA Cloud) and the Default Market on the User Page.

Yes
No