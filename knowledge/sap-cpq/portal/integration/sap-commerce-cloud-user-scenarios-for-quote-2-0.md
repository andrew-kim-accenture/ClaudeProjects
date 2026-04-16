# SAP Commerce Cloud User Scenarios for Quote 2.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/ad81d262ff0b42859e5d170eac126a68.html?locale=en-US&state=PRODUCTION&version=2603
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
SAP Commerce Cloud User Scenarios for Quote 2.0

There are two typical scenarios for users in the SAP CPQ - SAP Commerce Cloud integrated environment. One of them is initiated from SAP Commerce Cloud and the other is initiated by sales representatives in SAP CPQ.

Note

The integration described in this section works only in the Quote 2.0 engine and it uses SAP Cloud Integration as middleware for communicating data across systems. The corresponding integration for the Quote 1.0 engine is described in SAP Commerce Cloud Integration for Quote 1.0

Scenario 1 - from SAP Commerce Cloud to SAP CPQ

A customer is on the SAP Commerce Cloud website browsing through products (physical products coming from SAP ERP and subscription products coming from SAP CPQ). When products are added to the quote in SAP Commerce Cloud, the customer submits it to SAP CPQ. If the customer wishes to get benefits for the selected products, or change quote terms, they can add comments on the quote level and item level asking, for example, for a higher discount, a lower price, and so on.

The Submit Quote action sends the SAP CPQ quote as XML payload from SAP Commerce Cloud to SAP CPQ over SAP Cloud Integration. In SAP Cloud Integration, fields on the quote originating from SAP Commerce Cloud are mapped to the fields on the new quote created in SAP CPQ, as defined in the artifacts. SAP Cloud Integration uses the POST quote API to create a quote with market, customer details, custom fields, comments, and items. From this point, the quote in SAP Commerce Cloud is locked and can't be changed. On the other hand, the sales representative in SAP CPQ receives a notification that there’s a new request for quotation that should be reviewed. The quote is assigned to the integration user who made the quote and it's displayed in the Other Quotes tab. The sales representative should find the quote and reassign it. The quote will then display in the My Quotes tab.

Learn more about field mapping and data enchange between SAP CPQ and SAP Commerce Cloud.

The sales representative opens the SAP CPQ quote, reviews the comments from the customer, and eventually makes the requested changes. In this point, the quote may be sent for approval if the changes exceed the limits set by the administrator. Additionally, the sales representative may generate a document to be sent to SAP Commerce Cloud with the quote.
Note

SAP Commerce Cloud only accepts documents in the PDF format.

In the end of the usual document generation procedure in SAP CPQ, for this integration only, a Send to Commerce modal appears, in which the sales representative can enter additional comments, if needed. Afterwards, the sales representative sends the quote back to SAP Commerce Cloud via SAP Cloud Integration that works as the middleware for syncing data. Depending on whether the quote contains a generated proposal or not, the sales representative clicks the Release Quote To SAP Commerce or the Release Quote with Proposal To SAP Commerce action in SAP CPQ.

At this point of the user journey, there may be as many cycles of quote negotiation as needed. Along the process, the quote status changes accordingly and data is synchronized as defined in the artifacts. Every time new data set is sent to SAP CPQ, the system creates a new revision of the same quote, while in SAP Commerce Cloud with each new update, there’s a new quote in the system. Whenever a new quote revision is created, the sales representative receives the SAP Commerce Cloud Request for New Quote Revision notification.

Once the negotiation phase is successfully completed, the SAP Commerce Cloud customer accepts the quote and the order for physical products is sent to SAP ERP and the order for subscription products is sent to SAP Subscription Billing.

Scenario 2 - from SAP CPQ to SAP Commerce Cloud

The flow in this scenario is the same as in the Scenario 1, except that in this scenario the user journey starts in SAP CPQ. The sales representative first creates a quote based on the data received from the customer offline (for example, in a telephone call). After adding items to the quote, the sales representative may add general and item-specific comments to the quote, if needed. When the quote is ready, user clicks the Release Quote to SAP Commerce action.

Note

In this scenario, it is not possible to send the quote with the generated document proposal to SAP Commerce Cloud from SAP CPQ the first time the quote is created. In this scenario, this is currently possible only in the following cycles of negotiation, when the SAP Commerce Cloud returns the quote to SAP CPQ and a new revision is created. In Scenario 1, generated documents can be sent to SAP Commerce Cloud in any cycle of negotiation.

The quote is now created in SAP Commerce Cloud and the quote number corresponds to the QuoteId of the quote in SAP CPQ that is sent to SAP Commerce Cloud in the payload.

In SAP Commerce Cloud, the customer can accept the quote and proceed to checkout, edit the quote, or cancel it. Whatever the option the customer chooses, the status of the quote is changed accordingly in SAP CPQ. Additionally, if the customer edits the quote, a new revision of the quote is created in SAP CPQ with the same name as the quote version in SAP Commerce Cloud.

Note

All revisions of a quote are tied to the same quote composite number, but each revision has a different QuoteId. Consequently, whenever a new revision of the quote is sent to SAP Commerce Cloud, the system there creates a new quote with a different quote number.

Furthermore, when a quote is copied, and the copy of the quote is released to SAP Commerce Cloud, a new quote is created in SAP Commerce Cloud, because the copy of a quote has a different QuoteId and no ExternalId.

Related Information
Setting Up SAP Commerce Cloud Integration for Quote 2.0
Field Mapping and Data Exchange
SAP Commerce Cloud Documentation
On this page
Scenario 1 - from SAP Commerce Cloud to SAP CPQ
Scenario 2 - from SAP CPQ to SAP Commerce Cloud
Related Information
Yes
No