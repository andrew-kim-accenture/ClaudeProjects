# Recurring and Non-Recurring Prices | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/2f7e74976f2f4ed582a0d76e2338158f.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations


	Setup Help
	
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
Recurring and Non-Recurring Prices

MRC and NRC are supported in the same product and on the same line item in the cart. There are two sets of prices, discounts, margin indicators, margin sliders for each item and product type. This allows businesses that have monthly billings to be able to accurately display this pricing in their configuration and in the cart.

Concepts

A single item can be defined with two prices:

a one time fee (non-recurring cost or NRC)

a recurring fee (monthly recurring cost or MRC).

For example, this can be very useful when selling software product with initial installation/setup monthly fee or if some company is selling subscriptions with initial installation cost and monthly subscription fee.

Fields for MRC and NRC
Fields in Carts

In product configuration, recurring prices are added to responder for every attribute where check box ‘Show Recurring Price’ is selected. This price is displayed under current price. At the bottom of responder (under Total Price), there is new label ‘Total Recurring Price’ with product recurring price displayed.

Fields in Quotes and Quote Items

All relevant fields in the quote and in quote items (Net Recurring Price, Recurring Extended Amount, Discount Amount, Recurring List Price, Channel Markup Percent, Recurring cost etc.) are duplicated. Additionally, all appropriate fields in quote total are duplicated (also for product types). Same logic that is applied for non-recurring price and cost will be applied for recurring prices and cost. No new quote calculations will be added (existing ones will be changed).

Only layout for ‘QuoteDefault.xslt’ will be changed to support recurring prices and cost. Parameter ‘Use recurring price and cost’ will be used to determine whether recurring price and cost fields will be displayed.

Prerequisites

In order to use this feature, user has to set up few parameters first.

In Setup  General  Application Parameters  General, there will be a check box ‘Use recurring price and cost’ (not selected by default). For more details, see Application Parameters section.

When this is activated, MRC/NRC fields in Discounts and Margin Health will be active.

In Setup  Pricing/Calculations  Discounts, fields for ‘Discounts for Recurring Price’ will be added. For more details see Discounts.

In Setup  Pricing/Calculations  Margin Health Indicators, in step 3, new fields for ‘Margin For Recurring Price’ are added. For more details see Create Margin Health Indicators.

On Tab 1 of the Product Administration, there is a field for Base Recurring Price in Pricing section that must be filled.

On Tab 2 of the Product Administration, there are fields for attribute value ‘Recurring Price’ and ‘Recurring Cost’ in table for attribute values that must be filled. Also, there is a checkbox Show Recurring Price that must be selected.

On this page
Concepts
Fields for MRC and NRC
Prerequisites
Yes
No