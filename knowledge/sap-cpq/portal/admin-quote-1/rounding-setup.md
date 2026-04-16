# Rounding Setup | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/830077514985404bb9d04f4b36075055.html#troubleshooting
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
Rounding Setup

In Setup  Pricing/Calculations  Rounding Setup, you can create and apply rounding rules to columns on quotes. Rounding rules determine how many digits are used in price calculations and how many decimal places are displayed to users.

Note

There is always the Default rounding rule which is used in all calculations whenever specific values are not provided. This rounding rule can be edited.

Adding Rounding Rules

Go to Setup  Pricing/Calculations  Rounding Setup.

Two parameters and the list of existing rounding rules displays.

Click Add New.

The list of columns on quotes for which rounding rules can be set displays.

Select the column for which you wish the rounding rule to be applied.

Rounding preferences are displayed.

Enter a number of decimals to be used in calculations.

This number determines how many decimals will be used in the calculations. The value is rounded per the option selected in the Types of Decimal Rounding parameter.

Enter a number of decimals to be used when performing rounding.

This number determines how many decimals will display in the quote for this column. If the number of decimals used for rounding is lower than the number of decimals used in calculations, the value is rounded per the option selected in the Types of Decimal Rounding parameter.

Click Save.

Rounding Options

There are two available parameters in Setup  Pricing/Calculations  Rounding Setup that can be applied to the rounding logic you wish to be used in your environment.

Types of Decimal Rounding - determines the rounding method which will be applied to a certain rounding rule. Its values are:

Rounding Away from Zero - when a number is halfway between two other numbers, it is rounded towards the nearest number that is away from zero.

Rounding to Even - when a number is halfway between two other numbers, it is rounded towards the nearest even number.

Original number

	

“Away From Zero” method

	

“To Even” method




3.5

	

4

	

4




2.8

	

3

	

3




2.5

	

3

	

2




2.1

	

2

	

2




-2.1

	

-2

	

-2




-2.5

	

-3

	

-2




-2.8

	

-3

	

-3




-3.5

	

-4

	

-4

Fix Quote Amount After Currency Conversion - This parameter checks if there is a difference between the total net price and the summed (and rounded) extended amount. For example, if the total net price is 100 and the price of each item is 33.33 (99.99 in total for three items), there will be a difference of 0.01 between the total net price and the extended amount. If there is a difference, that amount is added to:

the item with a maximum extended amount if the Fix Items value is selected.

the total amount if the Fix Totals value is selected.

Rounding for Extended Amount

When you are setting up a different number of decimal places for displaying or calculating Item or Total columns on quotes, it is not enough to simply change the rounding setup for that column. Since different quote columns’ mathematics are executed (on adding/updating items on the quote, changing that column value and so on) you must know to what decimal place numerical values (quote columns that other columns depend on) in the mathematical logic are rounded off.

All Item Fields - Direct ver. 1

Product type all fields - Direct

Total All Calculation

Extended Amount is calculated as follows:

ExtendedAmount = Qty * NetPrice So, NetPrice should also be included in the rounding setup

Net Price is calculated as follows:

NetPrice = ListPrice * (1 - DiscountPercent) * Multiplier List Price, Discount Percent and Multiplier should also be included.

Troubleshooting

Some issues may occur when the rounding is applied to quote columns.

The Total NRC discount amount exists in SAP CPQ, although neither of the items has a discount value set. This may appear as a result of a calculation error, which can be caused by an invalid setting in the Rounding section. One example of this would be items, which have an extended amount with a decimal residue (for example, 100.5). If the value of the rounding setting is not greater than zero, the value right of the decimal separator may be truncated, leading to the rounding issue.

On this page
Adding Rounding Rules
Rounding Options
Rounding for Extended Amount
Troubleshooting
Yes
No