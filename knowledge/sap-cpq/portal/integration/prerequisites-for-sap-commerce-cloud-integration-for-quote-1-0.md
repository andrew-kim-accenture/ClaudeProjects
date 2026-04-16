# Prerequisites for SAP Commerce Cloud Integration for Quote 1.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/d384447cecf645c0aaaedf254787bf62.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Prerequisites for SAP Commerce Cloud Integration for Quote 1.0
	
Integrate SAP CPQ Quote 1.0 with SAP Commerce Cloud
	
SAP Commerce Cloud Integration Scenarios for Quote 1.0
	
SAP Commerce Cloud Integration for Quote 2.0
	
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
Prerequisites for SAP Commerce Cloud Integration for Quote 1.0

These are the prerequisites which need to be completed before SAP CPQ can be integrated with SAP Commerce Cloud.

In case SAP Commerce Cloud is using existing configurable products set up for the Variant Configuration Integration, SAP Variant Configuration and Pricing need to be integrated. However, this is not required for using simple products from SAP ERP.

The SAP provider needs to be enabled and common settings defined in Setup  Providers  Providers  SAP  SAP Cloud Platform  Common Settings.

An email list needs to be created in Setup  Workflow  Email Lists.

Since the email notification about the request for quotation (RFQ) is sent to sales representatives, we suggest you use Sales Representatives as the name of the email list. Additionally, when creating an email list, make sure you select the adequate user types (for example, Sales Representative).

A notification that sales representatives receive about the request for quotation needs to be created in Setup  Workflow  Notifications.

Example: For the notification name, enter RFQ Notification. For the message subject, you may use Request for Quotation. In Email List, select the previously created email list Sales Representatives. For the message body, you may use the following: Dear sales representative, there is a new quote with the number <*SYSTEMQUOTATIONNUMBER *> waiting for your review and proposal. Please follow the link to review the quote: <* QuoteLink *>

The following actions need to be added to the appropriate workflow matrix: Release Quote To SAP Commerce and Release Quote And Proposal To SAP Commerce.

The former will be visible on quote, whereas the latter will be available upon document generation in the form of the Submit to customer button. Additionally, you need to set permissions for the said actions.

The External Quote Status custom field needs to be created in Setup  Quotes  Custom Fields.

The integration user needs to be created in Setup  Users  Users, as the user will be the quote owner.

The administrator role should be assigned to the user.

The New Revision action needs to be added to the workflow matrix.

Additionally, the previously created integration user needs to have permissions for the above-mentioned action, as the action will be used to create a new revision on behalf of the integration user.

To successfully integrate any system with SAP CPQ, the application parameter Allowed origins for the CORS filter needs to be configured in the way explained in Application Parameters 1.0.

Related Information
System Requirements for SAP Integrations
SAP CPQ Integration Module
Yes
No