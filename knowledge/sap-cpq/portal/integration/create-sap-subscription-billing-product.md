# Create SAP Subscription Billing Product | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/3cb6659b40cb403094f16131dda30a01.html?locale=en-US&state=PRODUCTION&version=2603
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
Create SAP Subscription Billing Product
Prerequisites
Note

This integration is deprecated.

SAP CPQ must be integrated with SAP Subscription Billing.

Rate plan templates must be created and published in SAP Subscription Billing.

Restriction

Currently, the quote only considers one time-fixed charges and recurring-fixed charges for quote item calculation.

Tiered or block/volume-based rate plan elements that are recurring charges aren't propagated to the item list price or net price. Pricing calculations aren't supported for SAP Subscription Billing items on the quote.

Procedure
Go to Setup  Product Catalog  Products.
Click Add New Product.
Fill out the This integration is deprecated. Definition tab with relevant information.

The name of the product should only contain letters (a-z, A-Z), numbers (0-9) and the underscore (_), slash (\ This integration is deprecated.) and hyphen (-) symbols. Use a maximum of 18 characters.

Note

Once you save a product with the Subscription Product option enabled, you can no longer change the product type.

Open the Pricing tab.

As you enabled the Subscription Product toggle switch in the Definition tab, new subscription pricing fields display in the Pricing tab.

Fill out or make a selection in the three fields:

Contract Length – specify the number of months.

This field determines the total duration of the subscription. This field can be edited later in the quote.

Minimum Term – specify the number of months.

This field determines the shortest period after which the subscription can be cancelled (that is, the shortest period after which the contract can be terminated). The minimum term cannot be longer than the contract length. However, the minimum term can be greater than 0 if the contract length value is 0 (an unlimited subscription can still have a defined minimum term). This field can be edited later in the quote.

Rate plan templates – click this button to select a rate plan template.

The rate plan templates in the list are automatically retrieved from SAP Subscription Billing when the integration is enabled, and the rate plan templates have been published.

Click Select.

You have now selected a rate plan template. The Market dropdown menu appears.

Select a market in the Market dropdown menu.

When you assign a market to a SAP Subscription Billing product, the prices for the product appear only when that market is selected. Only one market can be selected per rate plan. Moreover, the timezone which you specify for the market in Markets is applied to the start and end dates and the duration of the SAP Subscription Billing product. These fields are defined as midnight of the market’s timezone.

After selecting the market, click Add.

A table appears, listing the market and currency that are specified for the rate plan.

Click Rate Plan to open the extended rate plan, where you can set the values for the charges of the product, which will apply for the market in the corresponding row.

A rate plan template becomes a rate plan once you specify the charge values for it. You can select one rate plan template per product, but you can create multiple rate plans which will apply for different markets.

Alternatively, you can delete rows in the table by clicking .

Once you have defined the charges for the rate plan, click Save.

The SAP Subscription Billing product is now added to the Catalog. After clicking Save, it is not possible to change the pricing type or remove selected rate plans (however, you can add new rate plans or edit existing ones).

Note

You can select and add multiple markets (and, consequently, define multiple rate plans) for a single product. They will appear as new rows in the table. You need to set the charges for each specific market by clicking Rate Plan in the corresponding row and setting the parameter values.

Related Information
Set Values for Rate Plan Template Charges
Use SAP Subscription Billing Products on User Side
Create Snapshot
On this page
Prerequisites
Procedure
Related Information
Yes
No