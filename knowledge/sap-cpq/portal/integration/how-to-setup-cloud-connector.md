# How to setup Cloud Connector | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/3fc9888ba33d465e8c13bf8d013abf26.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Manual Build Steps


	
Ticket Component
	
Appendix


	
How to find CPQ API URL
	
How to setup Cloud Connector
	
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
How to setup Cloud Connector
Purpose

You need to have Cloud Connector Virtual Host URL for SAP S/4HANA system, which will be used in SAP Cloud Integration system as address path to call the S/4HANA system.

Procedure

Login to your SAP HANA Cloud Connector system using an Administrator User.

Select the Account of your SAP Cloud Integration system.

Click on Access Control to add Mapping Virtual to Internal System.

Click on Add button.

Select ABAP System in Back-end Type and Click Next.

Select HTTPS as Protocol and Click Next.

Enter the Internal Host and Click Next. You can find HTTPS host and port of your system in SMICM transaction Goto  Services

Enter the Internal Port and Click Next.

Enter the Virtual Host which you must maintain in SAP Cloud Integration integration flows and Click Next.

Enter the Virtual Port which you must maintain in SAP Cloud Integration integration flows and Click Next.

Select Principal Type as none and Click Next.

Enter the Description and Click Next.

Click on Finish button.

Select the Entry for Virtual Host Mapping created in above steps.

Click on Add in Resource Accessible and Add / as URL Path.

Click Save.

On this page
Purpose
Procedure
Yes
No