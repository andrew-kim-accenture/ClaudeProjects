# Quote Field Calculations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/18726d5b66974bc1a99b8e6b0b62b7fe.html?locale=en-US&state=PRODUCTION&version=2603
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
Quote Field Calculations

Most quote fields are calculated via one predefined formula. However, the value of some of them is calculated via multiple formulas.

Example
Three formulas are available for calculating Item.DiscountPercent:

Item.DiscountPercent = 100 * Item.DiscountAmount / Item.ListPrice

Item.DiscountPercent = 100 - 100 * Item.NetPrice / Item.ListPrice

Item.DiscountPercent = 100 - 100 * Item.ExtendedAmount / Item.ListPrice * Item.Quantity

The first calculation is attached to the One-Time Discount Amount and it's triggered once users change the value in this field. The second calculation will be triggered after One-Time Net Price is changed and the third after One-Time Extended Amount is changed.

You can find below formulas that are used for calculating all quote fields (main items, line items, product type, and total items). The first column contains the name of the field as it is displayed on quotes. Calculation contains calculation names as defined in the Quote Fields and Calculations section. In addition, a description of each field is provided as well as the formula for calculating the field.
Main Item and Line Item Fields

Quote Field

	

Calculation

	

Description

	

Formula




One-Time List Price

	

Item One-Time List Price

	

Calculates item One-Time list price from item One-Time extended list price.

	

Item.ListPrice = Item.ExtendedListPrice / Item.Quantity




Recurring List Price

	

Item Recurring List Price

	

Calculates Recurring List Price from Recurring Extended List Price.

	

Item.MrcListPrice = Item.MrcExtendedListPrice / Item.Quantity




One-Time Discount Percent

	

Item One-Time Discount Percent (from Discount Amount)

	

Calculates item One-Time discount percent from item discount amount.

	

Item.DiscountPercent = 100 * Item.DiscountAmount / Item.ListPrice




One-Time Discount Percent

	

Item One-Time Discount Percent (from item net price)

	

Calculates item One-Time discount percent from net price.

	

Item.DiscountPercent = 100 - 100 * Item.NetPrice / Item.ListPrice




One-Time Discount Percent

	

Item One-Time Discount Percent (from Extended Amount)

	

Calculates item One-Time discount percent from item extended amount.

	

Item.DiscountPercent = 100 - 100 * Item.ExtendedAmount / Item.ListPrice * Item.Quantity




Recurring Discount Percent

	

Item Recurring Discount Percent (from Recurring Discount Amount)

	

Calculates item Recurring discount percent from item Recurring discount amount.

	

Item.MrcDiscountPercent = 100 * Item.MrcDiscountAmount / Item.MrcListPrice




Recurring Discount Percent

	

Item Recurring Discount Percent (from Recurring Net Price)

	

Calculates item Recurring discount percent from item Recurring net price.

	

Item.MrcDiscountPercent = 100 - 100 * Item.MrcNetPrice / Item.MrcListPrice




Recurring Discount Percent

	

Item Recurring Discount Percent (from Recurring Extended Amount)

	

Calculates item Recurring discount percent from item Recurring extended amount.

	

Item.MrcDiscountPercent = 100 - 100 * Item.MrcExtendedAmount / Item.MrcListPrice * Item.Quantity




One-Time Extended Amount

	

Item One-Time Extended Amount

	

Calculates item One-Time extended amount from item net price and quantity.

	

Item.ExtendedAmount =(Item.NetPrice * Item.Quantity)+Item.TaxAmount




Recurring Extended Amount

	

Item Recurring Extended Amount

	

Calculates item Recurring extended amount from item Recurring net price and quantity.

	

Item.MrcExtendedAmount =(Item.MrcNetPrice * Item.Quantity)+Item.MrcTaxAmount




One-Time Cost

	

Item Cost

	

Calculates item One-Time cost from item extended cost and quantity.

	

Item.Cost = Item.ExtendedCost / Item.Quantity




Recurring Cost

	

Item Recurring Cost

	

Calculates item Recurring cost from item Recurring extended cost and quantity.

	

Item.MrcCost = Item.MrcExtendedCost / Item.Quantity




One-Time Extended Cost

	

Item One-Time Extended Cost

	

Calculates item One-Time extended cost from item One-Time cost and quantity.

	

item.ExtendedCost = item.Cost * item.Quantity




Recurring Extended Cost

	

Item Recurring Extended Cost

	

Calculates item Recurring extended cost from item Recurring cost and quantity.

	

Item.MrcExtendedCost = Item.MrcCost * Item.Quantity




One-Time Extended List Price

	

Item One-Time Extended List Price

	

Calculates item One-Time extended list price from item One-Time list price and quantity.

	

Item.ExtendedListPrice = Item.ListPrice * Item.Quantity




Recurring Extended List Price

	

Item Recurring Extended List Price

	

Calculates item Recurring extended list price from item Recurring list price and quantity.

	

Item.MrcExtendedListPrice = Item.MrcListPrice * Item.Quantity




One-Time Discount Amount

	

Item One-Time Discount Amount (from One-Time discount percent)

	

