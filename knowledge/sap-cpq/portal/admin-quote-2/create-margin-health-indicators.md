# Create Margin Health Indicators | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/66a1296f08944719a8a268fa6adb5ba7.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create Margin Health Indicators
	
Margin Health Design and Appearance
	
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
Create Margin Health Indicators

Margin health indicators in Quote 2.0 can be set up globally for all users and all items, or for a specific user, user type and item.

Prerequisites

In Quotes    Fields, Calculations, Layout   Fields Editability, set Manufacturers Gross Margin as editable.

In Quotes  Fields, Calculations, Layout  Fields Editability

In Quotes  Fields, Calculations, Layout  Layout, add the Margin Health column to make it visible on quotes.

In Quotes  Fields, Calculations, Layout  Layout Permissions, set the visibility of the Margin Health column for a permission group by selecting the permission group on the left and the MarginHealth column on the right.

In Quotes  Fields, Calculations, Layout  Fields and Calculations, set up the following calculations:

add Item One-Time Gross Margin Percent calculation to all the quote fields that affect the One-Time Manufactures Gross Margin calculation.

add to One-Time Manufactures Gross Margin calculations for one-time discount percent and recurring discount percent.

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

On this page
Prerequisites
Procedure
Yes
No