# Enable Workflow Actions and Permissions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/450e55f718464a90a6f7f760b2c2f4a5.html?locale=en-US&state=PRODUCTION&version=2603
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
Enable Workflow Actions and Permissions

The action for creating Solution Order in SAP S/4 HANA Cloud needs to be enabled in SAP CPQ.

Procedure

Login to SAP CPQ system using an Administrator user.

In the left menu bar, choose Setup  Setup.

In left navigation bar, select Workflow/Approval.  Workflow.

In the My Quotes tab, select the intersection of Preparing (vertical) and Order Confirmation Pending (horizontal) row. Choose Place Order  Selected.

Choose Save.

Select the intersection of Order Confirmation Pending (vertical) and Order Confirmation Pending (horizontal). Choose View and History  Selected.

Choose Save.

Select the intersection of Order Placed (vertical) and Order Placed (horizontal). Choose View and History  Selected.

Choose Save.

Select the intersection of Order Failed (vertical) and Order Placed (horizontal). Choose Order Status Update  Selected.

Choose Save.

Note

Copy the same settings from My Quotes to Other Quotes as well. To do this, open the Other Quotes tab, select My Quotes from the dropdown selection in the Copy from field and choose Copy button.

You can enable the workflow permission as below:

In left navigation bar, select Workflow/Approval  Workflow Permissions.

Go to Action Permissions  Place Order.

Choose + and select the checkbox for user type Sales.

Choose Save.

Use the same steps to add for all the actions like Edit, History, Order Status Update, Integration Change Quote Status and Save Quote under Action Permissions the same user type selected for the communication user.

Yes
No