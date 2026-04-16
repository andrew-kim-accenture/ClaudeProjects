# Country/Region Sales Tax | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/ea167f0c90f04a869b026476aac3993e.html#set-up-editable-tax-field-for-users
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
Country/Region Sales Tax
Overview

This feature enables admin to define VAT (per country/region) percentage that will be applied when calculating quote amount. Admin has the option to define tax calculation based on the country/region found in the Ship To role, to define formula that will calculate VAT percentage or to make the tax field editable in the quote.

Set up Tax calculation based on Ship To country/region

To modify or add a tax percentage for a country/region, click the Country/Region Sales Tax link under the Pricing/Calculations menu.

Tax percentages can be Deleted or Edited by clicking the corresponding buttons next to the Country/Region Name. To add a new country/region tax click Add New at the top of the screen.

To create a new tax, on this screen, select the country/region and then enter the percentage that will be associated with that country/region. Click Save to save the country/region sales tax.

Once created, country/region taxes are added to the quote total. The country percentage used on the quote is determined by the country/region entered in the Ship to Address. Once a country/region is chosen for the Ship to address on the Customer Info tab of the quote, the related percentage is added to the total amount.

Set up formula for country/region tax calculation
Note

The result of the formula calculation will override the percentage calculated based on Ship To country/region (table in the previous screen).If formula is left empty, tax will be calculated based on table values

By clicking on button 'Country/Region Tax Formula' you can define formula for country/region tax. On the user side when calculating tax, value that is obtained based on this formula will override table values.

Note

If user wants to obtain value from the Country/Region Tax table and use it in formula, it is possible to use this tag- <*CTX( Global.Tax.Country(<*CTX( Quote.Customer(ShipTo).CountryAbbrev )*>) )*>.

Set up editable tax field for users

If you want to make country/region tax field editable for your users, you need to set up cart fields 'Total - VAT Amount' and/or 'Total - VAT Percent' to be editable in the quote. It can be done through Adding/Removing Editable Fields in Cart Fields Administration.

On this page
Overview
Set up Tax calculation based on Ship To country/region
Set up formula for country/region tax calculation
Set up editable tax field for users
Yes
No