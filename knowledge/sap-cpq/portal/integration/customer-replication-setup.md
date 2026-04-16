# Customer Replication Setup | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/37a1ae2b572d4f30b5829d01975649d3.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Preparation
	
Configuration


	
Configuration in SAP ERP
	
Configuration in SAP Cloud Integration
	
Configuration in SAP CPQ


	
Define SAP Provider Settings
	
Create SAP CPQ Communication User
	
Product Replication Setup
	
Customer Replication Setup
	
Pricing/ Discounting Setup
	
Sales Quote to Order Setup
	
Data Loading
	
Manual Build Steps
	
Troubleshooting Scenario
	
Integration with SAP S/4HANA
	
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

Maintain Customer Role

Login to your SAP CPQ system using an administrator user.

Click on Setup in menu bar and choose Setup.

In left navigation bar, select Customer Role Defaults under Customers/ Customer Roles.

Click Add New.

Select the User Type and Customer Role.

Example:

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

Maintain Customer Field Permissions
Business can define which fields of customer to be made mandatory and which should be read only. Below steps deals with minimum fields needed for customer replication from SAP ERP system.

In left navigation bar, select Customer Field Permissions under Customers/Customer Roles.

Go to Ship To tab, click on the permission field and select Required for below fields:

First Name

Company

Country

Click Save.

In a similar way, the mentioned fields can be made mandatory for Bill To and End User.

On this page
Maintain Customer Role
Maintain Customer Field Permissions
Yes
No