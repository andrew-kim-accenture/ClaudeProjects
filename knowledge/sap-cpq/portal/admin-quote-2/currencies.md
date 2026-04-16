# Currencies | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/1d8fc5b39dd4443f9d7cffe50b2e45c8.html?locale=en-US&state=PRODUCTION&version=2603
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
Currencies

Currencies and Market Definitions allow addition of multiple currencies and their conversions into the system.

Currencies are used to convert the default currency to a foreign currency. SAP CPQ calculates foreign currencies by multiplying the conversion rate given in table Currencies by default currency price. This amount is then multiplied by Market Definition to get the final converted price. Market Definitions give the ability to vary the amount of conversion for different areas. For instance, in the US, the Dollar is worth a standard amount, but it may be worth a different amount if used somewhere else. To compensate for this, market definitions can multiply the US Dollar, or any other currency, by a value greater or less than 1 to give the US Dollar a higher or lower value.

Default Currency
One of the currencies has to be set as the default currency. The US Dollar (USD) is the default currency used throughout the system and is the base currency. For the purpose of the manual, we’ll keep the US Dollar as the default currency. When a different currency is calculated, the US Dollar (default currency) is multiplied by the conversion rate entered in Currencies.
Note

Default currency in CPQ - Do not use currency conversion for SAP Variant Configuration products in configurator so the same price and currency is displayed as in the document. The price received from CPS must not be recalculated in configurator based on default currency and market in SAP CPQ.

Currency Fields

The Currency column displays the common abbreviation of the currency, the conversion rate displays how many units of that currency is equivalent to 1 unit of the default currency (the default currency has a conversion rate of 1), the description displays the longer description of the currency, the sign displays the sign entered for that currency, and the default column displays whether the status is the default status or not (only one of the currency has a YES in the default column).

User will enter a short name of the currency in the currency column (because this name would be used to refer to this currency throughout SAP CPQ), than will enter the conversion rate of the currency relative to the base currency, brief description of the currency, a sign for the currency, and choose whether the currency would be the default or not. If some other currency is currently set as the default currency, a confirmation screen would pop up informing that another currency is currently set as the default currency. Click OK to make the current currency the default or click Cancel to cancel changing the default status to the current status.

Currency symbol can be changed, but it is important to know that changing it you will affect all markets and therefore all quotes that uses that currency. It is not possible to change currency symbol to one already used.

Currency Factor

The other currencies are available to modify the currency factor. Because USD is the base and default currency, its factor cannot be changed and is always constant at 1.

The left column displays the currency description, while the middle column displays the currency abbreviation. The abbreviation is used on the Market Definition page to modify the value of the currency.

To edit a currency factor, delete the current factor, enter the new one, then click Save.

Deleting a Currency

A currency cannot be deleted while the currency is being used by a market (See Markets for more information) or while the currency is the default currency.

On this page
Default Currency
Currency Fields
Deleting a Currency
Yes
No