# Setup Adjustments on the SAP CPQ Side | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/cfc43abbfa07463db99660c30b81b734.html?locale=en-US&state=PRODUCTION&version=2603
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
Setup Adjustments on the SAP CPQ Side
Note

This integration is deprecated.

Create markets which you will be using to set the values for rate plan charges and specify the market timezones.

Set up a connection with SAP Cloud Integration in Setup  Providers  Subscription to Events.

Set up the SAP Subscription Billing integration in Setup  Providers  Providers  SAP  SAP Subscription Billing.

Adjust the number of decimals in Setup  Pricing/Calculations  Rounding Setup.

To be able to add SAP Subscription Billing products to the quote, the checkbox Prevent users from quoting part numbers that haven't got a price in pricebooks must be deselected in Pricebooks  General Settings.

To successfully integrate any system with SAP CPQ, the application parameter Allowed origins for the CORS filter needs to be configured in the way explained in Application Parameters 1.0.

Note

Other integrations which use SAP Cloud Integration require you to configure it in the Providers section. However, this does not apply to the SAP Subscription Billing integration, for which you need to set up the connection with SAP Cloud Integration via Subscription to Events, instead.

If other integrations are enabled at the same time as the SAP Subscription Billing integration, and they also utilize SAP Cloud Integration, SAP Cloud Integration should be configured in two places at the same time:

In Providers (for the other integrations).

In Subscription to Events (for the SAP Subscription Billing Integration only).

The graphic illustrates where the elements of the integration are set up (in SAP Subscription Billing or in SAP CPQ).



Adding Subscriptions to Events

Set Up SAP Subscription Billing

Adjust Number of Decimals in Rounding Setup

Yes
No