Calculates item One-Time discount amount from One-Time discount percent. One-Time discount amount also includes item quantity.

	

Item.DiscountAmount = Item.ListPrice * Item.Quantity * Item.DiscountPercent / 100




One-Time Discount Amount

	

Item One-Time Discount Amount (from One-Time net price)

	

Calculates item One-Time discount amount from item net price.

	

Item.DiscountAmount = Item.ListPrice - Item.NetPrice




One-Time Discount Amount

	

Item One-Time Discount Amount (from One-Time extended amount)

	

Calculates item One-Time discount amount from One-Time extended amount and quantity.

	

Item.DiscountAmount = (Item.ListPrice - Item.ExtendedAmount / Item.Quantity) * Item.Quantity




Recurring Discount Amount

	

Item Recurring Discount Amount (from Recurring discount percent)

	

Calculates item Recurring discount amount from item Recurring discount percent.

	

Item.MrcDiscountAmount = Item.MrcListPrice * Item.MrcDiscountPercent / 100




Recurring Discount Amount

	

Item Recurring Discount Amount (from Recurring net price)

	

Calculates item Recurring discount percent from item Recurring net price.

	

Item.MrcDiscountAmount = Item.MrcListPrice - Item.MrcNetPrice




Recurring Discount Amount

	

Item Recurring Discount Amount (from Recurring extended amount)

	

Calculates item Recurring discount amount from Recurring extended amount.

	

Item.MrcDiscountAmount = Item.MrcListPrice - Item.MrcExtendedAmount / Item.Quantity




One-Time Net Price

	

Item One-Time Net Price

	

Calculates item One-Time net price from item discount percent.

	

item.NetPrice = item.ListPrice * (1 - item.DiscountPercent / 100)




Recurring Net Price

	

Item Recurring Net Price

	

Calculates item Recurring net price from Recurring discount amount.

	

Item.MrcNetPrice = Item.MrcListPrice - Item.MrcDiscountAmount




One-Time Manufactures Gross Margin

	

Item One-Time Gross Margin Percent

	

Calculates item One-Time gross margin percent from item One-Time extended amount and item One-Time extended cost.

	

Item.GrossMarginPercent = 100 * (Item.ExtendedAmount - Item.ExtendedCost) / Item.ExtendedAmount




Recurring Manufactures Gross Margin

	

Total Recurring Gross Margin Percent

	

Calculates total Recurring gross margin percent from totals Recurring net price and totals Recurring cost.

	

Totals.MrcGrossMarginPercent = 100 * (Totals.MrcNetPrice - Totals.MrcCost) / Totals.MrcNetPrice




One-Time Tax Amount

	

Item One-Time Tax Amount

	

Calculates items one time tax amount from tax percent and net price, also includes quantity.

	

Item.TaxAmount = Item.NetPrice * (Item.TaxPercent / 100) * Item.Quantity




Recurring Tax Amount

	

Item Recurring Tax Amount

	

Calculates item recurring tax amount from tax percent and net price, also includes quantity.

	

Item.MrcTaxAmount = Item.MrcNetPrice * (Item.TaxPercent / 100) * Item.Quantity

Product Type Fields

Quote Fields

	

Calculation

	

Description

	

Formula




Product Type One-Time Discount Percent

	

Product Type One-Time Discount Percent

	

Calculates product type One-Time discount percent from product type One-Time discount amount.

	

ProductType.DiscountPercent = 100 * ProductType.DiscountAmount / ProductType.ListPrice




Product Type Recurring Discount Percent

	

Product Type Recurring Discount Percent

	

Calculates product type Recurring discount percent from product type Recurring discount amount.

	

ProductType.MrcDiscountPercent = ProductType.MrcDiscountAmount / ProductType.MrcListPrice




One-Time Extended Amount

	

Product Type One-Time Net Price

	

Calculates One-Time net price as a sum of all item extended amounts.

	

NetPrice = Sum(Item.ExtendedAmount)




Recurring Extended Amount

	

Product Type Recurring Net Price

	

Calculates Recurring extended amount as a sum of all item Recurring extended amounts.

	

ProductType.MrcNetPrice = Sum(Item.RecurringExtendedAmount)




One-Time Extended Cost

	

Product Type One-Time Cost

	

Calculates One-Time extended cost as a sum of all item One-Time extended costs.

	

Cost = Sum(Item.ExtendedCost)




Recurring Extended Cost

	

Product Type Recurring Cost

	

Calculates Recurring extended cost as a sum of all item Recurring extended costs.

	

ProductType.MrcCost = Sum(Item.RecurringExtendedCost)




One-Time Extended List Price

	

Product Type List Price

	

Calculates NRX extended list price as a sum of all item extended list prices.

	

ListPrice = Sum(Item.ExtendedListPrice)




Recurring Extended List Price

	

Product Type Recurring List Price

	

Calculates product type Recurring list price as a sum of all item Recurring extended list prices.

	

ProductType.MrcListPrice = Sum(Item.RecurringExtendedListPrice)




One-Time Discount Amount

	

Product Type Discount Amount

	

Calculates One-Time discount amount from product type One-Time net price.

	

ProductType.DiscountAmount = ProductType.ListPrice - ProductType.NetPrice




