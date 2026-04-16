# Promotions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/5bb138a10ce94948ac95c6cbfae8e949.html#scripted-promotions
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations


	Setup Help

	
Pricebooks


	
Effective Dates for Price Book Entries
	
Pricing Dynamic Part Numbers and Attributes
	
Promotions
	
Price Code in Pricing Calculations
	
Markets
	
Market Visibility
	
Currencies
	
Discounts/Multipliers
	
Cart Fields Administration
	
Rounding Setup
	
Discount Priorities
	
Shipping
	
Total Amount Limit
	
State Sales Tax
	
Country/Region Sales Tax
	
Margin Health
	
Promotions
	
Recurring and Non-Recurring Prices
	
Quotes Administration
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Promotions

SAP CPQ feature “Promotions” allows SAP CPQ administrators and sales representatives to configure and offer special pricing or discounts for a particular product or a group of them. Administrators can define different promotions that could be customized based on various conditions.

SAP CPQ promotions feature in Responsive Design offers more flexibility when it comes to defining, organizing, configuring, and so on. Based on which design you’ve selected for your SAP CPQ environment, make sure you are reading the right part of this help page which describes “Promotions” in the Responsive design. You can also set promotions with complex discounting rules by writing IronPython scripts.

Note

Promotions are not supported in scenarios involving back-end / Variant Configuration products.

Promotions in Responsive Design

To set up Promotions, go to Setup  Pricing/Calculations  Promotions/Special Pricing. On the page you will find a list of already defined promotions.

To add a new promotion, click on Add New button. This brings definition page for promotions which have three tabs: Definition, Pricing Details and Scripts. See the following figure.

Under "Definition" tab you can choose a promotion type. There are two types, actually ways, to define promotion details:

Pricing Details – this option means that you are going to define promotion details under the tab “Promotion Details” and will not use ”Scripting” for that purpose

Scripts – this option means that you are going to write an IronPython script to define promotion details

Many fields on this form are self-descriptive. You can define a period of time in which the particular promotion will be active. Also, you can choose an option “Subsequent rank override” that will cause all promotions with rank lower than rank of the current promotion to be suspended.

"Catalog Description" field is used to input and store description of the promotion that will be displayed in Product Catalog at the product level. This and "Quote Header Description" field can contain plain text and HTML. (See the following figures).

Pricing Details or Script – not both!

When you use "Responsive Design", two ways for defining promotion details are available. You can choose one way per promotion, not both. So, if you choose to set your promotion using "Pricing Details" tab, then "Script" tab will be disabled and vice versa. We will describe both ways here.

Pricing Details

Under this tab, you can select product that you want to offer the discount on, and conditional product(s) that will provide condition rules for promotion that is to be triggered. For example, if you want to create promotion in the way that, if a user buys one product (conditional) then she can buy another product or number of products at a lower price. You are allowed to define zero or more conditional products.

You can select a discounted product by typing its Part Number, or by browsing through the list of products in your system.

Also, beside discounted product, the promotion can be set to be valid for the entire product type or product category. You can set this in the appropriate setup form (See the following figure). Setup of product type promotion and product category promotion is similar to the described setup for product promotion setup.

Note

Setting the application parameter Search exact product part number for promotions to TRUE speeds up the search of promotion products on the quote in cases when their name is not defined in Setup    Pricing/Calculations  Promotions/Special Pricing, but only their part number. The parameter is by default set to FALSE and before changing its value to TRUE, revise the existing promotions and make sure that all products have unique part numbers.

Set up Pricing Details

Under “Calculation”, two options can be set: Type and Loop.

Type:

Calculation Type “All Items Same Price” should be applied for scenarios where discounting actions are applied equally to all items (example – ‘If you buy more than 20 items of the product, you get 5% discount on all those items’).

Calculation Type “Each Break Own Price” should be applied for scenarios where depending on the quantity break, items will have a different price (example - ‘If you buy more than 20 items, you get 5 free’. First 20 items will be calculated with the full price, and additional 5 with price 0.

Loop: This option should be selected for discounting actions where users will get a discount on certain number of items for every number of products they purchase (example – ‘For every 10 items that you buy, you get 2 for free’)

Total Allowed Uses field refers to the quantity of the product offered under promotional conditions. The number of products available for the promotion will decrease each time the product is added to the quote. If products are offered outside of a promotion, the total allowed uses will not be calculated.

Quantity Breaks – In this part, you define ranges (Quantity Breaks) in quantity to which the particular pricing will be applied. Take a look at two examples.

Example 1: If you select option "All Items Same Price" under “Calculaton type” and set up Quantity Breaks as follows:

Modification Type

	

Modification Value

	

QTY From

	

QTY To




Discount Percent

	

10

	

1

	

5




Discount Percent

	

20

	

6

	

10




Discount Percent

	

30

	

11

	

15

Then, when you add 4 items into the quote, they will be discounted by 10% each. Also, if you buy 13 items, they will be discounted by 30% each. Note that Promo Discount Percent displayed in the Quote is same for each item.

Example 2:

If you select option "Each Brake Own Price" then if you buy 4 items, they will be discounted by 10% each, but if you buy 13 items then first 5 items will be discounted by 10%, next 5 items will be discounted by 20%, and the remaining 3 items will be discounted by 30%. Note that Promo Discount Percent displayed in the Quote is calculated as overall discount, based on the promotion rules.

And/Or Logic for conditional products

From time to time there might be a situation when you want to add one or more products as conditional when setup promotion. SAP CPQ makes it possible and allows you to choose whether you are going to create condition using "AND" or "OR" logic between conditional products, product types or categories. SAP CPQ groups conditions based on the login operator you had chosen during promotion set up.

Scripted Promotions

For promotions that have complex discounting rules, administrators now have the option to write IronPython script. Scripts written during promotion setup will be executed on the "Add item to cart" event.

Scripting promotions can be applied in two ways depending on If selected product for triggering promotion is:

The same product on which promotion is applied to.

A product which, if added to the quote, causes promotion to be applied on some another product.

In the first case, Item of type "IQuoteItem" can be used in script. This is a current item whose properties can be changed.

In this example, promotion for "SMB Desktop Computer" product depends on number of existing items in the quote. To apply promotion, list price needs to be calculated and promotion discount and amount will be applied automatically.

In the second case, promotion discount and amount need to be calculated through script in order to be applied on defined item.

On this page
Promotions in Responsive Design
Scripted Promotions
Yes
No