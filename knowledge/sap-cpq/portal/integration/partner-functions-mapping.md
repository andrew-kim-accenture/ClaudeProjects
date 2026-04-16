# Partner Functions Mapping | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/e90beab378ad40919c0f7067e5364891.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions
	
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


	
General
	
CRM Objects
	
Custom Fields Mapping
	
Customer Roles Mapping
	
Partner Functions Mapping
	
Opportunity Status
	
CRM Item Mappings
	
Price Book Market Mappings
	
User Mappings
	
CRM Quote
	
CRM Administrator Account
	
Send Document To CRM
	
New Authentication method for COD integration
Partner Functions Mapping

This page is for administrators with Quote 2.0 tenants integrated with Salesforce that use the involved parties concept (instead of customers).

The administration of involved parties mappings for the Salesforce integration is basically the same as the administration of customer mappings. Therefore, you should use the instructions in the CRM Integration sections to set up the mapping as these pages also contain the descriptions of any engine-related differences.

Note

Involved parties created from Salesforce in SAP CPQ are available and visible just in that particular quote. You can't access them in the Setup nor in other quotes. Only involved parties created in SAP CPQ originally can be reused on other quotes and managed in the Setup.

Each business partner in SAP CPQ can be mapped to only one account or one contact in Salesforce. The system uses External ID of the business partner for mapping. Having this difference in mind, use the instructions in Customer Roles Mapping to set up the rest of mappings.

To be able to create a new opportunity or an account in Salesforce from SAP CPQ, you need to select a default partner function and define the mappings for it in CRM Integration  Partner Functions Mapping:

Tab - Opportunity Creation/Update from CPQ

CRM Object - Account

Relationship - Opportunity Account

Events - Quote Create or Quote Create/Update

The mappings are considered when opportunities are created/updated in Salesforce from SAP CPQ and when quotes are created/updated from Salesforce in SAP CPQ. In both scenarios, data will be transferred to the partner function selected in Partner Functions Mapping and stored in the fields mapped in Field Level Mappings.

Related Information
Partner Functions
Involved Parties
Yes
No