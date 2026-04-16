# Sales Quote to Order Setup | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/11843fb582de4c03825f822c45f0e2a1.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Preparation
	
Configuration


	
Configuration in SAP ERP
	
Configuration in SAP Cloud Integration
	
Configuration in SAP CPQ


	
Define SAP Provider Settings
	
Create SAP CPQ Communication User
	
Product Replication Setup
	
Customer Replication Setup
	
Pricing/ Discounting Setup
	
Sales Quote to Order Setup
	
Data Loading
	
Manual Build Steps
	
Troubleshooting Scenario
	
Integration with SAP S/4HANA
	
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

Add Action for External Sales Order in SAP ERP
The action for creating a sales order in your SAP ERP External System need to be assigned to sales quote in SAP CPQ.

In left navigation bar, select Workflow under Workflow/Approval.

In My Quotes, click on the intersection of the start status Preparing and the end status Order Placed.

Scroll to the Place order to ERP action and click on the checkbox Selected.

Click Save.

In left navigation bar, select Workflow Permissions under Workflow/Approval.

Under Action Permissions, search for the Place order to ERP action.

Click on the Add button (+) and select the checkbox for the user type Sales.

Click Save.

Create Custom Field in Sales Quote
Custom field is needed in SAP CPQ in sales quote to capture the PO Number in the sales order.

Login to your SAP CPQ system using an administrator user.

Click on Setup in menu bar and choose Setup.

In left navigation bar, select Custom Fields under Quotes.

Click Add New.

In the Definition tab, maintain the Name as PO Number (case sensitive).

Choose Type as Free Form and Tab as Additional Info.

Select Save quote on change.

Enter Default Label as PO Number.

Click Save.

On this page
Add Action for External Sales Order in SAP ERP
Create Custom Field in Sales Quote
Yes
No