# Setting Visibility of Pricing Details on Items | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/516b52d757954255b6cbd3f25bc941d3.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Define SAP General Attribute Mappings
	
Knowledge Base Diagnostics
	
Technical Overview
	
Pricing


	
Pricing Procedure Mapping
	
Set Up Pricing Procedure in SAP ERP
	
Map Pricing Response to Quote Columns
	
Pricing Details on Items


	
Setting Visibility of Pricing Details on Items
	
Pricing Behavior for Products Created/Edited via SOAP API
	
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
Setting Visibility of Pricing Details on Items

Learn how to set visibility of pricing details on quote items based on a quote status or selected user groups.

Prerequisites
Before you begin, ensure the following requirements are met:

You are using the SAP CPQ Quote 2.0 engine.

You have enabled SAP Variant Configuration and Pricing integration with document pricing.

Products originate from SAP S/4HANA.

Products have the Variant Pricing type and are synchronized from Backoffice.

The pricing procedure is set in both SAP S/4HANA and SAP CPQ.

Context

When SAP Variant Configuration and Pricing integration is enabled with document pricing, and a quote has a pricing procedure defined, sales representatives will be able to see pricing details on items by default. However, based on your specific business needs, you may want to have better control who sees pricing details and when they see them.

You can set the quote statuses for which sales representatives see the View Pricing Details action for quote items. The default status is Preparing. Additionally, you can limit the visibility of the View Pricing Details action to certain user groups.

Procedure

To control the visibility of the pricing details on quote items:

Set the quote statuses for which the action is displayed:
Go to the Item Actions Workflow page in Setup   Workflow/Approvals.
Click the Edit or + icon next to the status for which you want to enable View Pricing Details.
Select the checkbox next to the View Pricing Details action.
The icon for setting the permission group becomes visible.
Save your changes.
The View Pricing Details action item appears in the dropdown menu of the quote items when the quote is in the selected status.
Repeat this process for all other statuses for which you want the View Pricing Details action to appear on a quote item.
Set access permissions for individual users, user types, or user groups
Go to Setup   Workflow/Approvals   Items Actions Workflow.
Click the Edit or + icon next to the status for which you want to enable View Pricing Details.
Select the checkbox next to the View Pricing Details action.
Click the icon to open Formula Builder.
Add your formula.
To hide the View Pricing Details action for the Contract Management user type for a selected quote status, you can use the following formula: [NEQ](<*CTX( Visitor.UserType.Name )*>,Contract Management).
When a condition is created, a flag icon shows next to the formula builder icon.
Related Information
Item Actions Workflow
Pricing Details on Items
On this page
Prerequisites
Context
Procedure
Related Information
Yes
No