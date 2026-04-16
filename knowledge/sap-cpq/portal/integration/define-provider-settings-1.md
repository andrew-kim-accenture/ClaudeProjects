# Define Provider Settings | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/ebf6681e880b4e869e455d1023b58c83.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions


	
System Requirements for SAP Integrations
	
Integrations with SAP Back-End Systems
	
SAP Sales Cloud Integration


	
SAP Sales Cloud Version 2 - SAP Sales Cloud Quote 2.0


	
Scenarios for SAP Sales Cloud - SAP CPQ Integration for Quote 2.0
	
Integration Overview and Prerequisites
	
Configure Single Sign-On with Federation Settings
	
Configuration in SAP CPQ


	
Define Provider Settings
	
Adding Subscription to Events
	
Involved Parties in SAP CPQ - SAP Sales Cloud V2 Integration for Quote 2.0
	
Configuration in SAP Sales Cloud V2
	
Configuration in SAP Sales Cloud Integration
	
SAP Sales Cloud - SAP CPQ Integration for Quote 2.0
	
SAP Sales Cloud - SAP CPQ Integration for Quote 1.0
	
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
Define Provider Settings

This page describes the procedure for enabling the integration in SAP CPQ.

Turn on the Integration with SAP Cloud Integration

Log in to SAP CPQ as administrator.

Go to Setup  Providers  Providers.

Click SAP.

The Available SAP Providers page displays.

Click SAP Integration Suite.

In the Common Settings tab, turn on the Enable integration switch.

In Authentication Mode, select BasicAuth.

Enter the username and the password of the SAP Cloud Integration user in Integration username and Integration password, respectively.

Under General setting, turn on Send customers along with quote payload.

In REST API base URL address, enter the Cloud Platform URL and a postfix /http to connect to the http adapter.

REST API base URL address: the base REST API URL address of the SAP Cloud Integration – SAP CPQ specific package. The value is delivered by the administrator and shouldn’t be changed on the fly. In addition, the value identifies a specific SAP Cloud Integration environment, that is, the tenant.

Endpoint that gets SAP object data details: a relative endpoint address of the SAP Cloud Integration artifact that gets an object from the SAP system over SAP Cloud Integration. The call acts as a proxy to SAP OData services and can query any publicly visible object from SAP Sales Cloud V2. Leave this field empty.

Endpoint that processes posted data in xml format: a relative endpoint of the SAP Cloud Integration artifact that processes the posted data in the XML format. Leave this field empty.

Endpoint that sends CPQ quote to SAP systems: a relative endpoint of the SAP Cloud Integration artifact that sends the SAP CPQ quote to SAP systems. Leave this field empty.

Click Save.

Yes
No