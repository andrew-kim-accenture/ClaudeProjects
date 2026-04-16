# Quote Item Fields on SAP Subscription Billing Products | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/23cb853faaf5433186d0f98df8361cd2.html?locale=en-US&state=PRODUCTION&version=2603
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
Quote Item Fields on SAP Subscription Billing Products
Note

This integration is deprecated.

The standard fields specific to the integration are the following:

Effective Date

Contract Start Date

Contract Length

Minimum Term

Contract End Date

Minimum Term End Date

The following CTX tags can be used for retrieving information from item fields on SAP Subscription Billing products:

<*CTX( Quote.CurrentItem.EffectiveDate )*>

<*CTX( Quote.CurrentItem.ContractStartDate )*>

<*CTX( Quote.CurrentItem.ContractLength )*>

<*CTX( Quote.CurrentItem.MinimumTerm )*>

<*CTX( Quote.CurrentItem.ContractEndDate )*>

<*CTX( Quote.CurrentItem.MinimumTermEndDate )*>

Note

It is possible for the effective date specified for the product to be an earlier date than the contract start date. That way, a previously used promotion can be reused for a new contract. You can learn about the product effective date in detail on the Effective Date page.

These fields are editable by default (the end date values are calculated automatically when you specify the length and the start date). They only appear on SAP Subscription Billing products, while non-subscription products contain the same fields as they did before the integration was enabled.

Along with the standard fields, standard calculations for SAP Subscription Billing products are introduced in the scope of the integration.

Note

Quote item custom fields do not display on SAP Subscription Billing products.

Related Information
Calculations for SAP Subscription Billing Integration
Create SAP Subscription Billing Product
Use SAP Subscription Billing Products on User Side
SAP Subscription Billing Integration Tags
Yes
No