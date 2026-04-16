# Adding Subscriptions to Events | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/fb06cc9da49e4e828188470f4982f6f7.html?locale=en-US&state=PRODUCTION&version=2603
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
Adding Subscriptions to Events
Note

This integration is deprecated.

Note

You can learn how to create subscriptions to events in Subscription to Events.

The SAP Cloud Integration package provided for this integration contains the following IFlows:

Replicate Subscription Products with Rate Plans from SAP CPQ to SAP Subscription Billing

Replicate SAP CPQ Quotes to SAP Subscription Billing Subscriptions

In Subscription to Events, you need to create subscriptions to events for each of the three IFlows. Listed below are sample subscriptions you can create for this integration.
Remember

The toggle switch Use for Subscription Billing products should be turned on for each of these events (except the OnPlaceOrder event).

Create Product

Name: Create Product

Description: this field is optional.

Webhook URL (required): enter the URL for the Replicate Subscription Products from CPQ to Subscription Billing IFlow provided in the SAP Cloud Integration package.

Webhook HTTP method (required): POST

Event name (required): ProductCreated

Authentication type (required): Basic

Username (required): this should match the information from SAP Cloud Integration.

Password (required): this should match the information from SAP Cloud Integration.

Update Product

Name: Update Product

Description: this field is optional.

Webhook URL (required): enter the URL for the Replicate Subscription Products from CPQ to Subscription Billing IFlow provided in the SAP Cloud Integration package.

Webhook HTTP method (required): POST

Event name (required): ProductUpdated

Authentication type (required): Basic

Username (required): this should match the information from SAP Cloud Integration.

Password (required): this should match the information from SAP Cloud Integration.

On Place Order

Name: On Place Order

Description: this field is optional.

Webhook URL (required): enter the URL for the Replicate SAP CPQ Quotes to SAP Subscription Billing Subscriptions IFlow provided in the SAP Cloud Integration package.

Webhook HTTP method (required): POST

Event name (required): QuoteEvent

Quote Event (required): OnPlaceOrder

Authentication type (required): Basic

Username (required): this should match the information from SAP Cloud Integration.

Password (required): this should match the information from SAP Cloud Integration.

Related Information
Setup Adjustments on the SAP CPQ Side
Subscription to Events
Yes
No