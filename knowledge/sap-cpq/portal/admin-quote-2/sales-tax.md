# Sales Tax | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/42da977d2c7d4615bda935f4870a852b.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations


	Setup Help

	
Pricebooks
	
Markets
	
Market Visibility
	
Currencies
	
Discounts
	
Rounding Setup
	
Discount Priorities
	
Sales Tax
	
Margin Health
	
Promotions
	
Recurring and Non-Recurring Prices
	
Sales Area Administration
	
Quotes Administration
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Sales Tax

This feature enables admin to define tax percent that will be applied on item level in Quote.

In order to define Tax percent per country or state, Admin needs to go to the Setup  Pricing and Calculations and open the Sales Taxes page.

Firstly, Admin need to choose the business partner function for which they want to define a tax rate per country/region. The tax rate is applied to the quotes where the involved parties with this function are assigned. If a quote has more than one involved party with the same function, the country/region of the first involved party is used to determine the applicable tax rate.

Admin can select countries or states in order to assign percent to them. If there is different percent in for specific goods they can define separate tax percent for a country and product type.

Example

The standard VAT rate in Germany is 19%. There is a reduced rate of 7% for food, books, hotel accommodation, cultural services and other goods and services.

Enable Taxation fields on Quote Layout

In order for tax fields to be visible on Quote, Admin needs to go to Setup  Quote/Fields,Calculations, Layout and on the Layout tab choose Add column and from the list choose Tax percent and Tax amount.

Set Tax Calculations
Tax amount is calculated by formulas below and is added to Extended amount.

Tax amount NRC: Net price NRC*(Tax percent/100)*Quantity

Tax amount MRC: Net price MRC*(Tax percent/100)*Quantity

In order for Tax amount to be calculated and applied, Admin needs to set calculations in proper order. To do that, Admin needs to go toSetup  Quote/Fields,Calculations, Layout and choose Fields and Calculations tab.

Add calculations to Calculations on Add/Copy/Delete Item in proper order. See order here Order of Calculations When Adding, Copying, or Deleting Quote Items.

Add calculations to the Quantity field of Main and Line item in proper order. See order Quantity Calculationshere.

Scripting

Taxation fields on quote are exposed through scripting. Users must be able to read and assign values. Taxes can be received from external systems and applied on quote through scripting, in that case Admin will need to create custom calculations.

Taxation Tags on the Quote

Users can see values of taxation fields using CTX tags. Tags can be used in document templates when they are embedded into C or Q tag.

List of tags:

<CTX( Quote.CurrentItem.TaxAmount.Display )> -Tax amount One time for current item (first item in Items table )

<CTX( Quote.CurrentItem.Recurring Tax Amount.Display )> -Tax amount recurring for current item (first item in Items table )

<CTX( Quote.CurrentItem.TaxPercent.Display )> -Tax percent for current item (first item in Items table )

<CTX( Quote.ProductType(ProductTypeName).TaxAmount.Display )> - Sum of One-time Tax amount for selected product type

<CTX( Quote.ProductType(ProductTypeName).Recurring Tax Amount.Display )> - Sum of Recurring tax amounts for selected product type

<CTX( Quote.Total.TotalTaxAmount.Display )> - Total One-time Tax amount

<CTX( Quote.Total.TotalRecurring Tax Amount.Display )> - Total Recurring tax amount

Pricing Conditions

For products that are using Variant Pricing, taxes can be applied through pricing conditions. Admin need to map taxation fields with pricing conditions.

On this page
Enable Taxation fields on Quote Layout
Set Tax Calculations
Scripting
Taxation Tags on the Quote
Pricing Conditions
Yes
No