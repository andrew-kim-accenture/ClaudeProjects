# CRM Quote | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/83041a60ec5b416c9d618e90c540cdf5.html?locale=en-US&state=PRODUCTION&version=2603
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
CRM Quote

The CRM Quote administrative section allows mapping SAP CPQ tags to fields, custom or standard, from the Salesforce Quote object. Access to administrative section is possible by clicking the link under the CRM Integration Setup admin menu.

For instructions on how to set up SAP CPQ Quotes for CRM OnDemand refer to Setting up Quote object and links in CRM On Demand.

The CRM Quote administrative section allows mapping SAP CPQ tags to fields, custom or standard, from the Salesforce Quote object. Access to administrative section is possible by clicking the link under the CRM Integration Setup admin menu.

In the first section, the administrator can define:

CRM Quote Object Name – API name of the custom created ‘Quote’ object in Salesforce.

CRM Field For Persisting Quote Id – API name of the field in the ‘Quote’ object used for storing information about the quote Id.

CRM Field For Persisting Quote Owner Id – API name of the field in the ‘Quote’ object used for storing information about the quote owner Id.

CRM Field For Persisting Information About Primary Quote – API name of the field in the ‘Quote’ object used for storing information whether the quote is primary or not for this opportunity.

CRM Field For Persisting Information About Quote Currency – API name of the field in the ‘Quote’ object used for storing information about the quote currency.

Note

The integration is case sensitive. Use CRM Lookup to select CRM Fields.

Click on Save before proceeding to additional mappings.

In the second section, the administrator can define other SAP CPQ data that will be pushed to the Salesforce ‘Quote’ object. That can be Total List Price, Total Net Price of the quote etc. The administrator needs to define the field in the Salesforce ‘Quote’ object, used for storing the value, and the SAP CPQ value – by using standard SAP CPQ tags.

By clicking Add New Mapping, the administrator can add a new mapping – ‘Quote’ object field and SAP CPQ tag.

Yes
No