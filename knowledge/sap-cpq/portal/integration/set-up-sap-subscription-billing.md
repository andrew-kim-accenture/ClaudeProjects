# Set Up SAP Subscription Billing | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/c1c81336acc34bfcaece08a50d90e600.html?locale=en-US&state=PRODUCTION&version=2603
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
	
SAP Commerce Cloud Integration
	
SAP Subscription Billing Integration for Quote 2.0


	
Prerequisites
	
Setup Adjustments on the SAP CPQ Side


	
Adding Subscriptions to Events
	
Set Up SAP Subscription Billing
	
Adjust Number of Decimals in Rounding Setup
	
Basic Integration Scenario
	
Create SAP Subscription Billing Product
	
Set Values for Rate Plan Template Charges
	
Use SAP Subscription Billing Products on User Side
	
Quote Item Fields on SAP Subscription Billing Products
	
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
Set Up SAP Subscription Billing
Context
Note

This integration is deprecated.

All the information needed in this section should be provided by the administrator managing SAP Subscription Billing. Settings are configured on the tenant level.

Procedure
Go to Setup   Providers   SAP.

Available SAP providers display.

Click SAP Subscription Billing.

A new page displays.

Turn on the Enable SAP Subscription Billing Integration toggle switch.
In Authentication Settings, specify the following:

Authentication base URL – the URL of the SAP Subscription Billing authorization service. The URL should be ending with oauth/token.

Client ID – OAuth 2.0 client identifier issued by the SAP Subscription Billing authorization provider.

Client Secret – OAuth 2.0 client secret issued by the SAP Subscription Billing authorization provider.

Click Test authentication settings to verify that the data you entered is correct.
In SAP Subscription Billing Base URL and Endpoints, specify the following:

Base URL – the root SAP Subscription Billing API URL.

Rate Plan Template Endpoint – relative endpoint to the API that handles rate plan templates.

Click Test rate plan templates connection to verify that the data you entered is correct.
Click Save.

The settings are now configured.

Related Information
Prerequisites
Basic Integration Scenario
On this page
Context
Procedure
Related Information
Yes
No