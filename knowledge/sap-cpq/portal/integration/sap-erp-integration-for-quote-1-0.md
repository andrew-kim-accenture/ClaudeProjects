# SAP ERP Integration for Quote 1.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/d73de79fd5ac40e29bd0913905ad5a86.html?locale=en-US&state=PRODUCTION&version=2603
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
SAP ERP Integration for Quote 1.0

The SAP CPQ – SAP ERP integration keeps data synchronized between the two systems in real time. This document describes the procedure to configure the basic integration between SAP ERP and the SAP CPQ Quote 1.0 engine using SAP Cloud Integration.

The purpose of this document is to describe the general configuration steps required to manually set up the configuration within the system landscape that has already been installed.

Key benefits of integrating SAP CPQ with SAP ERP are as follows:

Products are synchronized from a remote SAP ERP system over SAP Cloud Integration.

Prices for simple products are sent from SAP ERP to SAP CPQ pricebooks over SAP Cloud Integration.

Product and pricing data is always up to date.

Customers, together with all details, are sent from SAP ERP to SAP CPQ over SAP Cloud Integration.

Manual data maintenance is reduced.

Note

To successfully integrate any system with SAP CPQ, the application parameter Allowed origins for the CORS filter needs to be configured in the way explained in Application Parameters 1.0.

Note

In Setup  Product Catalog  Products, products obtained via synchronization with SAP ERP have the value Yes in the column Synced from Back Office. The column Synced from Back Office is visible only when SAP CPQ is integrated with a back office application, such as SAP ERP.

Yes
No