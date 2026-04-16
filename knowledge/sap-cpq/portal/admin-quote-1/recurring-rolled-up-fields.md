# Recurring Rolled-Up Fields | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/0d35d31269314d4f9669aaf319d28d75.html#editing-rolled-up-recurring-gross-margin-(relative)
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


	
Status - User Group Grid
	
Adding/Removing Editable Fields
	
Editable Quote Comment Field
	
Recurring Rolled-Up Fields
	
Rolled-Up Cost and Margin
	
Edit Item Cost on Cart
	
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
Recurring Rolled-Up Fields

This feature gives users ability to use rolled-up fields (rolled-up recurring list price, rolled-up recurring extended list price, rolled-up recurring net price, rolled-up recurring extended amount, rolled-up recurring cost, rolled-up recurring extended amount, rolled-up recurring gross margin, rolled-up recurring discount amount, rolled-up recurring discount percent, rolled-up recurring net difference from base item, rolled-up recurring end customer unit price and rolled-up recurring end customer extended price). Rolled up fields for main item are calculated as summary of all items’ field amount belonging to same configuration (for example, rolled up list price is a summary of all items' list prices).

Recurring rolled-up fields can be displayed in generated document and sent to CRM. These fields are calculated only if application flag is set that recurring prices are used in the system.

For each of these fields, new CTX tag are developed on the CurrentItem tag. Tag name is same as for non-recurring fields, with prefix MRC added (example - <*CTX( Quote.CurrentItem.MRCRolledUpDiscountAmount.DefaultDecimal )*>)

Editing rolled-up recurring net price

When a user edits rolled-up recurring net price recurring discount is recalculated for all (main and line) items.

Example:

Product total price is 1200 and product cost is 720. Recurring discount percent is 10%.

User edit rolled-up recurring net price and enters 900.

Recurring discount is calculated for all line items to 25%.

Rolled-up recurring GM is calculated to 20%.

Editing rolled-up recurring extended amount

When a user edits rolled-up recurring net extended amount recurring discount is recalculated for all (main and line) items.

Example:

Product total price is 1200 and product cost is 720. Recurring discount percent is 10%.

User edit rolled-up recurring extended amount and enters 1000.

Recurring discount is calculated for all line items to 16.67%.

Rolled-up recurring GM is calculated to 28%.

Editing rolled-up recurring gross margin

When a user edits rolled-up recurring gross margin recurring discount is recalculated for all (main and line) items.

Example:

Product total price is 1200 and product cost is 720.

Recurring rolled-up extended amount is 1080. Recurring discount percent is 10%.

User edit rolled-up recurring gross margin and enters 25.

Rolled-up recurring extended amount is calculated to 960.

Editing rolled-up recurring discount percent

When a user edits rolled-up recurring discount percent recurring discount is recalculated for all (main and line) items.

Example:

Product total price is 1200 and product cost is 720.

Recurring rolled-up extended amount is 1080. Rolled-up recurring discount percent is 10.

User edit rolled-up recurring discount percent and enters 25.

Rolled-up recurring extended amount is calculated to 900.

Editing rolled-up recurring discount percent

When a user edits rolled-up recurring discount amount recurring discount is recalculated for all (main and line) items.

Example:

Product total price is 1200 and product cost is 720.

Recurring rolled-up discount amount is 120. Recurring discount is 10. Rolled-up recurring extended amount is 1080.

User edit rolled-up recurring discount amount and enters 100.

Recurring discount is calculated to 8.33. Rolled-up recurring extended amount is calculated to 1100.

Editing rolled-up recurring net price (relative)

When a user edits rolled-up recurring net price relative recurring discount is recalculated for all (main and line) items according to their max and min discount percents.

Example:

Product total price is 1200 and product cost is 720. Recurring discount is 10%.

Max discount percent for main and line items is 40% and min discount percent for main and line items is 5%.

User edit rolled-up recurring net price and enters 1000.

Recurring discount for main and line items is calculated to 16.67%.

Editing rolled-up recurring extended amount (relative)

When a user edits rolled-up recurring extended amount relative recurring discount is recalculated for all (main and line) items according to their max and min discount percents.

Example:

Product total price is 1200 and product cost is 720.

Recurring discount percent is 10% for main and line items.

Max discount percent for main and line items is 40% and min discount percent for main and line items is 5%.

User edit rolled-up recurring net price and enters 1000.

Recurring discount for main and line items is calculated to 16.67%.

Editing rolled-up recurring gross margin (relative)

When a user edits rolled-up recurring gross margin relative recurring discount is recalculated for all (main and line) items according to their max and min discount percents.

Example:

Product total price is 1200 and product cost is 720.

Recurring discount percent is 10% for main and line items.

Max discount percent is 40% and min discount percent is 5% for main item.

Max discount percent is 20% and min discount percent is 5% for line item.

Rolled-up recurring gross margin is 33.33.

User edit rolled-up recurring gross margin and enters 25.

Recurring discount for main item is calculated to 26%. Recurring discount for line item is calculated to 14%.

Rolled-up recurring extended amount is calculated to 960.

Editing recurring rolled-up discount percent (relative)

When a user edits rolled-up recurring discount percent relative recurring discount is recalculated for all (main and line) items according to their max and min discount percents.

Example:

Product total price is 1200 and product cost is 720.

Recurring discount percent is 10%.

Max discount percent is 40% and min discount percent is 5% for main item.

Max discount percent is 20% and min discount percent is 5% for line item.

User edit rolled-up recurring discount amount and enters 17%.

Recurring discount for main item is calculated to 21.8%. Recurring discount for line item is calculated to 12.2%.

Rolled-up recurring extended amount is calculated to 996.

Editing recurring rolled-up discount amount (relative)

When a user edits rolled-up recurring discount amount relative recurring discount is recalculated for all (main and line) items according to their max and min discount percents.

Example:

Product total price is 1200 and product cost is 720.

Recurring discount percent is 10%.

Max discount percent is 40% and min discount percent is 5% for main item.

Max discount percent is 20% and min discount percent is 5% for line item.

Rolled-up recurring discount amount is 120.

User edit rolled-up recurring discount amount and enters 100.

Recurring discount for main item is calculated to 15.5%. Recurring discount for line item is calculated to 9.5%.

Rolled-up recurring extended amount is calculated to 1050.

On this page
Editing rolled-up recurring net price
Editing rolled-up recurring extended amount
Editing rolled-up recurring gross margin
Editing rolled-up recurring discount percent
Editing rolled-up recurring discount percent
Editing rolled-up recurring net price (relative)
Editing rolled-up recurring extended amount (relative)
Editing rolled-up recurring gross margin (relative)
View all
Yes
No