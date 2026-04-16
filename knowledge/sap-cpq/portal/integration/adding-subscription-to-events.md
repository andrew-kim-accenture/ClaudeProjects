# Adding Subscription to Events | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/614218cc212e40179577c68a8f2b3c33.html?locale=en-US&state=PRODUCTION&version=2603
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
Adding Subscription to Events

To enable SAP CPQ to send information to SAP Sales Cloud V2 over SAP Cloud Integration, you need to create subscriptions to events, which send notifications from SAP CPQ to SAP Cloud Integration whenever certain events are triggered.

Note

You can learn how to create subscriptions to events in Subscription to Events.

The SAP Cloud Integration package provided for this integration contains various IFlows to manage the replication of quotes and key mappings between SAP Sales Cloud V2 and SAP CPQ. For the most up-to-date list of IFlows, please refer to the SAP API Hub.

In Subscription to Events, you need to create subscriptions to events for each of the IFlows. Below are the instructions for creating the subscription for updating sales quote. You can use these instructions as guidance for setting up other subscriptions, as needed.

Update Sales Quote

Name: Update Sales Quote

Description: this field is optional.

Webhook URL (required): enter the URL for the Replicate Quote from SAP CPQ - Quote 2.0 IFlow provided in the SAP Cloud Integration package.

Webhook HTTP method (required): POST

Event name (required): QuoteEvent

Quote Event (required): UpdateSalesQuote

Authentication type (required): Basic

Username (required): this should match the information from SAP Cloud Integration.

Password (required): this should match the information from SAP Cloud Integration.

Yes
No