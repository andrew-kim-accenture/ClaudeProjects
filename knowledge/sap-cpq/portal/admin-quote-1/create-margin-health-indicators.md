# Create Margin Health Indicators | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/3ffaf843a91941b4a7406c1e70f0ac0d.html#related-information
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


	
Create Margin Health Indicators
	
Margin Health Design and Appearance
	
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
Create Margin Health Indicators

Margin health indicators can be set up globally for all users and all items, or for a specific user, user type, item, and product type.

Prerequisites

In UI Design  Quote Layout, move the Margin Health column from available to selected columns to make it visible on quotes.

In Quotes  Quote Layout Permissions, set the visibility of the Margin Health column for a permission group by moving the column from available to selected columns. Have in mind that you also need to set the visibility of the column on the Margin Health Design and Visibility page.

Enable the Margin Health action (add it to the right status in Workflow/Approval  Workflow and set the permissions for it in Workflow Permissions). The Margin Health action allows users to set the margin health on the quote after which the system recalculates the discount and eventually all other calculations are triggered according to the setup in Cart Fields Administration.

Go to Setup  Pricing/Calculations  Cart Fields Administration and add the following calculations on Add/Update Item:

All Item Fields - Direct ver. 1

Product Type All Fields - Direct

Total All

Procedure

Go to Pricing/Calculations  Margin Health  Indicators Tab.

Click Add New.

In the Users section, select the user type and the user.

The margin health indicators defined on this page apply to the selected users.

Note

The logic of rule visibility is based on a hierarchical priority system, primarily determined by the userTypeId. Here's a breakdown of how it works:

Priority Determination: The system first checks the userTypeId to determine the priority of rule application. For example, if userTypeId is set to 1, the system prioritizes finding a rule that specifically matches this userTypeId.

Rule Evaluation: Once a rule is identified based on the userTypeId, the system evaluates the rule's conditions. Within the context of a "margin health rule," the conditions are evaluated using an AND logic. This means that all specified conditions within the rule must be met for the rule to be applicable.

In the Margin Health Application section, select one of the following:

Totals – margin health displays only for the item Totals, for all the items on the quote, regardless of their type and category.

Selected Items – margin health displays for the items of the selected product, product category, and product type.

Note

The Margin Health column is visible on the quote even when the product isn’t in the categories selected here if the For items where list price is zero, display margin picture as and the For items where cost is zero, display margin picture as are set to anything but None. Selecting None for these two fields removes the column from the quote.

Note

If you are creating multiple indicators and some of them are for a specific product type or a category, and some of them apply to the entire quote, make sure the rules don't overlap. Otherwise, it may happened that SAP CPQ applies an overall rule to a product, even though there is already a rule defined for that product.

All Items – margin health displays for all items and product types on the quote.

In the Margin Health Boundaries section, enter the margin health indicators, in percent, for the price and the recurring price.

Note

Set Margin Health for Recurring Price is available only if the parameter Use Recurring Price And Cost is set to TRUE in General  Application Parameters  General Parameters.

In the Condition section, define a specific condition under which what was defined above is applicable.

The Margin Health column is now displayed on quotes.

Related Information
Margin Health Design and Appearance
On this page
Prerequisites
Procedure
Related Information
Yes
No