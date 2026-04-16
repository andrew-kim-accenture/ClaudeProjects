# Discount Amount Calculations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/ecbdc225d94a4a308550aa20c416eea5.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration


	Setup Help

	
Fields, Calculations, Layout


	
Quote 2.0 Calculations


	
Fields and Calculations
	
Quote Field Calculations
	
Quote Field Editability
	
Order of Calculations When Adding, Copying, or Deleting Quote Items
	
Order of Calculations when Changing Quote Field Values


	
Discount Amount Calculations
	
Discount Percent Calculations
	
Extended Amount Calculations
	
Gross Margin Percent Calculations
	
Recurring Discount Amount
	
Recurring Discount Percent Calculations
	
Recurring Extended Amount Calculations
	
Recurring Gross Margin Percent Calculations
	
Recurring Net Price
	
One-Time Net Price
	
Quantity Calculations
	
Rolled-up and Reverse Calculations
	
Calculations for SAP Subscription Billing Integration
	
Quote Custom Sections
	
Quote Layout
	
Quote Layout Permissions
	
Item Types
	
Shipping
	
Effective Date on Quote Item
	
Document Generation
	
Custom Quote Tabs
	
Quote Tables
	
Quote Fields
	
Quote Tab Permissions
	
Quote List Settings
	
Bulk Quote Deletion
	
Quote Visibility
	
Quote Acceptance Settings
	
Partner Functions
	
Solution Design
	
Quote Teams
	
Filtering Items in Quote
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
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
Discount Amount Calculations

Calculation

	

Description

	

Formula




Item One-Time Discount Percent (from One-Time Extended Amount)

	

Calculates item One-Time discount percent from item One-Time extended amount, One-Time list price and quantity.

	

Item.NrcDiscountPercent = 100 - 100 * Item.NrcExtendedAmount / Item.NrcListPrice * Item.Quantity




Item One-Time Net Price

	

Calculates item One-Time net price from item list price and item discount percent.

	

item.NetPrice = item.ListPrice * (1 - item.DiscountPercent / 100)




Item One-Time Extended Amount

	

Calculates item One-Time extended amount from item net price and quantity.

	

Item.ExtendedAmount = Item.NetPrice * Item.Quantity




Product type Net Price

	

Calculates product type net price as a sum of all item extended amounts.

	

ProductType.NetPrice = Sum(Item.ExtendedAmount)




Product Type Discount Amount

	

Calculates One-Time discount amount from product type One-Time net price.

	

ProductType.DiscountAmount = ProductType.ListPrice - ProductType.NetPrice




Product Type One-Time Discount Percent

	

Calculates product type One-Time discount percent from product type One-Time discount amount.

	

ProductType.DiscountPercent = 100 * ProductType.DiscountAmount / ProductType.ListPrice




Total One-Time Net Price

	

Calculates total One-Time extended amount as a sum of all item extended amounts.

	

Totals.NetPrice = Sum(Item.ExtendedAmount)




Total Amount

	

Calculates total amount as a sum of all item Recurring extended amounts.

	

Totals.Amount = Totals.NetPrice




Total Product Discount Amount

	

Calculates item total One-Time extended amount from total net price.

	

Totals.ProductDiscountAmount = Totals.ListPrice - Totals.NetPrice




Total Average Product Discount Percent

	

Calculates item total One-Time discount percent from total product discount amount.

	

Totals.AverageProductDiscountPercent = 100 * Totals.ProductDiscountAmount / Totals.ListPrice




Item Gross Margin Percent

	

Calculates item gross margin percent from item extended amount and item extended cost.

	

Item.GrossMarginPercent = 100 * (Item.ExtendedAmount - Item.ExtendedCost) / Item.ExtendedAmount




Product Type Gross Margin Percent

	

Calculates One-Time manufactures gross margin from product type net price.

	

ProductType.GrossMarginPercent = 100 * (ProductType.NetPrice - ProductType.Cost) / ProductType.NetPrice




Total Average Gross Margin Percent

	

Calculates item total Recurring manufactures gross margin from total Recurring net price and total mrc cost.

	

Totals.MrcGrossMarginPercent = 100 * (Totals.MrcNetPrice - Totals.MrcCost) / Totals.MrcNetPrice

Yes
No