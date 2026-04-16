# Use SAP Subscription Billing Products on User Side | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/49cb89c61d364bc4ac13ca0f609b49f4.html?locale=en-US&state=PRODUCTION&version=2603
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
	
SAP Subscription Billing Integration for Quote 2.0


	
Prerequisites
	
Setup Adjustments on the SAP CPQ Side
	
Basic Integration Scenario
	
Create SAP Subscription Billing Product
	
Set Values for Rate Plan Template Charges
	
Use SAP Subscription Billing Products on User Side
	
Quote Item Fields on SAP Subscription Billing Products
	
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
Use SAP Subscription Billing Products on User Side
Prerequisites
Note

This integration is deprecated.

This integration uses the quote-first approach, which means that SAP Subscription Billing products can only be added to an existing quote. Before starting the procedure below, create a new quote and select the market in which you previously defined the values for the rate plan charges.

Context

Once you finish creating a SAP Subscription Billing product, it appears in the Catalog with other products. To see the prices for the SAP Subscription Billing product in the catalog, the market for which the rate plan is defined must be selected as the default market on the User Page. If the prices are missing for a SAP Subscription Billing product, you will not be able to add it to the quote. In addition, by clicking on the SAP Subscription Billing product in the Catalog, you can see product-related information in the Product Details and rate plan information in the Pricing Details tab.

Note

After adding a SAP Subscription Billing product to the quote, you cannot select a market on the quote which does not correspond with a defined rate plan for the added product. Instead of the market changing, an error message displays, and upon changing the tab, closing or saving the quote, the market resets to the previously selected market.

Procedure
Find your product in the Catalog and click Add to add it to the quote.

You don’t need to configure the product, since SAP Subscription Billing products are simple products.

Open the quote.
Locate the SAP Subscription Billing product under Products.

A SAP Subscription Billing product contains only the standard fields that are specific to the SAP Subscription Billing integration. See Quote Item Fields on SAP Subscription Billing Products.

(Optional) Click View charges.

A complete breakdown of the charges is displayed.

(Optional) To set discounts for the charges, click the editable discount value and enter the new value.

The prices in the quote are now updated with the new discount values.

(Optional) Specify the remaining values for the product.

The editability of the fields can be changed in Setup  Quote  Quote Fields and Calculations.

(Required) Fill in the involved party details.
(Optional) Click Generate Documents to begin the document generation procedure.

The document you generate will contain all the information about the SAP Subscription Billing product and its charges.

Click   Place Orderto finalize your order.

All the information from the quote is now sent to SAP Subscription Billing, where a subscription is created.

Note

If you want your document generation template to retrieve information related to SAP Subscription Billing products, you need to use the dedicated tags in the template.

Related Information
Create SAP Subscription Billing Product
Basic Integration Scenario
Limitations and Known Issues 2602
SAP Subscription Billing Integration Tags
On this page
Prerequisites
Context
Procedure
Related Information
Yes
No