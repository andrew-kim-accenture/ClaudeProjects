# Discounts/Multipliers | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/ad1c76adbedd41eb82f9f2898d820f31.html?locale=en-US&state=PRODUCTION&version=2603
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
Discounts/Multipliers

Multiplier and discount administration allow discounting when a quote is created.

In addition to developing pricing rules for configured products, discount and multiplier rules can be created also. These rules can be very specific, down to a particular user and a product, or very generic such as for a particular user group, product category or a product type. Any combination of selections from 5 criteria groups can be used to specify a discount or multiplier.

Multipliers and Discounts can be used individually or simultaneously. Minimum Value, Default Value, and Maximum Value can be assigned for each. The Default Value is used when a user first generates a Quote.

Depending on the Shopping Cart style used (see Visual Styles in User Types), the Default Discount, or Multiplier Value, applied to the Cart Total can be modified. Users are allowed to enter values that are within the Maximum and Minimum Value range. If a user enters a value outside of this range, then the Approval Process (see the chapter on Approval Process) is initiated.

Note

Default Value is only applied to the Cart the first time that a user generates it. If the Discount or Multiplier is modified then that value is contained as the Discount or Multiplier value. Reopened quotes will have the modified Discount or Multiplier value.

The Discounts and Multipliers administration can be accessed through the Discounts/Multipliers link under Pricing/Calculations.

Discounting rules can be deleted or edited by clicking  or  respectively. Rules can also be searched by entering criteria in the text boxes at the top and clicking the Search button on the left. To add a new rule, click Add New at the top of the screen. This brings up the screen shown below, which is also displayed if a rule is edited.

When adding a new rule, default discounts and multipliers are added in order to avoid making a mistake for those users who are not familiar with use of multipliers/discount.

When new rule is being created,

default discounts is set to 0 for min, max and default

default multipliers is set to 1 for min, max and default

Discounting rules can be specified from 5 criteria groups that are shown at the top of the page:

User Group

User

Category

Product

Product Type

The priorities of these groups are determined by what is set in Discounting under the Discounting Priorities menu (see Discount Priorities). Fields displayed to the left have higher priority. For instance, in the examples shown below, User Type has the highest priority. It should also be noted that the labels for each criteria can be changed in Priority Administration. So label names may be different from what is discussed here.

Multiple selections within each group are not allowed though. Multiple selections across different groups are allowed. When selections are made across different groups, the discount or multiplier is applicable only when all selections are true. Rules can to be created for each individual item in a criteria list if desired.

When check box ‘Use recurring price and cost’ has been activated under SAP CPQ Setup   General  Application Parameters  General, fields for ‘Discounts for Recurring Price’ and ‘Multiplier for Recurring Price’ will be added. For more details see Recurring and Non-Recurring Prices section.

Multipliers are values such as 0.5, 0.75, etc. that when applied to the list price will represent a percentage of the price, such as 50 or 75.

Discounts, on the other hand, are values such as 50, 25, etc. that when applied to the list price will represent that percentage taken off of the price.

The Condition field is used to enter expressions to determine when the rule will run. Any expression entered must resolve to 1. Entering into the Condition field will make the rule active at all times.

The example above shows a rule that users Bane Purtic from the user group CUSTOMER, can sell Personal Printer from the category Hardware using multipliers from 0.5 to 1 and/or discounts from 0 to 50, as long as those products are of product type Product. Also, according to the condition statement, this rule will only run when the user’s Zip Code is 53202.

Note

More than one rule can be written for the same product using the same user. When this is the case, the most restrictive rule will be used. This only works, though, when a rule is defined for the product, not for product type.

Conditions can also be entered into the Multiplier or Discount fields to determine the value. In this way, multiple rules do not need to be created for separate values.

This example shows that the user will have a Minimal Multiplier value of 0.25 and Default value of 0.5. The Maximum value, though, is contingent on the user’s zip code. If their zip code is 53202, then the Maximum value is 1. Otherwise, the Maximum value will be 0.75.

Conditional statements within the Multiplier or Discount fields can be used separately or in conjunction with the Condition field.

Note

For more information on Tags and IF statement expressions see Appendix A.

The User can override values? check box is used to determine whether or not a user can modify the Multiplier or Discount with a value that is out of the Minimal and Maximum value range. When a user attempts to enter a value that is out of that range, a warning is displayed alerting the user that the value is out of range.

If this box is unchecked, the user will be unable to enter the value. If checked, though, the user will be able to enter the value, but the quote is automatically submitted for approval to the user’s approve parent. The Approval Process is then initiated. See the chapter on Approval Process for more information on the Approval Process.

Note

The Approval Process must be set up in order for the User can override values check box to work correctly.

Yes
No