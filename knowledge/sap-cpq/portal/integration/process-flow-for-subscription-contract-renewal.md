# Process Flow for Subscription Contract Renewal | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/83dace073e5440a7a12ae591e55490f6.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Scenarios for SAP Sales Cloud - SAP CPQ Integration for Quote 2.0


	
Subscription Contract Renewal


	
Process Flow for Subscription Contract Renewal
	
Integration Overview and Prerequisites
	
Configure Single Sign-On with Federation Settings
	
Configuration in SAP CPQ
	
Configuration in SAP Sales Cloud V2
	
Configuration in SAP Sales Cloud Integration
	
SAP Sales Cloud - SAP CPQ Integration for Quote 2.0
	
SAP Sales Cloud - SAP CPQ Integration for Quote 1.0
	
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
Process Flow for Subscription Contract Renewal

The process flow for Subscription Contract Renewal offers comprehensive insights into the roles of various systems in renewing subscription contracts.

SAP Billing and Revenue Innovation Management

Subscription contracts are stored, monitored and maintained in SAP Billing and Revenue Innovation Management in SAP S/4HANA. The renewal process begins with subscription contracts in SAP S/4HANA, which are replicated into SAP Sales Cloud. All subscription contracts that share the same contract end date and whose Auto Renew indicator is set to “No” are automatically replicated. In SAP Sales Cloud, they become part of a single renewal opportunity.

Replication Process Strategy

The replication process is triggered each time there is a change in a subscription contract. For instance, if an existing subscription contract is updated in SAP Billing and Revenue Innovation Management, the corresponding line item in SAP Sales Cloud’s renewal opportunity is updated as well. If a new subscription contract is created with the same end date as other contracts within the Subscription Contract Document, the new opportunity item is added to the same renewal opportunity in SAP Sales Cloud. Otherwise, a new Subscription Contract Document is created in SAP Billing and Revenue Innovation Management with a new subscription contract. In SAP Sales Cloud, a new renewal opportunity is created with the opportunity item that corresponds to the newly created subscription contract.

SAP Sales Cloud

Sales representatives start their sales journey in SAP Sales Cloud, where an initial renewal opportunity is automatically generated. Opportunity items are created based on subscription contracts that are up for renewal. Sales representatives can modify existing opportunity items, or add new ones for subscription products, or standard (physical) products.

After completing their work on the renewal opportunity, sales representatives initiate quote creation in SAP CPQ. They can create multiple quotes in SAP CPQ from a single renewal opportunity. However, only one of these quotes is marked as primary at any given time.

Deletion of Existing Opportunity Items

Although sales representatives can delete existing opportunity items in SAP Sales Cloud, these changes will not be reflected in SAP CPQ where the quote is generated based on the renewal opportunity. SAP CPQ will receive this opportunity item (that is, subscription contract) and add it to the Assets table.

To delete an opportunity item, the sales representative needs to set the appropriate change process group, such as Cancellation, directly in the SAP CPQ quote for the relevant subscription contract.

SAP CPQ

When sales representatives initiate the quote creation in SAP CPQ, several processes are started. As a first step, a quote needs to be created with a proper context. This means setting the business partner (involved party) with the correct partner function and defining the market. Only then can SAP CPQ transfer the received subscription contract identifiers to SAP Billing and Revenue Innovation Management for lookup.

For each subscription contract received from SAP Sales Cloud, SAP CPQ checks whether it exists in SAP Billing and Revenue Innovation Management and whether it is active. The SAP CPQ system fetches all subscription contracts that meet these conditions and adds them to the Assets section. If the change process group is provided and applicable to the subscription contract, the contract is added directly as a quote item to the Products section of the quote. Otherwise, it remains in the Assets section for manual management by a sales representative.

If any non-subscription products exist in the renewal opportunity, the system retrieves them from Variant Configuration and Pricing in SAP S4/HANA. These products are then added to the Products table and appear in the quote as new quote items.

Successful or Partially Successful Transaction

On receiving a request with existing subscription contract identifiers and new products to be added, SAP CPQ attempts to execute everything successfully. If all goes well, the quote includes all existing and new subscription products in the Products section, along with other products added to the renewal opportunity.

If anything goes wrong, SAP CPQ doesn't roll back the entire transaction. Instead, it creates a quote with successfully retrieved products. Existing contracts that weren't successfully executed are shared back with SAP Sales Cloud, along with an error message. The sales representative decides how to handle errors: whether to modify the renewal opportunity by adding or removing subscription products, create a new SAP CPQ quote, or seek further support.

Flush & Fill Process

Once a quote is created based on the SAP Sales Cloud renewal opportunity, a sales representative continues working on it. Whenever a sales representative saves changes in SAP CPQ, a Flush & Fill process is triggered. This process retrieves the quote data and replicates important parts to the related SAP Sales Cloud renewal opportunity.

As mentioned earlier, a sales representative creates one or multiple quotes. However, only one quote can be primary at any given time and connected to one renewal opportunity in SAP Sales Cloud. Finally, when the work is complete and the quote is approved by the customer, it is submitted to SAP S/4HANA for further management.

Related Information
Integration with the Solution Quote Object in SAP S/4HANA: SAP Billing and Revenue Innovation Management
Variant Configuration Integration
On this page
SAP Billing and Revenue Innovation Management
SAP Sales Cloud
SAP CPQ
Related Information
Yes
No