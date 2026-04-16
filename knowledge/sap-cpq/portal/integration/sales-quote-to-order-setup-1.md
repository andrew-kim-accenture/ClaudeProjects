# Sales Quote to Order Setup | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/6b434599641d43ad860742584a9f8406.html?locale=en-US&state=PRODUCTION&version=2603
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


	
SAP S/4HANA Sales Order Integration for Quote 1.0


	
Purpose
	
Preparation
	
Configuration


	
Configuration in SAP S/4HANA
	
Configuration in SAP Cloud Integration
	
Configuration in SAP CPQ


	
Define Provider settings
	
Create CPQ Communication User
	
Product Replication Setup
	
Customer Replication Setup
	
Pricing/ Discounting Setup
	
Pricing Procedure Mapping
	
Sales Quote to Order Setup
	
Initial Data Load
	
Manual Build Steps
	
SAP S/4HANA Sales Order Integration for Quote 2.0
	
SAP Billing and Revenue Innovation Management Integration
	
Integration with Sales Orders in SAP S/4HANA Cloud
	
Integration with SAP S/4HANA Cloud Solution Order
	
Variant Configuration Integration
	
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
Sales Quote to Order Setup

Do the following steps:

(Quote 1.0) Add Action for External Sales Order in ERP
Purpose

The Action for creating Sales Order in your ERP External System and the same need to be assigned to Sales Quote in SAP CPQ.

Procedure

In left navigation bar, select Workflow under Workflow/Approval.

In My Quotes tab, Click on Start Status is Preparing, and End Status is Order Confirmation pending.

Click on , Scroll to the Place order to ERP Action, Click the checkbox Selected.

Click Save.

In a similar way configure all the below actions in workflow.

Start Status

	

End Status

	

Action




Order Confirmation pending

	

Order Confirmation pending

	

Edit, Place Order to ERP, Save Quote




Order Confirmation pending

	

Order Placed

	

Order Status Update




Order Placed

	

Order Placed

	

Edit, History

Note

Copy the same settings from My Quotes to Other Quotes tab as well. To do this Select Other Quotes tab, Select My Quotes from the dropdown selection in the Copy from field and click on Copy button.

In left navigation bar, select Workflow Permissions under Workflow/Approval.

Under Action Permissions, search for Place order to ERP action.

Click on Add button (+). And Select the checkbox for User Type Sales.

Click Save.

In a similar way add the User Type Sales for all the actions like Edit, Save Quote, Order Status Update and History under Action Permissions.

Create Custom field in Sales Quote
Purpose

Custom field is needed in SAP CPQ in Sales Quote to capture PO Number in Sales Order.

Procedure

Login to your SAP CPQ system using an Administrator User.

Click on SETUP in menu bar and choose Setup.

In left navigation bar, select Custom Fields under Quotes.

Click on Add New Button.

In the Definition tab, maintain the Name as PO Number (case sensitive).

Choose Type as Free Form and Tab as Additional Info.

Select Save quote on change.

Enter Default Label as PO Number.

Click Save.

On this page
(Quote 1.0) Add Action for External Sales Order in ERP
Create Custom field in Sales Quote
Yes
No