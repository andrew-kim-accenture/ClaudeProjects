# Subscription to Events | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/da888aaababd422fb13076ac1aa9a92c.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions
	
Subscription to Events


	
Set up Subscription to Events
	
Verify Successfully Notified Logs in SAP CPQ Log
	
Federated Single Sign-On
	
External Configurator Integration for Quote 2.0
	
AdobeSign Integration
	
Icertis Contract Intelligence Integration
	
DocuSign Integration
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
Subscription to Events

You can subscribe to domain events by establishing a connection between the application and an external URL to which notifications will be sent whenever the selected event occurs on products or in quotes.

The purpose of this feature is notifying clients, or whoever has access to the provided URL, about specific actions performed on products or in quotes. It can be accessed in Setup  Providers   Subscription to Events.

Available Subscription Events

There are several domain events that can be triggered in SAP CPQ.

Product Subscription Events

ProductCreated - triggered when a product is created in SAP CPQ. Available in both quote engines.

ProductUpdated - triggered when a product is updated in SAP CPQ. Available in both quote engines.

ProductDeleted - triggered when a product is deleted from SAP CPQ. Available in both quote engines.

These events are triggered when a product is added, updated or removed via API calls for products, in Setup sections: Bulk Import/Export, Product Import, Deploy/Send Changes, Products, and the Manage Simple Products option in the User Menu.

Quote Subscription Events

OnPlaceOrder- triggered when the Place Order action is executed. Available only in Quote 2.0.

OnQuoteDeleted- triggered when the quote is deleted from SAP CPQ. Available in both quote engines.

OnSaveAction- triggered when the Save action is manually clicked by the user on a quote. This event is not triggered by automatic saves or script-based saves. Available only in Quote 2.0.

QuoteCreated- triggered when a new quote is created or when a quote is copied (the quote created through copying is treated as a new quote). Available only in Quote 2.0.

OnItemAdded- triggered when item is added to quote. Available only in Quote 2.0.

OnItemRemoved- triggered when item is removed from quote. Available only in Quote 2.0.

Attribute Subscription Events

AttributeCreated- triggered when an attribute is created in SAP CPQ. Available in both quote engines.

AttributeUpdated- triggered when an attribute is updated in SAP CPQ. Available in both quote engines.

AttributeDeleted- triggered when an attribute is deleted in SAP CPQ. Available in both quote engines.

There are also subscription events that are available for Quote 2.0 only when SAP CPQ is integrated with other systems:

SAP CPQ-SAP Commerce Cloudintegration

.
Related Information
Verify Successfully Notified Logs in SAP CPQ Log
Set up Subscription to Events
On this page
Available Subscription Events
Related Information
Yes
No