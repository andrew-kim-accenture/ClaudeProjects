# Automatically Generate Integration Settings for Data Exchange | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/36b40f8824b149919fc07deb9d5b1fd8.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create User
	
Certificate Management in SAP S/4HANA
	
Release Inbound Interfaces
	
Create Business System for SAP S/4HANA
	
Define Logical System
	
Business Partner Replication from SAP S/4HANA to SAP CPQ
	
Material Replication from SAP S/4HANA to SAP CPQ using SOAP
	
Configuration for Filter Values
	
Business Configuration Set
	
Automatically Generate Integration Settings for Data Exchange
	
Pricing Condition Filter
	
Configuration in SAP Cloud Integration
	
Configuration in SAP CPQ
	
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
Automatically Generate Integration Settings for Data Exchange

To Automatically Generate Connectivity settings for Data Exchange navigate using one of the following paths.

Transaction code

	

RCOD_CONNECTIVITY

Generate Integration Settings: Step 1: Select SAP Cloud Platform Integration as the middleware and click Next.

Generate Integration Settings: Step 2: Select the scope of Integration exactly as scoped in the SAP CPQ Solution and choose Next.

Business Partners

Products

Sales Quotes

Pricing Conditions

Generate Integration Settings: Step 3: Maintain the following and choose Next.

Field

	

Entry




Logical System

	

Do one of the following:

Enter the logical system of the CPQ system or

Click Create Logical System to create new logical system.




Job Schedule Interval

	

Enter the frequency with which the inbound and outbound IDocs should be processed in the S/4HANA system.




Job User

	

Enter the user using which batch jobs are scheduled.

Generate Integration Settings: Step 4: Enter the connection information about the SAP Cloud Integration system to generate the RFC destinations. Choose Next.

Field

	

Entry




Runtime URL

	

Worker node URL of the SAP Cloud Integration tenant (without HTTPS ://).




Proxy details (Optional)

	

Host name, service name, and the access details of the forward or reverse proxy?




Authentication (basic or certificate)

	

Host name, service name, and the access details of the forward or reverse proxy?

In Generate Integration Settings: Step 5 of 6-Consumer Proxy Settings screen, 5enter the URL Access path for Business Partner and Product Replication. Enter the SAP Cloud Integration system details in Connection Parameters and choose Certificate based authentic * /ation of SAP Cloud Integration system.

Note

You can take the URL Access Path from relevant IFlow of your SAP Cloud Integration Web UI and for that service path add /cxf and maintain against the respective service.

Choose Next.

In the Summary screen, select the Generate button to generate the configuration entities.

In the confirm pop-up screen choose Yes.

In the log you can check which entities were created.

Yes
No