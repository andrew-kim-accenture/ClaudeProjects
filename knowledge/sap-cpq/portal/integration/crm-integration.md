# CRM Integration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/5724622569b042be806b4faa0848c618.html?locale=en-US&state=PRODUCTION&version=2603
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
CRM Integration

The following pages explain how to set up and maintain the CRM integrations. The instructions in these pages are applicable for both Quote 1.0 and Quote 2.0. Whenever there’s a difference in setup for the two quote engines, the difference is noted in the instructions.

Note

To integrate Quote 2.0 with CRM systems other than Salesforce, please use the toolset for developing custom CRM integrations instead of the options in this section.



General

The General administrative section is used to define settings for the connection between SAP CPQ and the CRM.
CRM Objects

SAP CPQ allows mapping of objects between SalesForce and SAP CPQ – If users arrive from opportunity to SAP CPQ and create a quote, the opportunity custom fields can be copied to appropriate SAP CPQ custom fields. Also opportunity account, partner or contact roles can be mapped to SAP CPQ customer roles, etc.
Custom Fields Mapping

The Custom Fields Mapping administrative section allows you to map fields, custom or standard, from SAP CPQ to opportunity or opportunity account fields in the CRM.
Customer Roles Mapping

The Customer Roles Mapping administrative sections allows you to set up the mappings between SAP CPQ customer roles, such as Bill To, Ship To, End User, and the opportunity information.
Partner Functions Mapping

This page is for administrators with Quote 2.0 tenants integrated with Salesforce that use the involved parties concept (instead of customers).
Opportunity Status

This section defines the mappings between a CRM opportunity status and a SAP CPQ quote status. These mappings are only done when the Create/Update Opportunity action is initiated, either by the user clicking the action or by a pre or post action.
CRM Item Mappings

CRM Item Mappings is used to transfer the Quote item level information from SAP CPQ to SFDC when the Create/Update Opportunity action is executed.
Price Book Market Mappings

This section determines what SAP CPQSAP CPQ market to apply to products coming from a CRM pricebook.
User Mappings

The User Mappings administrative section allows you to control the mappings between accounts on the CRM and accounts in SAP CPQ. This sections shows the mappings that have been created already between the CRM and SAP CPQ.
CRM Quote

The CRM Quote administrative section allows mapping SAP CPQ tags to fields, custom or standard, from the Salesforce Quote object. Access to administrative section is possible by clicking the link under the CRM Integration Setup admin menu.
CRM Administrator Account

This section is used for defining the administrator username and password used to access the CRM Application. The account is used to access the CRM application for lookups in administrative sections.
Send Document To CRM

It's possible to send documents to CRM as pre or post-action to another action.
New Authentication method for COD integration

The purpose of this feature is to improve security for COD-SAP CPQ integration. SAP CPQ will no longer store COD username and password.
Yes
No