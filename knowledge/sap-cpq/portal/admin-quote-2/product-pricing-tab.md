# Product Pricing Tab | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/c5674eb030fd4345a0a696e12ddf1117.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Product Implementation


	
Create Products


	
Product Definition Tab
	
Product Sales Area Tab
	
Product Pricing Tab
	
Product Attributes Tab
	Product Rules and Messages Tab
	
Product Scripts Tab
	
Products Layout Tab
	
Products Advanced Settings Tab (Code Matching)
	Product Actions
	
Product Categories
	
Attributes
	
Attribute Visibility Restrictions
	
Unit of Measurement
	
Product Types
	
Custom Tables
	
Sequences
	
Sequence Substitution
	
Guided Selling
	
Product Favorites
	
Product Tabs
	
Quick Search and Advanced Search
	
Set Configuration Based on XML
	Integrations
	
Pricing/Calculations
	
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
Product Pricing Tab

In the Pricing tab, you can choose the Pricing Type for the created product. From the dropdown list, you can select either Pricebook Lookup or Custom Pricing.

When checkbox Use recurring price and cost has been activated under in Setup  General  Application Parameters, a new field for Base Recurring Price is added. For more details, see Recurring and Non-Recurring Prices 1.0.

The base recurring price can be retrieved via CTX tags and scripting. BaseMRCListPrice object is available in Quote.CurrentItem in CTX tag wizard and it has the following properties: DefaultDecimal, DefaultDisplay, MarketDecimal, and MarketDisplay.

In scripting, there are two properties available: BaseMRCListPrice, and BaseMRCListPriceInMarket.

If a product has both the recurring price and the base recurring price defined in the Setup, the CTX and scripting properties retrieve the recurring price. However, if the recurring price is not defined, the properties retrieve the base recurring price.

A Base Price can be entered for the product. If the price consists of more than just the base price plus the sum of the attribute prices, then an expression can be entered through the Pricing Formula.

Product price formula: Product price or main item price is calculated by computing the pricing formula if it exists. Otherwise, if the formula is left blank, the product price is equal to the Product Price field plus a sum of individual attribute prices, except for attributes that are marked as line items. Attributes that are marked as line items display their own price and aren't included in the main item price. You can enter an expression in the Cost field to determine the cost of the product.

Product Cost Formula: Product cost or main item cost is calculated by computing this formula and adding all attribute costs for all attributes that aren’t marked as line items to the formula. Attributes that are marked as line items display their own cost and aren't included in the main item cost.

When Pricing Mechanism is Pricebook Lookup, pricing fields are hidden. A link View Prices is shown. Clicking on View Prices brings back a popup window showing all pricebooks and all records for this part number in those pricebooks.

Related Information
Tags and Expressions
Pricing
Yes
No