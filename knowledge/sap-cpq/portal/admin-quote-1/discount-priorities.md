# Discount Priorities | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/159e57828dd349c8853eb7051527fb61.html#rank
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
Discount Priorities

Setting the discount priorities allows administrators to set the order in which discounting rules are evaluated and executed on the quote.

Example
For example, you want to allow all sales representatives to discount a product to a maximum of 10%. However, a sales representative in Paris can discount the product to a maximum of 20%, because you just opened the store there and you want to give a better initial offer to buyers. In this scenario, you would create a discount rule for the specific product with a minimum discount of 0 and the maximum discount 10. Then, you would create another rule for the specific user in Paris, and the product and the rule would allow 0 as the minimum discount and 20 as the maximum discount. The first rule would have the rank 1 and the second rule for the specific user would have the rank 0. This way, when any user changes the discount of the before mentioned product on the quote, the system checks user details, and if it’s not the user from Paris, the system then checks whether the new discount is in the limits of the rule defined for that specific product. However, if the user from Paris changes the discount, then the system only applies the rule which is defined for that user.

The discounting rules are set up in the Discount/Multipliers page for Quote 1.0 and the Discounts page for Quote 2.0. Both pages are in the Pricing/Calculations section.

The discount rules can be set for a specific user, user type, a specific product, product type, and product category. If needed, per company needs, you can define a custom label for each field.

Rank

The rank of rules can be set from 0 to 5, 0 being the highest rank and 5 the lowest. If you create a rule for a user with the rank 0, and a rule for a user type with the rank 5, the system will first evaluate the rule set up for the user, since it has the lowest rank.

The rules are applied when users change both item discounts and product type discounts, but the system evaluates them differently. When you apply a discount to an item, all rules are evaluated and applied according to their rank. However, if you apply the discount to a product type, the rules based on the product category and a specific product will not be evaluated. The reason behind this is that products in one category can have different product types. In the same way, if you change the discount on a product type, the system won’t evaluate the discount set for a specific product because that product type probably contains other products as well.

On this page
Example
Rank
Yes
No