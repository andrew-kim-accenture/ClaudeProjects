# Quantity Calculations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/b451bc346dd341be977a9c42b44d3666.html?locale=en-US&state=PRODUCTION&version=2603
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
Quantity Calculations

Calculation

	

Description

	

Formula




Item One-Time Extended List Price

	

Calculates item One-Time extended list price from item One-Time list price and quantity.

	

Item.ExtendedListPrice = Item.ListPrice * Item.Quantity




Item One-Time Extended Amount

	

Calculates item One-Time extended amount from item net price and quantity.

	

Item.ExtendedAmount = Item.NetPrice * Item.Quantity




Item One-Time Extended Cost

	

Calculates item One-Time extended cost from item One-Time cost and quantity.

	

Item.ExtendedCost = item.Cost * item.Quantity




Item One-Time Discount Amount (from One-Time discount percent)

	

Calculates item One-Time discount amount from One-Time discount percent. One-Time discount amount also includes item quantity.

	

Item.DiscountAmount = Item.ListPrice * Item.Quantity * Item.DiscountPercent / 100




Product Type One-Time Net Price

	

Calculates One-Time net price as a sum of all item extended amounts.

	

NetPrice = Sum(Item.ExtendedAmount)




Product Type One-Time Tax amount

	

Calculates One-Time tax amount as a sum of all item tax amounts.

	

ProductType.TaxAmount = Sum(item.TaxAmount)




Product Type List Price

	

Calculates One-Time extended list price as a sum of all item extended list prices.

	

ListPrice = Sum(Item.ExtendedListPrice)




Product Type Discount Amount

	

Calculates One-Time discount amount from product type One-Time net price.

	

ProductType.DiscountAmount = ProductType.ListPrice - ProductType.NetPrice




Product Type One-Time Discount Percent

	

Calculates product type One-Time discount percent from product type One-Time discount amount.

	

ProductType.DiscountPercent = 100 * ProductType.DiscountAmount / ProductType.ListPrice




Product Type One-Time Cost

	

Calculates One-Time extended cost as a sum of all item One-Time extended costs.

	

Cost = Sum(Item.ExtendedCost)




Product Type Product Model Price

	

Calculates product model price by multiplying quantity by product model price.

	

ProductType.ProductModelPrice = Sum(Item.Quantity * Item.ProductModelPrice)




Total One-Time List Price

	

Calculates total One-Time extended list price as a sum of all item extended list prices.

	

Totals.ListPrice = Sum(Item.ExtendedListPrice)




Total One-Time Net Price

	

Calculates total One-Time extended amount as a sum of all item extended amounts.

	

Totals.NetPrice = Sum(Item.ExtendedAmount)




Total One-Time Tax amount

	

Calculates total One-Time tax amount as a sum of all item tax amounts.

	 


Total Amount

	

Calculates total amount as a sum of all item Recurring extended amounts.

	

Totals.Amount = Totals.NetPrice




Item Recurring Extended List Price

	

Calculates item Recurring extended list price from item Recurring list price and quantity.

	

Item.MrcExtendedListPrice = Item.MrcListPrice * Item.Quantity




Item Recurring Discount Percent (from Recurring Extended Amount)

	

Calculates item Recurring discount percent from item Recurring extended amount.

	

Item.MrcDiscountPercent = 100 - 100 * Item.MrcExtendedAmount / Item.MrcListPrice * Item.Quantity




Item Recurring Extended Cost

	

Calculates item Recurring extended cost from item Recurring cost and quantity.

	

Item.MrcExtendedCost = Item.MrcCost * Item.Quantity




Product Type Recurring Net Price

	

Calculates Recurring extended amount as a sum of all item Recurring extended amounts.

	

ProductType.MrcNetPrice = Sum(Item.RecurringExtendedAmount)




Product Type Recurring Tax amount

	

Calculates Recurring tax amount as a sum of all item tax amounts.

	

ProductType.MrcTaxAmount = Sum(Item.MrcTaxAmount)




Product Type Recurring List Price

	

Calculates product type Recurring list price as a sum of all item Recurring extended list prices.

	

ProductType.MrcListPrice = Sum(Item.RecurringExtendedListPrice)




Product Type Recurring Discount Amount

	

