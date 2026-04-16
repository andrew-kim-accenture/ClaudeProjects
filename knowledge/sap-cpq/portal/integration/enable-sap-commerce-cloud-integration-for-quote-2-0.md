# Enable SAP Commerce Cloud Integration for Quote 2.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/5a04b5be958f4c659940c62346f35f48.html?locale=en-US&state=PRODUCTION&version=2603
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
Enable SAP Commerce Cloud Integration for Quote 2.0

Turning on the integration in the Providers in SAP CPQ is the first step toward an integrated environment with SAP Commerce Cloud.

Go to Setup  Providers  Providers  SAP.

Available SAP providers display.

Click SAP Cloud Platform.

Open the SAP Commerce Cloud Settings tab.

Note

If you don't have this tab available, contact the SAP Support team to enable this for you.

Turn on the Connect SAP Commerce Cloud toggle.

The integration is now enabled.

You now need to perform one more step as explained below.

Additional Step: Manage Notification Recipients

Enabling the integration with SAP Commerce Cloud automatically creates two email notifications. SAP Commerce Cloud Request for New Quotation is sent to sales representatives in SAP CPQ when the customer creates a quote in SAP Commerce Cloud for the first time and sends it to SAP CPQ. The SAP Commerce Cloud Request for New Quote Revision is sent afterwards, each time the quote has been updated on the SAP Commerce Cloud side and sent back to SAP CPQ.

Furthermore, the email list SAP Commerce Cloud Request for New Quotation is created and you need to add the recipients for the SAP Commerce Cloud Request for New Quotation notification. Go to Workflow/Approval  Email Lists, open SAP Commerce Cloud Request for New Quotation, and add users.

Related Information
Common Settings
Set Up Subscription to Events
Set Up Workflow in SAP CPQ
Field Mapping and Data Exchange
SAP Commerce Cloud Documentation
On this page
Additional Step: Manage Notification Recipients
Related Information
Yes
No