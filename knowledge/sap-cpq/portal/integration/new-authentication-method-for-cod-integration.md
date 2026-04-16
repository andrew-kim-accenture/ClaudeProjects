# New Authentication method for COD integration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/750b9a8b98a84dedb8d0307dfa39f89e.html?locale=en-US&state=PRODUCTION&version=2603
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
New Authentication method for COD integration

The purpose of this feature is to improve security for COD-SAP CPQ integration. SAP CPQ will no longer store COD username and password.

User Side
The change can be applied to all links created from COD to SAP CPQ (Generate Quote links, Quote object links etc.). If user hasn’t been already mapped, screen for entering log-in info will be provided to user. Screen will be different depending on the value of application parameter Prompt Users to Enter COD Username/Password when coming first time to CPQ - if value is TRUE, page will remain the same.
Setup
In SAP CPQ SetupCRM Integration SetupGeneral, there will be new application parameter that will control whether users need to enter COD un/pass. Label for parameter will be Prompt Users to Enter COD Username/Password when coming first time to CPQ (default value will be TRUE).
On this page
User Side
Setup
Yes
No