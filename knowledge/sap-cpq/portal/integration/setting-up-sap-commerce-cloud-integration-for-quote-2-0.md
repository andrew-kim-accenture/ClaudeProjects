# Setting Up SAP Commerce Cloud Integration for Quote 2.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/a2b34bc1e63c4e66a5a81ebd5c86401c.html?locale=en-US&state=PRODUCTION&version=2603
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


	
SAP Commerce Cloud Integration for Quote 1.0
	
SAP Commerce Cloud Integration for Quote 2.0


	
SAP Commerce Cloud User Scenarios for Quote 2.0
	
Setting Up SAP Commerce Cloud Integration for Quote 2.0


	
Enable SAP Commerce Cloud Integration for Quote 2.0
	
Common Settings
	
Set Up Subscription to Events
	
Set Up Workflow in SAP CPQ
	
Field Mapping and Data Exchange
	
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
Setting Up SAP Commerce Cloud Integration for Quote 2.0

There’s a predefined list of steps that you need to perform to enable the integration between SAP CPQ and SAP Commerce Cloud for the Quote 2.0 engine.

Setup Steps Overview

Below is an overall list of steps that need to be performed for the integration between SAP CPQ and SAP Commerce Cloud to work in the Quote 2.0 engine.

Provide SAP CPQ and SAP Commerce Cloud tenants that can be integrated.

Make sure that Quote 2.0 engine is enabled on the SAP CPQ tenant.

The application parameter Allowed origins for the CORS filter must be configured in the way explained in Application Parameters 1.0.

Turn on the integration.

Set up the common settings.

Set Up Subscription to Events

Enable integration with SAP Subscription Billing.

Set up the workflow in SAP CPQ.

Change the iFlows created for this integration in SAP Cloud Integration if your business model requires different field mapping.



Enable SAP Commerce Cloud Integration for Quote 2.0

Turning on the integration in the Providers in SAP CPQ is the first step toward an integrated environment with SAP Commerce Cloud.
Common Settings

In the Common Settings, you need to define the SAP Cloud Integration endpoints to enable the quote payload to reach SAP Commerce Cloud via SAP Cloud Integration.
Set Up Subscription to Events

To enable SAP CPQ to send information to SAP Subscription Billing and SAP Commerce Cloud over SAP Cloud Integration, you need to create subscriptions to events, which send notifications from SAP CPQ to SAP Cloud Integration whenever certain events are triggered.
Set Up Workflow in SAP CPQ

The Workflow in SAP CPQ needs to be set up in a way that allows streamlined user journey to and from SAP Commerce Cloud.
Yes
No