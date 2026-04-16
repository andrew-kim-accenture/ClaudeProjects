# Basic Integration Scenario | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/1ad981fc9854475e8abf8902b76b83e4.html?locale=en-US&state=PRODUCTION&version=2603
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
Basic Integration Scenario
Note

This integration is deprecated.

Administrator Side

First, you need to create a SAP Subscription Billing product in SAP CPQ.

You create a SAP Subscription Billing product by setting the pricing type Subscription Pricing for a product in Setup  Products. When you select Subscription Pricing, you can define the contract length and the minimum term (which can be edited on the quote afterwards). Afterwards, choose a rate plan template and a market and set the values for the charges of the rate plan template. Rate plan templates that have been published in SAP Subscription Billing are automatically retrieved when the integration is enabled. Additionally, it is important to create a market beforehand. The market should have a defined timezone, and SAP CPQ markets should match the markets in SAP Subscription Billing. Only one rate plan template can be selected per product, and one rate plan corresponds to one market.

Additionally, you can create snapshots, which are dates from which specific charge values within a rate plan become valid. A rate plan template with defined charge values becomes a rate plan, and the product with the rate plan is replicated into SAP Subscription Billing once it is saved in SAP CPQ.

User Side

After the SAP Subscription Billing product is created in the Setup, the user needs to select the SAP Subscription Billing product in the SAP CPQ catalog and add it to the quote. All the details of the rate plan are visible in the quote when a SAP Subscription Billing product is added. Additionally, they are also visible in the Catalog if you click Pricing Details.

Fill in the pricing details in the quote. You can generate a document displaying elements of the subscription plan by using the dedicated template tags. Once you are satisfied with the quote, click Place Order. This triggers the replication of the quote to SAP Subscription Billing, resulting in the creation of a subscription.

Related Information
SAP Subscription Billing Integration Tags
Calculations for SAP Subscription Billing Integration
Limitations and Known Issues 2602
On this page
Administrator Side
User Side
Related Information
Yes
No