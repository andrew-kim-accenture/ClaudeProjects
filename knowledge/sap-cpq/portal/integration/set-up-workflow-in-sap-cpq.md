# Set Up Workflow in SAP CPQ | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/97df227e717c4174a07128dd857dd4e4.html?locale=en-US&state=PRODUCTION&version=2603
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
	
SAP Commerce Cloud Integration


	
SAP Commerce Cloud Integration for Quote 1.0
	
SAP Commerce Cloud Integration for Quote 2.0


	
SAP Commerce Cloud User Scenarios for Quote 2.0
	
Setting Up SAP Commerce Cloud Integration for Quote 2.0


	
Enable SAP Commerce Cloud Integration for Quote 2.0
	
Common Settings
	
Set Up Subscription to Events
	
Set Up Workflow in SAP CPQ
	
Field Mapping and Data Exchange
	
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
Set Up Workflow in SAP CPQ

The Workflow in SAP CPQ needs to be set up in a way that allows streamlined user journey to and from SAP Commerce Cloud.

Go to Setup  Workflow/Approvals  Workflow, and set the following:

Note

Have in mind that the names of actions and the quote statuses may have different naming from what is stated here, as these can be configured in SAP CPQ per client's specific business model. Also, some statuses are added automatically and some actions are automatically set up to display in the right status. Others need to be set up manually.

Added Automatically

The following statuses and actions are added automatically only if the tenant is set up to use the Quote 2.0 engine first, and the integration is enabled second. If the integration is enabled after the Quote 2.0 engine is set up as the active quote engine, the following statuses and actions need to be added manually.

Released to Commerce status is automatically created when the integration is enabled.

Accept Proposal action is set up to lead from the Released to Commerce status to Customer Accepted.

Reject proposal action is set up to lead from the Released to Commerce status to Customer Rejected.

Action New Active Revision is automatically set up to lead from the Released to Commerce status to Preparing and the SAP Commerce Cloud Request for New Quote Revision notification is attached to it.

To be Added Manually by the Administrator

Action Release Quote To SAP Commerce to lead to the Released to Commerce status after the quote is released to SAP Commerce Cloud.

Action Release Quote with Proposal To SAP Commerce to lead to the Released to Commerce status after the quote with a generated proposal is released to SAP Commerce Cloud.

Quote in the Released to Commerce status should be locked for any changes. To lock the quote for changes, disable the Edit action and enable the View action in Workflow.

Related Information
Field Mapping and Data Exchange
SAP Commerce Cloud User Scenarios for Quote 2.0
Workflow-Approvals
SAP Commerce Cloud Documentation
Yes
No