# Automatically Generate Integration Settings for Data Exchange | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/5a9bb46cceb74b5f846c2a1b5c91e5d4.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create User
	
Certificate Management in SAP ERP
	
Release Inbound Interfaces
	
Business Configuration Set
	
Define Logical System
	
Automatically Generate Integration Settings for Data Exchange
	
Pricing Condition Filter
	
IDOC Data Filtration
	
Activate Change Pointers for IDocs
	
Configuration in SAP Cloud Integration
	
Configuration in SAP CPQ
	
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
Automatically Generate Integration Settings for Data Exchange

To Automatically Generate Connectivity settings for Data Exchange navigate using one of the following paths.

Transaction Code

	

RCPQ_CONNECTIVITY

Generate Integration Settings: Step 1: Select the scope of Integration exactly as scoped in the SAP CPQ Solution and choose Next.

Business Partners

Products

Sales Quotes

Pricing Conditions

Generate Integration Settings: Step 2: Maintain the following:

Field

	

Entry




Logical System

	

Do one of the following:

Enter the logical system of the SAP CPQ system or

Click Create Logical System to create new logical system.




Job Schedule Interval

	

Enter the frequency with which the inbound and outbound IDocs should be processed in the SAP ERP system.




Job User

	

Enter the user using which batch jobs are scheduled.

Generate Integration Settings: Step 3: Enter the connection information about the SAP Cloud Integration system to generate the RFC destinations.

Field

	

Entry




Runtime URL

	

Worker node URL of the SAP Cloud Platform Integration tenant (without HTTPS ://)




Proxy details (Optional)

	

Host name, service name, and the access details of the forward or reverse proxy?




Authentication (basic or certificate)

	

Either import the certificate or enter the user credentials.

Choose Next.

In the Summary screen, select the Generate button to generate the configuration entities.

In the confirm pop-up screen choose Yes.

In the log you can check which entities were created.

Yes
No