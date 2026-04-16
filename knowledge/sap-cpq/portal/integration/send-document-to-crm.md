# Send Document To CRM | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/737041d411f843e692e61452a2b8b532.html?locale=en-US&state=PRODUCTION&version=2603
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
Send Document To CRM

It's possible to send documents to CRM as pre or post-action to another action.

All you have to do is to set Send Document To CRM action as pre or post action to desired action (e.g. Generate Quote) for adequate status in Workflow.

This action is basically intended to be used as post-action to Generate Quote for Salesforce integration.

SAP CPQ will show error message if error happened in communication with CRM during document sending.

If SAP CPQ is sending file to Salesforce and if file size is too large for Salesforce.com to accept it, SAP CPQ will not attempt to send it automatically and error message will be displayed to user.

After successfully sending the document to Salesforce, it will appear on Opportunity in Notes & Attachments section.

Note

To make action Send Document to CRM visible on the Download Document and Send Email page, set application parameter Hide option to send document to opportunity from user (located in the Email Customers/Quote Acceptance Settings, in the Quotes submenu) to False.

Yes
No