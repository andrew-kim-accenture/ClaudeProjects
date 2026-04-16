# Configure Workflow in SAP CPQ | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/b6b8dc54fccb434fa32e42470975feb2.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Preparation
	
Configuration in SAP CPQ


	
Create Communication User
	
Enable the Integration with SAP Cloud Integration
	
Enable Integration with SAP S/4 HANA ERP
	
Enable Integration with SAP Variant Configuration and Pricing
	
SAP General Attribute Mappings
	
Pricing Setup
	
Configure Workflow in SAP CPQ


	
Enable Workflow Actions and Permissions
	
Partner Functions
	
Product Replication Setup
	
Enable Quote and Item Comments
	
Configuration in SAP Event Mesh
	
Configuration in SAP Master Data Integration
	
Configuration for Integration in SAP S/4 HANA Cloud
	
SAP Cloud Integration Configuration
	
Data Replication
	
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
Configure Workflow in SAP CPQ

The default status of the quote is Preparing and changes to Order Placed when the Place Order action is executed. An additional quote status, Order Confirmation Pending is setup for error handling.

So, the status Preparing should change to Order Confirmation Pending if the Place Order action is executed. From this status, there are three options going forward:

If SAP S/4HANA Cloud returns an error, without the sales order ID, the quote goes to status Order Failed. Executing the Place Order action here will take you back to the Order Confirmation Pending status. Here, you can make the necessary adjustments and execute the Place Order action again.

If SAP S/4HANA Cloud returns an error, with the sales order ID, the quote goes to status Order Created with Errors.

If SAP S/4HANA Cloud does not return an error, the quote goes to status Order Placed.

When the Provider SAP ERP integration is enabled in SAP CPQ, the system will automatically make the following adjustments in the workflow:

Order Confirmation Pending and Order Placed statuses are created in the system if they were not available before.

The Order Status Update action is set up to lead from Order Confirmation Pending  Order Placed when the SAP ERP integration is enabled.

Procedure:

Login to SAP CPQ system using an Administrator user.

In the left menu bar, choose Setup  Setup.

In left navigation bar, select Workflow/Approval  Workflow.

In the My Quotes tab, start (vertical) statuses are displayed on the left of the grid and target (horizontal) statuses on the top.

Select the intersection of Preparing (vertical) and Order Confirmation Pending (horizontal). Choose Place Order  Selected.

Choose Save.

Now that an order is placed, the quote status changes from Preparing to Order Confirmation Pending.

Select the intersection of Order Confirmation Pending (vertical) and Order Placed (horizontal). Choose Order Status Update  Selected.

Choose Save.

Select the intersection of Order Confirmation Pending (vertical) and Order Created with Errors (horizontal). Choose Integration Change Quote Status  Selected.

Choose Save.

Select the intersection of Order Created with Errors (vertical) and Order Placed (horizontal). Choose Integration Change Quote Status  Selected.

Choose Save.

Select the intersection of Order Failed (vertical) and Order Confirmation Pending (horizontal) select it. Choose Place Order   Selected.

Choose Save.

Note

The SAP CPQ Quote is sent via SAP Cloud Integration to SAP S/4HANA Cloud. The success or error message from SAP S/4HANA Cloud are received synchronously and sent back to SAP CPQ via SAP Cloud Integration. Errors which are returned from SAP S/4HANA Cloud are stored in the SAP CPQ quote header with a generic error text. A detailed error description is visible for administrators in the SAP CPQ log in the language the user has used for integration.



Enable Workflow Actions and Permissions

Yes
No