# Updates and Status Change | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/30d4f681a2b3400fa30b414a650d760d.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions


	
System Requirements for SAP Integrations
	
Integrations with SAP Back-End Systems
	
SAP Sales Cloud Integration


	
SAP Sales Cloud Version 2 - SAP Sales Cloud Quote 2.0
	
SAP Sales Cloud - SAP CPQ Integration for Quote 2.0
	
SAP Sales Cloud - SAP CPQ Integration for Quote 1.0


	
General Prerequisites
	
Configuration
	
Ticket Components
	
User Journey from SAP Sales Cloud to SAP CPQ for Quote 1.0


	
Adding Items
	
Customers
	
Field Mapping
	
Updates and Status Change
	
Placing Order to ERP
	
Payloads for Quote Creation and Quote Synchronization in SAP Sales Cloud
	
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
Updates and Status Change

You can map statuses in SAP Cloud Integration. Changes made on the quote in SAP CPQ are sent to SAP Sales Cloud automatically or by using the dedicated action.

Users cannot go to SAP Sales Cloud from SAP CPQ (the workflow is one-directional from SAP Sales Cloud to SAP CPQ only). All changes made on the quote in SAP CPQ are sent to SAP Sales Cloud either automatically after users save the quote or when triggering the Update Sales Quote action. Additionally, if the Automatically Update Sales Quote parameter is enabled, whenever the quote status is changed in SAP CPQ, the sales quote in SAP Sales Cloud is updated accordingly. Also, whenever any action is triggered on the quote, including Save, the system checks whether the status should be changed.

The mapping of statuses is done in SAP Cloud Integration and it depends on the user’s business requirements. This table shows a typical mapping of statuses in SAP CPQ with the statuses in SAP Sales Cloud, although you can map the statuses as needed:

SAP CPQ Status	SAP Sales Cloud Lifecycle Status	SAP Sales Cloud Progress


Preparing

	

Open

	

Not relevant




Awaiting Internal Approval

	

Open

	

Not relevant




Approved

	

Open

	

Not relevant




Rejected

	

Open

	

Not relevant




Open

	

Open

	

Pending




Customer Accepted

	

Open

	

Pending




Customer Rejected

	

Open

	

Pending




Order Placed

	

Completed

	

Pending




Order FAILED

	

Open

	

Pending




Expired

	

Completed

	

Lost* (need to supply reason for rejection)




Lost

	

Completed

	

Lost* (need to supply reason for rejection)

If the status of the quote changes to a status in which the edit and view actions are not available (for example, when users send the quote for approval and the status changes), users are redirected to a blank page displaying a message that they don’t have the permission to view the quote.

Additionally, if the quote status is changed to a status in which users only have the permission to view the quote, but not to edit it, the quote will be opened in the view-only mode.

Note

When landing from SAP Sales Cloud, the action Retract Approval Process can only be accessed via the Request Approval option in the quote. You will need to leave a comment to perform the action.

Related Information
User Journey from SAP Sales Cloud to SAP CPQ for Quote 1.0
Adding Items
Customers
Field Mapping
Payloads for Quote Creation and Quote Synchronization in SAP Sales Cloud
Yes
No