# Define SAP Provider Settings | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/00ead93beb914b888baef8898241d04f.html?locale=en-US&state=PRODUCTION&version=2603
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
Define SAP Provider Settings

To integrate SAP CPQ with SAP ERP, you need to complete this procedure in Setup  Providers.

Log into your SAP CPQ system using an administrator user.

Go to Setup  Providers  Providers  SAP.

Available SAP providers display.

Click Integration Suite.

A new page displays.

On the Common Settings tab, turn on the Enable integration toggle switch.

In General settings, define the following:

Send customers along with quote payload: enable this switch so that SAP CPQ can send customer details such as bill-to, ship-to and end user details, together with the quote data to the SAP system. The quote data is sent in XML format.

In SAP Cloud Integration Service API Details, enter the following:

REST API base URL address: the base REST API URL address of the SAP Cloud Integration – SAP CPQ specific package. The value is delivered by the administrator and should not be changed on the fly. In addition, the value identifies a specific SAP Cloud Integration environment, that is, the tenant. The postfix/http should be included to connect to the HTTP adapter.

In the S/4 ERP Settings tab, maintain the endpoint as /Quote2Order (for example: /Quote2Order/dev).

Click Save.

You have defined common provider settings.

Go to Setup   Providers   Providers   SAP.

Click SAP ERP.

A new page displays.

Set Connect SAP ERP to TRUE.

Click Save.

The integration is now set up.

Yes
No