# Create CPQ Communication User | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/63c38b7811a042fb8fa046898b663601.html?locale=en-US&state=PRODUCTION&version=2603
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
Create CPQ Communication User

A Communication user need to be created in SAP CPQ System, which will be used in Cloud Platform Integration for basic authentication to CPQ.

Login to your SAP CPQ system using an Administrator User.

Click on SETUP in menu bar and choose Setup.

In left navigation bar, select Users under Users.

Click on Add New User Button.

Enter the First Name, Last Name and Email Address for Communication User.

Enter Username as COM_USER_CPQ and maintain the Initial Password.

Choose User Type as Sales.

Select Administrator.

Select Company as CallidusCloud (CALD).

Click Save.

Note

Login to CPQ system using the above user and reset the password and use same password to be used in CPI at the time of Creating User Credentials.

Yes
No