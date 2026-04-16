# Recurring Discount Amount | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/40e188ac76764ecea8434d4dfc7e6e2e.html?locale=en-US&state=PRODUCTION&version=2603
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
Recurring Discount Amount

Calculation

	

Description

	

Formula




Item Recurring Discount Percent (from Recurring Discount Amount)

	

Calculates item Recurring discount percent from item Recurring discount amount.

	

Item.MrcDiscountPercent = 100 * Item.MrcDiscountAmount / Item.MrcListPrice




Item Recurring Net Price

	

Calculates item Recurring net price from Recurring discount amount.

	

Item.MrcNetPrice = Item.MrcListPrice - Item.MrcDiscountAmount




Item Recurring Extended Amount

	

Calculates item Recurring extended amount from item Recurring net price and quantity.

	

Item.MrcExtendedAmount = Item.MrcNetPrice * Item.Quantity




Product Type Recurring Net Price

	

Calculates Recurring extended amount as a sum of all item Recurring extended amounts.

	

ProductType.MrcNetPrice = Sum(Item.RecurringExtendedAmount)




Product Type Recurring Discount Amount

	

Calculates Recurring discount amount from Recurring net price.

	

ProductType.MrcDiscountAmount = ProductType.MrcListPrice - ProductType.MrcNetPrice




Product Type Recurring Discount Percent

	

Calculates product type Recurring discount percent from product type Recurring discount amount.

	

ProductType.MrcDiscountPercent = ProductType.MrcDiscountAmount / ProductType.MrcListPrice




Total Recurring Net Price

	

Calculates item total Recurring extended amount as a sum of all item Recurring extended amounts.

	

Totals.MrcNetPrice = Sum(Item.RecurringExtendedAmount)




Total Recurring Amount

	

Calculates total Recurring amount as a sum of all item Recurring extended amounts.

	

Totals.MrcAmount = Totals.MrcNetPrice




Total Recurring Product Discount Amount

	

Calculates item total Recurring extended amount from total Recurring net price.

	

Totals.MrcProductDiscountAmount = Totals.MrcListPrice - Totals.MrcNetPrice




Total Average Recurring Product Discount Percent

	

Calculates item total Recurring discount percent from Recurring product discount amount.

	

Totals.AverageMrcProductDiscountPercent = 100 * Totals.MrcProductDiscountAmount / Totals.MrcListPrice




Item Recurring Gross Margin Percent

	

Calculates item Recurring gross margin percent from item Recurring extended amount and item Recurring extended cost.

	

Item.MrcGrossMarginPercent = 100 * (Item.MrcExtendedAmount - Item.MrcExtendedCost) / MrcExtendedAmount




Product Type Recurring Gross Margin Percent

	

Calculates Recurring manufactures gross margin from product Recurring net price.

	

ProductType.MrcGrossMarginPercent = 100 * (ProductType.MrcNetPrice - ProductType.MrcCost) / ProductType.MrcNetPrice




Total Recurring Gross Margin Percent

	

Calculates total Recurring manufactures gross margin from Recurring net price.

	

Totals.MrcGrossMarginPercent = 100 * (Totals.MrcNetPrice - Totals.MrcCost) / Totals.MrcNetPrice

Yes
No