Calculates Recurring discount amount from Recurring net price.

	

ProductType.MrcDiscountAmount = ProductType.MrcListPrice - ProductType.MrcNetPrice




Product Type Recurring Discount Percent

	

Calculates product type Recurring discount percent from product type Recurring discount amount.

	

ProductType.MrcDiscountPercent = ProductType.MrcDiscountAmount / ProductType.MrcListPrice




Product Type Recurring Cost

	

Calculates Recurring extended cost as a sum of all item Recurring extended costs.

	

ProductType.MrcCost = Sum(Item.RecurringExtendedCost)




Total Recurring List Price

	

Calculates item total Recurring extended list price as a sum of all item Recurring extended list prices.

	

Totals.MrcListPrice = Sum(Item.RecurringExtendedListPrice)




Total Recurring Net Price

	

Calculates item total Recurring extended amount as a sum of all item Recurring extended amounts.

	

Totals.MrcNetPrice = Sum(Item.RecurringExtendedAmount)




Total Recurring Tax amount

	

Calculates total Recurring tax amount as a sum of all item tax amounts.

	 


Total Recurring Amount

	

Calculates total Recurring amount as a sum of all item Recurring extended amounts.

	

Totals.MrcAmount = Totals.MrcNetPrice




Total Product Discount Amount

	

Calculates item total One-Time extended amount from total net price.

	

Totals.ProductDiscountAmount = Totals.ListPrice - Totals.NetPrice




Total Average Product Discount Percent

	

Calculates item total One-Time discount percent from total product discount amount.

	

Totals.AverageProductDiscountPercent = 100 * Totals.ProductDiscountAmount / Totals.ListPrice




Total Recurring Product Discount Amount

	

Calculates item total Recurring extended amount from total Recurring net price.

	

Totals.MrcProductDiscountAmount = Totals.MrcListPrice - Totals.MrcNetPrice




Total Average Recurring Product Discount Percent

	

Calculates item total Recurring discount percent from Recurring product discount amount.

	

Totals.AverageMrcProductDiscountPercent = 100 * Totals.MrcProductDiscountAmount / Totals.MrcListPrice




Total Cost

	

Calculates item total One-Time extended cost as a sum of all item extended costs.

	

Totals.Cost = Sum(Item.ExtendedCost)




Total Recurring Cost

	

Calculates total Recurring extended cost as a sum of all item Recurring extended costs.

	

Totals.MrcCost = Sum(Item.RecurringExtendedCost)




Item Recurring Gross Margin Percent

	

Calculates item Recurring gross margin percent from item Recurring extended amount and item Recurring extended cost.

	

Item.MrcGrossMarginPercent = 100 * (Item.MrcExtendedAmount - Item.MrcExtendedCost) / MrcExtendedAmount




Item One-Time Gross Margin Percent

	

Calculates item One-Time gross margin percent from item One-Time extended amount and item One-Time extended cost.

	

Item.GrossMarginPercent = 100 * (Item.ExtendedAmount - Item.ExtendedCost) / Item.ExtendedAmount




Total Product Model Price

	

Calculates total One-Time product model price from item product model price and quantity.

	

Totals.ProductModelPrice = Sum(Item.Quantity * Item.ProductModelPrice)




Product Type Gross Margin Percent

	

Calculates One-Time manufactures gross margin from product type net price.

	

ProductType.GrossMarginPercent = 100 * (ProductType.NetPrice - ProductType.Cost) / ProductType.NetPrice




Total Average Gross Margin Percent

	

Calculates total average gross margin percent from total net price and total cost.

	

Totals.GrossMarginPercent = 100 * (Totals.NetPrice - Totals.Cost) / Totals.NetPrice




Product Type Recurring Gross Margin Percent

	

Calculates Recurring manufactures gross margin from product Recurring net price.

	

ProductType.MrcGrossMarginPercent = 100 * (ProductType.MrcNetPrice - ProductType.MrcCost) / ProductType.MrcNetPrice




Total Average Recurring Gross Margin Percent

	

Calculates total Recurring manufactures gross margin from Recurring net price.

	

Totals.MrcGrossMarginPercent = 100 * (Totals.MrcNetPrice - Totals.MrcCost) / Totals.MrcNetPrice

Yes
No