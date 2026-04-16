# Set Up Subscription to Events | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/775b785acd2e45beb6fd37e46b32ed3a.html?locale=en-US&state=PRODUCTION&version=2603
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
Set Up Subscription to Events

To enable SAP CPQ to send information to SAP Subscription Billing and SAP Commerce Cloud over SAP Cloud Integration, you need to create subscriptions to events, which send notifications from SAP CPQ to SAP Cloud Integration whenever certain events are triggered.

Note

You can learn how to create subscriptions to events in Subscription to Events.

The SAP Cloud Integration package provided for this integration contains the following IFlow packages:

SAP Commerce Integration with SAP CPQ Quote 2.0

SAP Commerce Cloud Integration with SAP CPQ and SAP Subscription Billing

In Subscription to Events, you need to create subscriptions to events for each of the IFlows. Listed below are the four subscriptions you should create for this integration.
Quote Release to Commerce

Name: Quote Release to Commerce

Description: this field is optional.

Webhook URL (required): enter the URL for the SAP Commerce Integration with SAP CPQ Quote 2.0 IFlow provided in the SAP Cloud Integration package.

Webhook HTTP method (required): POST

Event name (required): QuoteReleaseToCommerce

Authentication type (required): Basic

Username (required): this should match the information from SAP Cloud Integration.

Password (required): this should match the information from SAP Cloud Integration.

Release Quote with Proposal

Name: Release Quote with Proposal

Description: this field is optional.

Webhook URL (required): enter the URL for the SAP Commerce Integration with SAP CPQ Quote 2.0 IFlow provided in the SAP Cloud Integration package.

Webhook HTTP method (required): POST

Event name (required): QuoteAndProposalReleaseToCommerce

Authentication type (required): Basic

Username (required): this should match the information from SAP Cloud Integration.

Password (required): this should match the information from SAP Cloud Integration.

Create Product

Name: Commerce-Create Product

Use for Subscription Billing products: enable the toggle.

Description: this field is optional.

Webhook URL (required): enter the URL for the SAP Commerce Cloud Integration with SAP CPQ and SAP Subscription Billing IFlow provided in the SAP Cloud Integration package.

Webhook HTTP method (required): POST

Event name (required): ProductAdded

Authentication type (required): Basic

Username (required): this should match the information from SAP Cloud Integration.

Password (required): this should match the information from SAP Cloud Integration.

Update Product

Name: Commerce-Update Product

Use for Subscription Billing products: enable the toggle.

Description: this field is optional.

Webhook URL (required): enter the URL for the SAP Commerce Cloud Integration with SAP CPQ and SAP Subscription Billing IFlow provided in the SAP Cloud Integration package.

Webhook HTTP method (required): POST

Event name (required): ProductUpdated

Authentication type (required): Basic

Username (required): this should match the information from SAP Cloud Integration.

Password (required): this should match the information from SAP Cloud Integration.

Related Information
Set Up Workflow in SAP CPQ
Field Mapping and Data Exchange
Common Settings
SAP Commerce Cloud User Scenarios for Quote 2.0
SAP Commerce Cloud Documentation
Yes
No