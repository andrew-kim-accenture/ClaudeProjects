# Pricebooks | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/77945f12eb834ffb82b1e7a380398002.html?locale=en-US&state=PRODUCTION&version=2603
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
Pricebooks

A Pricebook contains prices for products in SAP CPQ. In case of multiple prices for one product (discounts, special offerings, loyalty discounts, etc.), each price should be defined in a separate Pricebook. Multiple Pricebooks are grouped under a Market.

Pricebooks within a Market are created under the following rules:

The currency is shared across all pertaining pricebooks.

Each pricebook has a unique name.

A pricebook can optionally have a parent pricebook.

Example

A company Europe Trucks sells truck tires through sales channels. The channels are organized into Bronze, Silver and Gold. Each group has multiple underlying sales channels. Since Gold vendors have a long-lasting commercial relationship with Europe Trucks, they get to buy the trucks per discount prices. Both Bronze and Silver vendors also get a discount, although lower than the one Gold vendors get. Consequently, each group requires a specific Pricebook for the tires. Additionally, Silver and Bronze channels have loyal Customers to whom they wish to offer special pricing conditions.

So that the system could retrieve a Pricebook specific for a Customer (Customer 7 - Scandinavian Trucks) administrators create a visibility formula [EQ](<*CTX( Quote.Customer(BillTo).Company )*>, Scandinavian Trucks) and the specific Pricebook is retrieved when Users select Scandinavian Trucks as the Bill To Customer.

When the Vendor 3 logs into SAP CPQ, the system retrieves the prices from the Vendor 3 Pricebook. If no prices are define in this Pricebook, the system pulls the prices from the parent Pricebook Gold.

Create a Pricebook

To create a Pricebook, you first need to group it under a Market, define who sees it and then add entries (products and prices).

In Setup, access Pricing/Calculations  Pricebooks.

In the Pricebooks tab, select the Market and the list of underlying Pricebooks displays.

Click Add New Pricebook and a page with the Definition and Entries tabs displays.

(Optional) In Definition, select the parent Pricebook. Access the section below for more details on Pricebook hierarchy.

Define the Pricebook name.

Select Visible to everyone if you wish everyone to have access to the pricebook.

Alternatively, define advanced or simple visibility conditions to restrict access to the Pricebook. If not set to be visible to everyone, a Pricebook must have at least one visibility condition defined so that the system could trace it and properly include it in the Pricebook drop-down list on Quotes.

Select the dates in Valid from and Valid until to define when the Pricebook is valid.

(Optional) Describe the Pricebook in Description.

Click Save. You can now move to the Entries tab to add products and their respective prices.

You can add pricebook entries manually, one by one, or import a Microsoft Excel file with multiple entries. The maximum size of the file is 20MB.

Imported entries are matched with the existing entries via the CpqTableEntryId column. If you are inserting a new pricebook entry, you should leave the cells in this column empty and the system will create a new entry for each row in the Excel. On the other hand, if you want to update existing entries, you should populate the respective cells in the CpqTableEntryId column so the system knows which entries to update. If there isn't a CpqTableEntryId column in the Excel file, all rows are treated as new entries.

Visibility Conditions

Creating simple and advanced visibility conditions enables Administrators to support Users' complex pricing scenarios. By setting corresponding visibility conditions, Administrators can relate a specific Pricebook to a Customer so that it automatically displays once Users select the Customer. Note that the pricebook won't be automatically selected when affected by visibility conditions, it will only become visibile on the quote, where it needs to be manually selected by the user. Also, SAP CPQ supports complex pricing for Users who manage indirect sales through channels. A combined scenario in which each sales channel creates as many Customer-specific Pricebooks as needed is also supported by the optimized Pricebooks feature.

Create Visibility Condition

To create a visibility formula, select the Advanced visibility checkbox and a dedicated box for the formula displays. You can define the visibility formula in the formula builder by using the Quote-level and User-level tags. Please note that by entering 1 in the dedicated box you enable visibility to all Users. The system activates the advanced formula every time the respective Quote is modified.

The Visibility conditions section shows if advanced visibility is disabled. To create a simple filter, select a field type, an operator and enter a value. Simple visibility relies on the User and Customer fields and the logic OR or AND being applied between the visibility conditions. While the default logic is OR, users can select the logic AND from the Visibility logic drop down menu.

Note

In SAP CPQ Quote 2.0, if the Business Partner concept is enabled on the SAP CPQ tenant, visibility conditions can also be set for partner functions.

Default Pricebook

When retrieving prices for products in a new Quote, the system first looks for the User's default Pricebook. The feature is managed on the User Page.

A default Pricebook is Market-specific, so before selecting the default Pricebook on the User Page, Users should first select the default Market. On their side, Administrators can select the default Market and Pricebook for each underlying User in Setup.

Note

The fields for selecting the default Pricebook on the User Page and the Pricebook in Quote do not display in the following scenarios:

The logged User does not have the rights to see any Pricebooks.

The visibility conditions set up for Pricebooks prevent the fields from showing on certain Quotes.

The tenant does not have any Pricebooks defined because custom tables are used for pricing.

Pricebook Hierarchy

SAP CPQ enables Clients to manage complex pricing scenarios in which a Product's price depends on multiple conditions. Pricebooks in SAP CPQ are organized in parent/children hierarchy in levels within a Market. You can create as many parent and children Pricebooks as you need to achieve specific business goals.

When managing a Quote, Users first need to select its Market and the default Pricebook will display, if defined. Additionally, the system loops through the Pricebooks from the bottom to the top to display other Pricebooks visible in the same Market so Users could override the default selection. If only one Pricebook is available, the system selects it by default. The system filters Users by the visibility rules defined by the Administrator.

Retrofitting Quotes Created Prior to 2017.4

SAP CPQ 2017.4 introduces enhancements to the existing Pricebook feature. The feature has been optimized to adapt to Quotes/Pricebooks created in previous versions:

Pricebooks visibility hierarchy is kept when loading old Pricebooks in new SAP CPQ versions, meaning that a Pricebook with the highest visibility level will have the highest level when loaded in the new version.

When loading Quotes created in versions prior to 2017.4, the ID of the assigned Pricebooks is null. The system selects the default Pricebook according to the logic used in previous versions (the Pricebook with the highest level in the selected Market is selected as default). The default Pricebook is used for pricing any new items added to the Quote. Previously added items retain their original prices. To save the defaulted value, Users need to save the
Quote
.
Note

If Users decide to change the Pricebook, the system recalculates the prices of all Quote items based on the newly selected Pricebook.

When copying and reassigning a Quote, if Users additionally reconfigure it, the entire Quote is copied/reassigned and the Pricebook visibility is reconfigured. The system copies the selected Pricebook even if it is no longer visible.

When loading Quotes with inactive Pricebooks (removed from the system) and invisible Pricebooks (the User does not have the necessary permission rights), a warning message displays next to the Pricebook drop-down indicating that the Pricebook is no longer available and suggesting that the new Pricebook should be selected.

Regarding the Quotes in the Other Quotes tab, the logic applied for Markets is used for Pricebooks as well. Previously selected Pricebooks are used on Quotes even though the visiting Users cannot access them. Visiting Users can apply their Pricebooks which automatically recalculates Quotes. Pricebooks selected by visiting Users also apply to the Quote owner.

Yes
No