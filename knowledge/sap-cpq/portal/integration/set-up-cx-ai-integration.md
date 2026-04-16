# Set up CX AI Integration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/ad22caf1588f4e3a8801b5e87641af71.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Integration with SAP Master Data Integration
	
Identity Provisioning Service Integration
	
CX AI Integration


	
Set up CX AI Integration
	
Data Requirements
	
Recommendations on Quotes and Use Cases
	
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
Set up CX AI Integration

All CX AI integration settings are in the Providers section.

General Settings

Go to Providers  Providers  SAP  SAP CX AI.

The General Settings tab opens.

Turn on the Enable CX AI Integration toggle.

The authentication fields should already be populated by the provisioning team. When you access the authentication URL, you get the access token which you can use with the provided client ID and client secret to access the CX AI base URL. Each SAP CPQ tenant should be integrated with a different CX AI tenant and that’s why the base URL is different on each tenant.

In Supported Scenarios, enable and activate the scenarios you wish to use on your tenant.

If you enable a scenario, you are letting SAP CPQ send data to CX AI for training. Only after you activate the scoring, SAP CPQ will start to display the recommendations to users on quotes. However, you won’t start receiving recommendations right away as there is minimum set od data requirements that need to be completed for the system to start sending recommendations.

The status indicates whether the scenario is enabled and if the model has been trained.

Save the changes.

Ingestion Mapping

The ingestion phase is when SAP CPQ sends data to CX AI to train their respective models.

Select the statuses of quotes that you wish to send to CX AI for model training. To ensure reliable model training, make sure to select only the final quote statuses like Won, Lost, Ordered, Submitted, and so on.

Additionally, define the quote and item data that is sent to CX AI. By default, SAP CPQ will send standard values for all listed fields. However, if you are not using the standard, but custom value for a field, you need to enable the Custom Value toggle and create a formula that will get the custom data.

isWon and isClosed properties are added specifically for this integration to indicate whether the quote has been closed successfully or not. Their value is TRUE if the quote is in one of the following statuses:

isWon – status Customer Accepted or Place Order

isClosed – status Lost, Customer Rejected or Rejected

isWon and isClosed have boolean values and all others properties have strings as values.

Inference Mapping

The inference phase happens right before getting the recommendations for a quote when SAP CPQ sends to CX AI a request with data as defined in the mapping.

By default, SAP CPQ will send standard values for all listed fields. However, if you are not using the standard, but custom value for a field, you need to enable the Custom Value toggle and create a formula that will get the custom data.

Related Information
Data Requirements
Recommendations on Quotes and Use Cases
On this page
General Settings
Ingestion Mapping
Inference Mapping
Related Information
Yes
No