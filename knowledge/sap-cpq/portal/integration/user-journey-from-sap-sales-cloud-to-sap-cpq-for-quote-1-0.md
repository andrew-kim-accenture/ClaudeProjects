# User Journey from SAP Sales Cloud to SAP CPQ for Quote 1.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/0e9b1edc99ed4c07969b760d5e0dadb5.html?locale=en-US&state=PRODUCTION&version=2603
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
User Journey from SAP Sales Cloud to SAP CPQ for Quote 1.0

This topic describes a typical user journey for this integration.

The user journey starts from a sales quote in SAP Sales Cloud where users can define the involved parties (customers in SAP CPQ), the document type, header fields, and they can add products. After clicking Save and Open, the user is redirected from SAP Sales Cloud to SAP CPQ where a new quote is created. Clicking Save creates a sales quote in SAP Sales Cloud and the next time user edits it, they are redirected to SAP CPQ and a new quote is created. The user creating the quote can make themselves or another user the owner of the created quote, using the specified user email address as the identifier. The quote in SAP CPQ uses SAP Sales Cloud external ID as quote composite number so users have the experience of working only on one quote. Additionally, users landing from SAP Sales Cloud cannot access the Load Existing Project/Quotation page, so they will always land on the quote that they have opened in SAP Sales Cloud. Users landing from SAP Sales Cloud can access a set of SAP CPQ features that are limited to working with quote-related objects: they can access the User Page and Quote Layout pages under the Setup icon, but features such as Reports are not available.

Even though most of the infrastructure matches the infrastructure of the old SAP Sales Cloud integration, the landing page was developed completely new. The landing page displays after landing from SAP Sales Cloud, while a quote is being created in SAP CPQ. The page displays the progress of the quote creation and messages in case of an error.

The SAP Sales Cloud sales quote is automatically updated on the Save Quote action only if the quote in SAP CPQ is in active revision. Otherwise, if the quote is in inactive revision, the system skips the automatic syncing of data if the Save Quote action is triggered. If Update Sales Quote is triggered in SAP CPQ, an error message is displayed because the sales quote cannot be updated from an inactive revision.

When the quote is copied in SAP Sales Cloud, the source quote is first copied to a new SAP Sales Cloud quote. Both the ID of the source quote and the ID of the new quote are then sent to SAP CPQ, where the action Copy Quote is executed. Based on the IDs, SAP CPQ determines the source quote for the new, copied quote, and its ID, and continues to create the new quote with the new quote ID from SAP Sales Cloud. Pre-actions and post-actions assigned to the Copy Quote action will be executed in SAP CPQ when the Copy Quote action is triggered from SAP Sales Cloud as described here.

Note

Configurable products synchronized from SAP Variant Configuration and Pricing to SAP Sales Cloud can be used in a scenario for the SAP CPQ integration.

When synchronized configurable products are added to the SAP Cloud for Customer Sales Quote, and the user lands from SAP Sales Cloud to SAP CPQ, configurable products are added to the SAP CPQ quote with the Incomplete Configuration status in the Quotation tab. The prices of these items are all 0. However, when a configuration is edited, the edited item is updated with the prices from SAP Variant Configuration and Pricing. The parameter Allow adding incomplete items needs to be enabled for your user type for the described scenario to work.



Adding Items

The integrated SAP Sales Cloud - SAP CPQ environment supports simple products. Firstly, the products need to be created in SAP ERP and then replicated in SAP CPQ and SAP Sales Cloud.
Customers

SAP Sales Cloud sends data for the bill-to and ship-to customers to SAP CPQ.
Field Mapping

This topic explains how fields are mapped between a sales quote in SAP Sales Cloud and a quote in SAP CPQ.
Updates and Status Change

You can map statuses in SAP Cloud Integration. Changes made on the quote in SAP CPQ are sent to SAP Sales Cloud automatically or by using the dedicated action.
Placing Order to ERP

When the Place Order to ERP action is executed, SAP ERP processes the order.
Payloads for Quote Creation and Quote Synchronization in SAP Sales Cloud

This section contains two XSD schemas, one with the payload used for quote creation in SAP CPQ, and the other with the payload used for synchronization with the SAP Sales Cloud sales quote.
Yes
No