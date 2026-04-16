# Partner Functions in SAP CPQ Quote | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/3d4133fc854f4341b1d7d93eb99f9e9d.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Set Sold-To Party to Mandatory
	
Partner Functions in SAP CPQ Quote
	
Maintain Business Partner Permissions
	
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
Partner Functions in SAP CPQ Quote

The SAP S/4HANA Cloud system can only deal with one value per partner function. Therefore, the SAP CPQ system must not send more than one business partner for each partner function.

Procedure

Login to SAP CPQ system using an Administrator user.

In the left menu bar, choose Setup  Setup.

In left navigation bar, choose Quotes  Partner Functions.

Choose Edit for Sold- to party, Ship-to party, Bill-to party, and Payer partner functions as they should be transferred to SAP S/4HANA Cloud.

Turn on the Can be used only once on quote for each partner function.

Choose Save.

Note

Partner functions can only be replicated from SAP CPQ to SAP S/4HANA Cloud if the partner function key exists in SAP S/4HANA Cloud and was entered on the More tab in the integration flow configuration.

Yes
No