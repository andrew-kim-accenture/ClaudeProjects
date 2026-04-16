# Total Amount Limit | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/96990fc6796841a991105ef5aea4abe7.html?locale=en-US&state=PRODUCTION&version=2603
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
Total Amount Limit

Total Amount Limit allows rules to be created which limit the total amount each User or User Type can Quote or Place Order.

If Cart amount limit is exceeded then a workflow rule will reroute the Cart accordingly (see Approval Process Administration). This chapter will discuss creating rules which limit the Carts total amount limit using simple and complex conditions.

Selecting the Total Amount Limit under Pricing/Calculations will bring up the Total Amount Limit screen.

Selecting Add New brings up the Total Amount Limit screen shown in the next picture. In this example, user Will Peterson is limited to $1,000.

The Condition field can contain any valid expression that can be evaluated as “1” (True) or “0” (False). If the result is “0” (False) the rule will not apply. If the expression evaluates to “1” (True) then the limit will be applied.

The same simple rule can be created, but applied to an entire group. At the next picture the Entire Inside Sales group can only quote $5,000. If Will Peterson from the previous example was a part of the Inside Sales Group, he would be able to quote up to maximum of $5,000 because of the Priority Rules used in this example.

Note

Fields displayed on the left have a higher priority.

Complex Cart Limits

Using the 2 examples above we can also create complex rules that would evaluate to 0 or 1 in the condition field. Instead of using a 1 for John Smith, let’s set his limit based on the location of the customer. At the next picture, if the customer’s zip code is equal to 53202 then John Smith can quote up to $10,000. This is accomplished with the expression: [EQ](<*CUSTOMERZIPCODE*>, 53202)

In the next example, the Channel Rep Group can only quote up to $5,000 if the Territory of the Customer equals West. Uses the expression: [EQ](<*CUSTOMERTERRITORY*>, WEST)

When finished, click the Save button. This adds the new rule to list on the Total Amount Limit page. To Edit or Delete a rule, click the respective symbol next to the group column. Total Amount Limit can be used in the Approval Process Administration to delegate which user will receive any Submit for Approval requests from selected users. For more information see Approval Process Administration.

Note

The tag <*USERAMOUNT*> is used to retrieve the Total Amount Limit for a user

Yes
No