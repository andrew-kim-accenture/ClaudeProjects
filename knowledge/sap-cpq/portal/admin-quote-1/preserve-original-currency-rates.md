# Preserve Original Currency Rates | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/f2e4810ea1d9445fa3fc95f37781d8ed.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Preserve Original Currency Rates
	
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
Preserve Original Currency Rates

Quote prices depend on market factor and currency rate, which can be updated through Setup. By default, when users edit existing quotes and market factor and/or currency rate have been changed in the system, new values will be applied to the quote.

If you want to preserve original market factor and currency rate on quotes, you should contact the Support team to set this up for you. After enabling this option, when users edit existing quotes, original market factor and currency rate will be applied to the quote.

Note

This feature is available exclusively for Quote 1.0. The quote updates when copied from the original quote. However, the revision quote doesn't update unless users refresh the market and currency. While the market changes, the currency stays the same.

Note

In Quote 1.0, the standard quotation page in the section Totals displays the unchangeable Quote.Total.TotalAmountInMarket rather than the Quote.Total.TotalAmount, which can be adjusted via custom calculations.

Re-applying market factor and currency quote to old quotes

If system is using original market factor and currency rates, users can still apply new market factor and currency rates by executing action “Refresh Market and Currency”.

“Refresh Market and Currency” action can be added to cart either as a standalone action - for users to execute it explicitly, or as a pre or post-action to some other quote action - for system to execute it implicitly without informing users . This can be set up in Workflow/Approval  Workflow menu in administration.

Yes
No