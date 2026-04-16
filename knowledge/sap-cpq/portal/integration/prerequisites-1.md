# Prerequisites | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/96e8c7110d074a5cb2e045c275d73ea1.html?locale=en-US&state=PRODUCTION&version=2603
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
Prerequisites
Note

This integration is deprecated.

The Quote 2.0 engine should be enabled on your SAP CPQ tenant.

You can find out the Quote engine version of your tenant in the Setup. Navigate to General  Application Parameters  General Parameters. It should state This tenant is using Quote 2.0 engine.

It is important to note that this integration is not supported on Quote 1.0.

SAP Cloud Integration should be used as the middleware.

The integration package containing integration flows and value mappings for this integration is available in the SAP Business Accelerator Hub. Information on setting up the integration flows and value mappings is available in Integration of SAP Subscription Billing with SAP CPQ – SAP Cloud Integration Content.

Business partner master data must be replicated from a back-end system (for example, SAP S/4HANA) to both SAP CPQ and SAP Subscription Billing.

The external reference of the business partner must available both in SAP CPQ and SAP Subscription Billing so that the customer is uniquely identifiable.

Complete the necessary adjustments in the SAP CPQ Setup.

Related Information
Setup Adjustments on the SAP CPQ Side
Basic Integration Scenario
Yes
No