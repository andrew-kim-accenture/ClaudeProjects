# Pricing Condition Mapping on Quote | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/deb2f803527544e9a0e0106ced2b7f62.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions


	
System Requirements for SAP Integrations
	
Integrations with SAP Back-End Systems


	
SAP ERP Integration for Quote 1.0
	
Integration with SAP S/4HANA
	
Integration with Sales Orders in SAP S/4HANA Cloud
	
Integration with SAP S/4HANA Cloud Solution Order
	
Variant Configuration Integration


	
Introduction to the Variant Configuration Integration
	
Integrate SAP CPQ with SAP Variant Configuration and Pricing
	
Define SAP General Attribute Mappings
	
Knowledge Base Diagnostics
	
Technical Overview
	
Pricing


	
Pricing Procedure Mapping


	
Pricing Procedures from SAP Variant Configuration and Pricing


	
Select Pricing Procedure in SAP CPQ
	
Determinations
	
Define Pricing Condition Mapping
	
Allowed Value Combinations
	
Pricing Condition Mapping on Quote
	
Calculations for Variant Pricing Items
	
Calculations for Combined SAP CPQ and Variant Pricing Items
	
CPQ Line Items Calculations and Fields
	
CTX Tags for Fields Mapped from Pricing Conditions
	
Example Procedure for Mapping Pricing Conditions
	
Order Creation/Update Mapping
	
Set Up Pricing Procedure in SAP ERP
	
Map Pricing Response to Quote Columns
	
Pricing Details on Items
	
Pricing Behavior for Products Created/Edited via SOAP API
	
SAP Variant Configuration and Pricing Log
	
SAP Sales Cloud Integration
	
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
Pricing Condition Mapping on Quote

This section describes the quote-side behavior of pricing condition mapping.

Before adding an item to the quote, you need to define the business partner, market, and pricebook for that quote. In addition, pricing procedure mapping must be correctly configured in the Setup before you use it on the quote. The quote-first approach must be used.

Moreover, it is possible for a pricing procedure to be used on a quote and then later modified, either in SAP S/4HANA or in the SAP CPQ Setup. In that case, a message appears to the user on the quote, informing them that the pricing information used on that quote is no longer correct. Users can resolve this issue and ensure that the prices on the quote are correct by executing the quote action External Reprice, to update the existing quote with the new pricing information from SAP S/4HANA.

Note

Quote revisions are fully supported when pricing conditions are mapped in SAP CPQ.

The actions which can be used on the quote when pricing procedure mapping is applied are the following:

Add Item

Edit Item

Delete Item

Copy Item

Copy Quote

Place Order (only available for the integration with SAP S/4HANA On Premise)

The values in quote item columns mapped to pricing conditions are calculated according to the back-end calculation logic from SAP Variant Configuration and Pricing. The prices on the quote are calculated in any of the following scenarios:

When an item is added to the quote.

When item price fields, which are mapped from pricing conditions, are edited on the quote (for example, when a discount is applied).

When an item is edited.

When a manually priced condition of a field is removed from an item.

During product configuration, stateless pricing API is still used.

Note

Once a pricing procedure is determined for a quote, it can’t be changed even if the market or pricebook is changed.

In case an error occurs, users are informed via the following error messages, which are retrieved from the back-end system:

Incorrect number of decimals for currency {0}. Allowed number of decimals is {1}.




The exchange rate {0} is not available for exchange rate type {1} and exchange rate date {2}.




There are no valid items in the document.




Number of decimals for condition value is incorrect. Allowed number of decimals is {0}.




Field overflow while calculating condition {0}.

Note

You can assign an event to quote fields and partner functions which will trigger the determination of pricing attributes (whenever that quote field is edited or that partner function is used or modified on the quote in an involved party). To do that, click Set Determination Events in General Attribute Mappings.

Related Information
Select Pricing Procedure in SAP CPQ
Yes
No