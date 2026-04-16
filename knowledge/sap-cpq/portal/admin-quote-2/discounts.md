# Discounts | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/dbebf677db82499b9e65c39287770c3c.html?locale=en-US&state=PRODUCTION&version=2603
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
Discounts

Discount administration allow discounting when a quote is created.

In addition to developing pricing rules for configured products, discount rules can be created. These rules can be very specific, down to a particular user and a product, or very generic such as for a particular user group, product category or a product type. Any combination of selections from 5 criteria groups can be used to specify a discount.

Discounts can be used individually or simultaneously. Minimum Value, Default Value, and Maximum Value can be assigned. The Default Value is used when a user first generates a Quote.

Depending on the Shopping Cart style used (see Visual Styles in User Types), the Default Discount applied to the Cart Total can be modified. Users are allowed to enter values that are within the Maximum and Minimum Value range. If a user enters a value outside of this range, then the Approval Process (see the chapter on Approval Process) is initiated.

Note

Default Value is only applied to the Cart the first time that a user generates it. If the Discount is modified then that value is contained as the Discount value. Reopened quotes will have the modified Discount value.

The Discounts can be accessed through the Discounts link under Pricing/Calculations.

Creating a Discount Rule

When adding a new rule, default discounts are added in order to avoid making a mistake for those users who are not familiar with use of discount.

When new rule is being created, default discounts is set to 0 for min, max and default

Discounting rules can be specified from 5 criteria groups that are shown at the top of the page:

User Group

User

Category

Product

Product Type

The priorities of these groups are determined by what is set in Discounting under the Discounting Priorities menu (see Discount Priorities). Fields displayed to the left have higher priority. For instance, in the examples shown below, User Type has the highest priority. It should also be noted that the labels for each criteria can be changed in Priority Administration. So label names may be different from what is discussed here.

Multiple selections within each group are not allowed though. Multiple selections across different groups are allowed. When selections are made across different groups, the discount is applicable only when all selections are true. Rules can to be created for each individual item in a criteria list if desired.

When check box ‘Use recurring price and cost’ has been activated under SAP CPQ Setup   General  Application Parameters  General, fields for ‘Discounts for Recurring Price’ will be added. For more details see Recurring and Non-Recurring Prices 1.0 section.

Values and Conditions

Discounts are values such as 50, 25, etc. that when applied to the list price will represent that percentage taken off of the price.

The Condition field is used to enter expressions to determine when the rule will run. Any expression entered must resolve to 1. Entering into the Condition field will make the rule active at all times.

Note

More than one rule can be written for the same product using the same user. When this is the case, the most restrictive rule will be used. This only works, though, when a rule is defined for the product, not for product type.

Conditions can be entered into the Discount fields to determine the value. In this way, multiple rules do not need to be created for separate values.

Conditional statements within the Discount fields can be used separately or in conjunction with the Condition field.

Note

For more information on Tags and IF statement expressions see Appendix A.

The User can override values? check box is used to determine whether or not a user can modify the Discount with a value that is out of the Minimal and Maximum value range. When a user attempts to enter a value that is out of that range, a warning is displayed alerting the user that the value is out of range.

If this box is unchecked, the user will be unable to enter the value. If checked, though, the user will be able to enter the value, but the quote is automatically submitted for approval to the user’s approve parent. The Approval Process is then initiated. See the chapter on Approval Process for more information on the Approval Process.

Note

The Approval Process must be set up in order for the User can override values check box to work correctly.

Reevaluation of Discounting Rules

Administrators can decide whether the discounting rules are reevaluated every time their users open a quote and every time reconfigure and recalculate actions are triggered in quotes. By deciding not to reevaluate discounting rules always but only when a specific condition is met, administrators improve the overall performance of their systems.

The field Formula Reevaluation Condition is available in Setup  Pricing/Calculations  Discounts. The field is visible when Enable Formula Reevaluation Condition is first selected on the same page.

If the formula reevaluation condition is defined, formulas defined for discounts are reevaluated based on that formula and not automatically every time the quote is updated. The system checks the results of the formula reevaluation condition and compares them with the last obtained results. If the results match, the system doesn't reevaluate the formulas. If the results are not the same, the formulas are reevaluated.

On this page
Creating a Discount Rule
Values and Conditions
Reevaluation of Discounting Rules
Yes
No