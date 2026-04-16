# Integrate SAP CPQ with SAP Variant Configuration and Pricing | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/45f8a5256b1f4abf905b9b5eed936813.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions


	
System Requirements for SAP Integrations
	
Integrations with SAP Back-End Systems


	
SAP ERP Integration for Quote 1.0
	
Integration with SAP S/4HANA
	
Integration with Sales Orders in SAP S/4HANA Cloud
	
Integration with SAP S/4HANA Cloud Solution Order
	
Variant Configuration Integration


	
Introduction to the Variant Configuration Integration
	
Integrate SAP CPQ with SAP Variant Configuration and Pricing


	
Knowledge Base Synchronization Settings
	
General Settings
	
Define SAP General Attribute Mappings
	
Knowledge Base Diagnostics
	
Technical Overview
	
Pricing
	
SAP Variant Configuration and Pricing Log
	
SAP Sales Cloud Integration
	
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
Integrate SAP CPQ with SAP Variant Configuration and Pricing

To enable the SAP Variant Configuration and Pricing integration on the SAP CPQ side, configure the following settings in the Setup.

Prerequisites

The application parameter Allowed origins for the CORS filter must be configured in the way explained in Application Parameters 1.0.

Context

All the information needed to connect SAP CPQ with the SAP Variant Configuration and Pricing service should be provided by the administrator managing SAP Variant Configuration and Pricing. Settings are configured on the tenant level.

SAP Variant Configuration and Pricing onboarding and provisioning must first be completed in the manner outlined in the SAP Variant Configuration and Pricing administration guide.
Note

To exchange variant configuration and pricing data between cloud solution SAP CPQ and the licensee’s local on-premise SAP ERP back end, the SAP Variant Configuration and Pricing provider also comprises SDI Data Provisioning Agent (part of SAP HANA smart data integration). SDI Data Provisioning Agent is an on-premise application that is to be installed and operated locally in the customer’s on-premise landscape.

For data exchange with SAP back-end systems using a third-party runtime database obtained from SAP (such as Microsoft SQL Server, IBM DB2, Oracle), certain restrictions apply according to the applicable on-premise license agreements for the third-party runtime databases. One such restriction is that the licensee may not access these databases directly via systems or technologies that have not been licensed specifically for use with such runtime database. Therefore, the corresponding SDI Data Provisioning Agent LogReader Adapters provided with the SAP Variant Configuration and Pricing provider for SAP CPQ may not be used to directly access, or replicate data from, such third-party runtime databases licensed from SAP. For third-party database licenses not obtained from SAP, please refer to the respective license agreements on the available options for data exchange via direct database accesses.

For more information about interoperability and maintenance rules for Data Provisioning Agent (DP Agent), see SAP Note 2546811 .

Procedure
Go to Setup  Providers  Providers  SAP.

Available SAP providers display.

Click SAP Variant Configuration and Pricing.

A new page displays.

Set Enable SAP Variant Configuration and Pricing to TRUE.

When enabled, your current tenant is able to communicate with remote configuration and pricing services.

In the General Settings tab, enable the Enable Variant Configuration and Pricing Calls on Demand option.

When enabled, the two processes, Rules Evaluation (configuration update), and Pricing will be triggered on demand without having to wait for backend response after each click during configuration. For more information, refer General Settings.

In the Authentication Settings tab, provide the following data:
Authentication URL: the URL of the SAP Variant Configuration and Pricing authorization service. This URL must contain the full path, including /oauth/token.
Configuration Client Identifier: OAuth 2.0 client ID issued by the SAP Variant Configuration and Pricing authorization provider, used when obtaining products from SAP Variant Configuration and Pricing.
Configuration Client Secret: OAuth 2.0 client secret issued by the SAP Variant Configuration and Pricing authorization provider, used when obtaining products from SAP Variant Configuration and Pricing.
Pricing Client Identifier: OAuth 2.0 client ID issued by the SAP Variant Configuration and Pricing authorization provider, used when obtaining pricing from SAP Variant Configuration and Pricing.
Pricing Client Secret: OAuth 2.0 client secret issued by the SAP Variant Configuration and Pricing authorization provider, used when obtaining pricing from SAP Variant Configuration and Pricing.

Click Test authentication settings to verify if the settings specified above are valid.

In the Base URLs tab, provide the root SAP Variant Configuration and Pricing API URLs. The root URL pattern is: https://appname.cfapps.region.hana.ondemand.com, where appname is either cpservices-product-configuration (for the configuration service) or cpservices-pricing (for the pricing service) and region is eu10, us10, ap11.
Configuration Base URL: the root URL of configuration services. You can see the sample endpoints for the configuration root URL in the SAP Business Accelerator Hub.
Pricing Base URL: the root URL of pricing services. You can see the sample endpoints for the pricing root URL in the SAP Business Accelerator Hub.
See Knowledge Base Synchronization Settings for additional knowledge base synchronization specifications.
Save your changes.

A confirmation message displays.

When integrating SAP Variant Configuration and Pricing for the first time, you need to save all the changes you made to be able to synchronize knowledge bases. The first time knowledge base synchronization is executed, all knowledge base details from SAP Variant Configuration and Pricing which correspond to products and attributes in SAP CPQ are replicated in SAP CPQ. Every next time knowledge base synchronization is executed, only the information that was changed after the date of the last knowledge base synchronization will be updated. If the first synchronization job fails to execute properly, please contact the SAP CPQ Support team to identify and resolve the issue.

Next Steps

After configuring the settings on this page, you need to Define SAP General Attribute Mappings.



Knowledge Base Synchronization Settings

In the Knowledge Base Synchronization Settings tab in Setup  Providers  Providers  SAP  SAP Variant Configuration and Pricing, you can set up the knowledge base synchronization language and translations, the source for product layouts, configuration types, and attribute display types, the notification recipient email address, as well as the daily execution start time.
General Settings

On this page
Prerequisites
Context
Procedure
Next Steps
Yes
No