Recurring Discount Amount

	

Product Type Recurring Discount Amount

	

Calculates Recurring discount amount from Recurring net price.

	

ProductType.MrcDiscountAmount = ProductType.MrcListPrice - ProductType.MrcNetPrice




One-Time Manufactures Gross Margin

	

Product Type Gross Margin Percent

	

Calculates One-Time manufactures gross margin from product type net price.

	

ProductType.GrossMarginPercent = 100 * (ProductType.NetPrice - ProductType.Cost) / ProductType.NetPrice




Recurring Manufactures Gross Margin

	

Product Type Recurring Gross Margin Percent

	

Calculates Recurring manufactures gross margin from product Recurring net price.

	

ProductType.MrcGrossMarginPercent = 100 * (ProductType.MrcNetPrice - ProductType.MrcCost) / ProductType.MrcNetPrice




Product type Tax Amount

	

Product Type One-Time Tax amount

	

Calculates One-Time tax amount as a sum of all item tax amounts.

	

ProductType.TaxAmount = Sum(Item.TaxAmount)




Total Recurring Tax Amount

	

Product Type Recurring Tax amount

	

Calculates Recurring tax amount as a sum of all item tax amounts.

	

ProductType.MrcTaxAmount = Sum(Item.MrcTaxAmount)

Total Fields

Quote Field

	

Calculation

	

Description

	

Formula




Item Total One-Time Extended List Price

	

Total One-Time List Price

	

Calculates total One-Time extended list price as a sum of all item extended list prices.

	

Totals.ListPrice = Sum(Item.ExtendedListPrice)




Item Total One-Time Extended Amount

	

Total One-Time Net Price

	

Calculates total One-Time extended amount as a sum of all item extended amounts. This is the total amount of all items without any added expenses or applied discounts.

	

Totals.NetPrice = Sum(Item.ExtendedAmount)




Total

	

Total Amount

	

Calculates total amount as a sum of all item Recurring extended amounts. Currently, the Total and Item Total One-Time Extended Amount have the same amounts because additional discounts, subtotals, and so on, are still not implemented for Quote 2.0. Once these are implemented, they’ll be considered when calculating the total amount.

	

Totals.Amount = Totals.NetPrice




Item Total Recurring Extended List Price

	

Total Recurring List Price

	

Calculates item total Recurring extended list price as a sum of all item Recurring extended list prices.

	

Totals.MrcListPrice = Sum(Item.RecurringExtendedListPrice)




Item Total Recurring Extended Amount

	

Total Recurring Net Price

	

Calculates item total Recurring extended amount as a sum of all item Recurring extended amounts.

	

Totals.MrcNetPrice = Sum(Item.RecurringExtendedAmount)




Item Total Recurring Amount

	

Total Recurring Amount

	

Calculates total Recurring amount as a sum of all item Recurring extended amounts.

	

Totals.MrcAmount = Totals.MrcNetPrice




Item Total One-Time Extended Cost

	

Total Cost

	

Calculates item total One-Time extended cost as a sum of all item extended costs.

	

Totals.Cost = Sum(Item.ExtendedCost)




Item Total One-Time Extended Amount

	

Total Product Discount Amount

	

Calculates item total One-Time extended amount from total net price.

	

Totals.ProductDiscountAmount = Totals.ListPrice - Totals.NetPrice




Item Total One-Time Discount Percent

	

Total Average Product Discount Percent

	

Calculates item total One-Time discount percent from total product discount amount.

	

Totals.AverageProductDiscountPercent = 100 * Totals.ProductDiscountAmount / Totals.ListPrice




Item Total Recurring Extended Cost

	

Total Recurring Cost

	

Calculates total Recurring extended cost as a sum of all item Recurring extended costs.

	

Totals.MrcCost = Sum(Item.RecurringExtendedCost)




Item Total Recurring Extended Amount

	

Total Recurring Product Discount Amount

	

Calculates item total Recurring extended amount from total Recurring net price.

	

Totals.MrcProductDiscountAmount = Totals.MrcListPrice - Totals.MrcNetPrice




Item Total Recurring Discount Percent

	

Total Average Recurring Product Discount Percent

	

Calculates item total Recurring discount percent from Recurring product discount amount.

	

Totals.AverageMrcProductDiscountPercent = 100 * Totals.MrcProductDiscountAmount / Totals.MrcListPrice




Recurring Manufactures Gross Margin

	

Total Recurring Gross Margin Percent

	

Calculates total Recurring manufactures gross margin from Recurring net price.

	

Totals.MrcGrossMarginPercent = 100 * (Totals.MrcNetPrice - Totals.MrcCost) / Totals.MrcNetPrice




Total One-Time Tax Amount

	

Total One-Time Tax amount

	

Calculates total One-Time tax amount as a sum of all item tax amounts.

	

Total.TaxAmount = Sum(Item.TaxAmount)




Recurring Product Type Tax Amount

	

Total Recurring Tax amount

	

Calculates total Recurring tax amount as a sum of all item tax amounts.

	

Total.MrcTaxAmount = Sum(Item.MrcTaxAmount)


Yes
No