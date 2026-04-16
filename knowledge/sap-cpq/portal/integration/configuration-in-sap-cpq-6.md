# Configuration in SAP CPQ | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/cacb5fc1524c4f0f801d4602fa3f1562.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Configuration in SAP Event Mesh


	
Configuration in SAP Event Mesh for Sending Quote from SAP CPQ to SAP S/4HANA Cloud
	
Configuration in SAP CPQ
	
Configuration in SAP Event Mesh for updating the status of SAP CPQ quote from SAP S/4HANA Cloud after Error Resolution
	
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
Configuration in SAP CPQ

Procedure
The following steps describe the setup in SAP CPQ:

Login to SAP CPQ as an Administrator.

Navigate to the Setup  Setup of SAP CPQ instance.

Choose Providers  Subscription to Events.

Select Add new Subscription to Event.

Enter the following information:

Name: For example, <Solution_order_to_SAP_S/4HANA_Cloud>

Description: For example, <send Solution Order to SAP S/4HANA Cloud via SAP Event Mesh>

Webhook URL: URL should be in the format <<URL>/ messagingrest/v1/topics/<topic-name>/messages>.For example, <https://enterprise-messaging-pubsub.cfapps.sap.hana.ondemand.com/messagingrest/v1/topics/<topic-name>/messages>

Note

URL should be fetched from the uri of the service key of EMS instance with protocol “httprest”. Make sure to remove wss:// and other url parameters from the Uri. Topic-name needs to be URL-encoded, for example ‘company/CPQQuote/Topic/Quote’ needs to be entered as ‘company%2FCPQQuote%2FTopic%2FQuote’.

Webhook HTTP Method: POST

Event Name: QuoteEvent

Quote Event: OnPlaceOrder

Authentication Type: OAuth

Authentication URL: URL from entry token endpoint of section with protocol “httprest” in SAP BTP Service Key of the Event Mesh instance

Authentication HTTP method: POST

Client ID: ClientID from entry token endpoint of section with protocol “httprest” in SAP BTP Service Key of the Event Mesh instance

Client Secret: ClientSecret from entry token endpoint of section with protocol “httprest” in SAP BTP Service Key of the Event Mesh instance

Add customer header entry by choosing Add custom header entry and enter the following details:

Key: x-qos

Value: 1

Save your settings.

Yes
No