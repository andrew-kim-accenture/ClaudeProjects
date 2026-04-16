# Customer Replication Setup | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/cc0bb7e49dd744ba9c08b5d9064fc4f5.html?locale=en-US&state=PRODUCTION&version=2603
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
Customer Replication Setup

Do the following steps to replicate the customer setup:

Maintain Customer Role

Login to your SAP CPQ system using an Administrator User.

Click on SETUP in menu bar and choose Setup.

In left navigation bar, select Customer Role Defaults under Customers/ Customer Roles.

Click on Add New Button.

Select the User Type and Customer Role.

Example

User Type

	

Customer Role

	

User Info

	

User’s Company Info




Partner

	

Bill To

	

X

	 


Sales

	

Ship To

	 	

X

Click Save.

Note

Customer Role Defaults settings has a significance in maintaining the Bill To and Ship To in the Customer Info tab of the CPQ quote hence maintain this setting as the User Type used for creating the quote.

Maintain Customer Field Permissions
Purpose

Business can define which fields of customer to be made mandatory and which should be read only. Below steps deals with minimum fields needed for customer replication from SAP S/4HANA system.

Procedure

In left navigation bar, select Customer Field Permissions under Customers/Customer Roles.

Go to Ship To tab, click on the permission field and Select Required for below fields:

Fields




First Name




Company




Country/Region

Note

Maintain the field permissions as per your business needs, setting field permission as Required will make the field mandatory in the customer master, hence make sure that all the mandatory field values are available while business partner master data replication from S/4HANA system.

Click Save.

In similar way, the mentioned fields can be made mandatory for Bill To and End User.

On this page
Maintain Customer Role
Maintain Customer Field Permissions
Yes
No