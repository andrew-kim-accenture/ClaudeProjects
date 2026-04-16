# Subscription Contract Renewal | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/3beb44b6db2a41498bec2225fe9c1279.html?locale=en-US&state=PRODUCTION&version=2603
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
Subscription Contract Renewal

The Subscription Contract Renewal feature lets sales representatives quickly create and modify a quote based on the renewal opportunity. Once approved, they can send the quote to SAP S/4HANA for conversion into a solution quote.

The feature enhances renewal processes by efficiently retrieving subscription data and facilitating faster opportunity-to-quote conversions. Through the Subscription Contract Renewal feature, sales representatives can:

have a quote automatically created out of a renewal opportunity

modify the existing subscription contracts using renewal change processes (for example, contract extension, quantity change, price change, etc.):

add new subscription products to the renewal opportunity or quote

add new physical products to the renewal opportunity or quote

Overview

The renewal opportunity for a business partner is created in SAP Sales Cloud based on the subscription contract document and all its subscription contract items with a contract expiration date set. These contracts aren’t subject to auto-renewal and, therefore, require additional sales renewal activities.

Note

As the renewal opportunity is comprised of subscription contract items which are stored, monitored and maintained in SAP Billing and Revenue Innovation Management (BRIM) in SAP S/4 HANA, the integration with SAP Billing and Revenue Innovation Management is required. For set up and configuration details, see Integration with the Solution Quote Object in SAP S/4HANA: SAP Billing and Revenue Innovation Management. For more details on change processes when SAP CPQ is integrated with BRIM, see Change Processes and Renewals.

The Integration with SAP Billing and Revenue Innovation Management is enabled exclusively for the Quote 2.0 engine. This means the feature works only with SAP CPQ Quote 2.0.

When subscription contracts are replicated from SAP Billing and Revenue Innovation Management, a renewal opportunity with corresponding opportunity items is created in SAP Sales Cloud. This sets the stage for the renewal process. Sales representatives review the renewal opportunity and make changes if needed. They can modify it by adjusting the quantity or price of the opportunity items, applying discounts, or adding new subscription or standard physical products as new opportunity items. Once a sales representative decides it's time to take the next step in the sales cycle and to move from the opportunity to quote, the process moves to the SAP CPQ environment for quote creation and management.

Automation of Manual Processes

Based on the information provided by SAP Sales Cloud, the SAP CPQ system can uniquely identify subscription contracts in SAP Billing and Revenue Innovation Management and bring them back into SAP CPQ. This allows the Subscription Change Management process to launch. The SAP CPQ system now automatically performs several activities that previously required manual input from sales representatives. These activities included browsing through all customer’s subscription contracts, selecting the appropriate ones, adding them as assets to the Assets table, and finally adding them as quote items to the quote. To renew a contract item, sales representatives also had to apply the change process group with the EXTENSION change process to the asset. Only then could the sales representative update the subscription contract based on the customer’s wishes, such as extending the contract duration for two years.

With the new process, once sales representatives trigger the creation of a quote based on the SAP Sales Cloud renewal opportunity, the quote is created and ready for modification with all the existing contracts and newly added products already present.

Currently, not only is the renewal process automatic for existing subscription contracts, but sales representatives can also add new subscription products to the renewal opportunity, along with other physical products. For new subscription products, the process is the same as with existing subscription products: the sales representative searches for and selects products from the SAP CPQ Catalog. For configuration and pricing purposes, Variant Configuration and Pricing in SAP S4/HANA is used. Based on their selections, products are then added to the Products table. They then appear in the quote as new quote items.

Note

The feature is designed for seamless integration with SAP Sales Cloud. However, it is client-agnostic, ensuring compatibility across various systems.

Related Information
Process Flow for Subscription Contract Renewal
On this page
Overview
Related Information
Yes
No