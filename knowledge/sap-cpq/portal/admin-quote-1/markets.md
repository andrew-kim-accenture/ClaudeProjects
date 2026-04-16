# Markets | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/6981a2032f34471db041f961de3bb4a1.html?locale=en-US&state=PRODUCTION&version=2603
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
Markets

Once currency factors have been entered, Market Definitions need to be defined. Market Definition factors are multiplied by the calculated currency to get the final price.

Market Definitions can be defined by clicking the Market link under the Pricing/Calculations menu.

Market Fields

Every field is required and needs to be filled in order to save the definition.

The Market Code is returned with the tag <*MCODE*> which can then be used with an AUX or XWS tag to access additional information from another source.

Market Name is used to identify the Market Definition. When a user selects the Market in the cart or on their user page, the Market Name is used for the selection.

Currency Sign is the currency that, once calculated, will be multiplied by the Market Factor to get the final price calculation.

Example

The Currency factor for the European Monetary Union (EUR) is set to 0.95 and a Market Factor using EUR is set to 1.2. If the total cart amount comes to $2000, then this amount will be multiplied by the EUR conversion rate (0.95) then by the Market Factor (1.2) to get €1656. This is the final price calculation.

Once a Market has been defined, it is not visible until a user has been given permission to see the Market. This is handled in Market Visibility.

Note

When SAP CPQ is integrated with SAP Subscription Billing, you can select a timezone for a market. The contract duration and the start and end dates of the subscription product are observed as midnight in the timezone specified for the market assigned to that product.

Yes
No