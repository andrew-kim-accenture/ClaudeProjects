# Pricing Dynamic Part Numbers and Attributes | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/72fab030145e468cbbb63bd0f5ac0004.html?locale=en-US&state=PRODUCTION&version=2603
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
Pricing Dynamic Part Numbers and Attributes

This feature brings us ability to improve pricing mechanism so that it can handle part numbers that are dynamically created in run time. This means that prices for products or attributes that have dynamical part numbers, and use price books can be calculated through run time.

Two new application parameters are introduced:

Prevent users from quoting part numbers that haven’t got a price in pricebooks

Prevent users from adding product selections containing attributes that don’t have a price in pricebooks

Depend on if these parameters are turned on or off, system will behave as described below:

If the products part number is incomplete, or part number can’t be found in price book, and parameter 1 is turned on, although configuration is complete and user won’t be able to add that configuration to cart (Figure 1), explanation will be given in responder, and price for product will be 0.

Figure 1

If the products part number is incomplete, or part number can’t be found in price book, and parameter 1 is turned off, configuration is complete and user can add that configuration to cart (Figure 2), but price for product won’t be found in price book and price for that product in cart will be 0.

Figure 2

If the attribute part number is incomplete, or part number can’t be found in price book, and parameter 2 is turned on, although configuration is complete user won’t be able to add that configuration to cart (Figure 3), explanation will be given in responder, price for attribute will be 0, but Total price will be calculated.

Figure 3

If the attribute part number is incomplete, or part number can’t be found in price book, and parameter 2 is turned off, configuration is complete and user can add that configuration to cart (Figure 4), but price for attribute won’t be found in price book and price for that attribute will be 0 in cart, Total price will be calculated.

Figure 4

If both parameters 1 and 2 are turned off and product part number and attribute part number can’t be found, although configuration is complete user won’t be able to add that configuration to cart, explanation will be given in responder (Figure 5).

Figure 5

On Admin side there will be two application parameters in Setup  General  Application Parameters  Configurator:

Prevent users from quoting part numbers that haven’t got a price in pricebooks

Prevent users from adding product selections containing attributes that don’t have a price in pricebooks

If you go to Product/Attribute Options tab in product edit, and edit some attribute, you will see that for the attribute values that are using price books there is a new field ‘Price Code’ (Figure 6). Depend on that (price code and part number) prices from price book will be calculated, first from child price book, and if price code + part number can’t be found there, SAP CPQ will look in parent price book for same codes.

Figure 6

If you click on ‘View prices’ on some attribute value that uses dynamic price code following message will appear (Figure 7).

Figure 7

If you are on Product Definition tab, and your product is using price book lookup and has dynamic part number, if you click on ‘View Prices’ following message will appear (Figure 8).

Figure 8
Yes
No