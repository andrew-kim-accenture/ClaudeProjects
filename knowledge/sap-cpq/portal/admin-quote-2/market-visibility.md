# Market Visibility | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/96a3d652ebcf431696789a3d0a058a9e.html?locale=en-US&state=PRODUCTION&version=2603
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
Market Visibility

Once a Market has been defined, it is not visible until a user has been given permission to see the Market. This is handled in Market Visibility under Pricing/Calculations. Here visibility rules can be created to determine which user(s) see which Markets.

The Market Visibility Administration page is shown in the following figure. Here visibility rules can be Deleted or Edited by clicking the respective symbol to the left.

To add a new rule, click Add New at the top of the administration screen. Creating a new visibility rule brings up the screen shown below.

Three criteria fields are displayed at the top of the screen: User, User Type, and Company. Defined Users (Employee), User Types (Type), and Companies are listed in each field. Selection of the criteria fields determines which user(s) can view the selected market(s). Each criteria selected must be true in order for the markets selected to be visible. For instance, if user Hooly Cook and user type Inside Sales are selected for a set of markets, then that rule will work for Hooly only if she is part of the Inside Sales user type i.e. the selections in the User, User Type and Company list-boxes are connected with a logical AND operator, so the market is visible only when all three selections are true. However, users are able to access quotes even when the visibility of the quotes' selected market is restricted to them.

The Market Name field displays the Market Definitions that have been created. To select multiple markets (under the Market Name list-box), click and drag to select multiples, hold down the Ctrl key and make multiple selections, or click one hold down the Shift key and click another to make multiple selections. The Condition field can contain any valid expression that can be evaluated as “1” (True) or “0” (False). If the result is “0” (False) the rule will not apply. If the expression evaluates to “1” (True) then the rule will be applied.

Click Save at the bottom of the screen to create the rule.

Note

SAP CPQ evaluates market visibility rules on user login, meaning that none of the quote-dependent tags will work in the market visibility condition. The CTX tag Visitor.BelongsToPermissionGroup will also not work in the market visibility condition.

Yes
No