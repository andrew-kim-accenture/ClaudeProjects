# Appendix | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/8ff6b16f921a4354b2b0796bb527e247.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Manual Build Steps


	
Appendix
	
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
Appendix

How to Find SAP CPQ API URL
You need to have the SAP CPQ API URL to use in SAP Cloud Integration as the address path to call the APIs. See the API documentation guide for information on SAP CPQ APIs.
To access SAP CPQ API, use the following URLs:

<application root>/wsAPI/CPQAPI.asmx - this is the set of user level functions like Business Partner Replication and Sales Order Confirmation.

<application root>/wsAPI/wssrv.asmx - this is the set of admin level functions like Material Replication and Pricing Condition Replication.

How to Set Up Cloud Connector
You need a Cloud Connector Virtual Host URL for SAP ERP, which will be used inSAP Cloud Integrationn system as address path to call the SAP ERP.

Login to your SAP HANA Cloud Connector system using an administrator user.

Select the Account of your SAP Cloud Integration system.

Click on Access Control to add Mapping Virtual to Internal System.

Click Add.

Select ABAP System in Back-end Type and click Next.

Select HTTPS as Protocol and click Next.

Enter the Internal Host and click Next. You can find the HTTPS host and port of your system in SMICM transaction Goto  Services.

Enter the Internal Port and click Next.

Enter the Virtual Host which you have to maintain in SAP Cloud Integration iFlows and click Next.

Enter the Virtual Port which you have to maintain in SAP Cloud Integration iFlows and click Next.

Select Principal Type as none and click Next.

Enter the Description and click Next.

Click Finish.

Select the Entry for Virtual Host Mapping created in above steps.

Click Add in Resource Accessible and enter the character/ as URL Path.

Click Save.

On this page
How to Find SAP CPQ API URL
How to Set Up Cloud Connector
Yes
No