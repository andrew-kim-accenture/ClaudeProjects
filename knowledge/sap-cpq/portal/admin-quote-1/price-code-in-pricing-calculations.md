# Price Code in Pricing Calculations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/2ab6c978a9c6438aa9e20ec5354c1e3d.html#related-information
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


	
Effective Dates for Price Book Entries
	
Pricing Dynamic Part Numbers and Attributes
	
Promotions
	
Price Code in Pricing Calculations
	
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
Price Code in Pricing Calculations

Simple products can have price code defined. If price is derived from SAP CPQ standard pricebooks, it will be calculated based on part number and price code.

Example
Same product is sold through different channels. For each channel there is a difference price. Administrator creates several products with same part number and specifies price code for each channel. Prices are maintained in pricebooks (part number + price code drive the price).

Product setup:

Pricebook setup:

Duplicate Pricebook Entries

There can't be multiple pricebook entries with the same part number and the same price code, unless they are effective in different time periods. This behavior is managed with two application parameters:

Show effective dates for price book entries – when set to TRUE, the columns Valid From and Valid Until are displayed in the pricebook table entries. This parameter is by default set to FALSE which means that administrators can’t enter multiple pricebook entries with the same part number and price code. If set to TRUE, multiple pricebook entries with the same part number and the same price code can be entered, in which case different effective dates for the entries should be defined.

Since duplicate values in a pricebook may cause issues with pricing, before changing this parameter to TRUE, administrators should review their pricebooks and remove duplicate entries.

In case there are already duplicate values in the pricebook and the parameter is then set to FALSE, there is now a message informing administrator to review and adjust their pricebook.

Calculate price only based on part number and ignore price code – when set to FALSE, the prices are calculated based on both the part number and the price code of a pricebook entry. However, if set to TRUE, the system disregards the price code and calculates prices only based on the part number of the entry.

If both parameters are set to FALSE, the system doesn’t allow adding duplicate values in pricebooks (entries with the same part number and the same price code), when they are added either manually or via import.

Related Information
Effective Dates for Price Book Entries
On this page
Example
Duplicate Pricebook Entries
Related Information
Yes
No