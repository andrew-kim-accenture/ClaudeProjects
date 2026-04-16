# Effective Date | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/2664fc317e6f4ffdb8b2d25005267561.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ User GuideVersion: 2603English
Provide feedback on our search

	
Who is this Guide for?
	
Add Items in Bulk
	
Approval Process
	
Quote Creation
	
Document Generation Journey
	
Load Existing Quotes
	
Quote
	
User Page
	
Register as New User
	
Favorites
	
Accessibility
	
Unlock Account
	
Single Sign-On
	
Effective Date
	
CRM Integration Use
	
Quote Collaboration/Comments
	
Revision Management
	
Compare Quotes and Revisions (Quote 2.0)
	
Formula Validator
	
Manage Customers
Effective Date

The Effective Date field is used to determine which prices are displayed to the user in the quote, and which products and prices are displayed in the Catalog.

The effective date can be set on the quote and on the User Page. Explained here are the differences between how those two fields are used.

To learn how the Effective Date is used when SAP CPQ is integrated with Variant Configuration, see Technical Overview.

Effective Date on Quote
The Effective Date on the quote is visible in the quote header. When a quote is created, the prices listed in the quote are determined by that quote’s effective date. Prices for the items in a quote are retrieved from the price book that is selected for that quote. When editing a price book in the Setup, administrators can specify a period during which the price book is valid by filling out the Valid from and Valid until fields. If the Effective Date in the quote header matches the validity period of a price book (or the price book entry), the prices in the quote are retrieved from that price book. On the contrary, if the effective date doesn’t match the validity period, the prices are displayed as 0.
Effective Date on Quote Item

SAP CPQ supports an item-level effective date that you can use independently of the quote-level effective date. This allows the system to evaluate configuration and pricing per quote item when integrating with SAP Variant Configuration and Pricing.

Using Item Effective Date

You can display the Item Effective Date field by configuring the quote layout:

Go to User Menu  Quote Layout   Selected Columns

Add Item Effective Date to make it visible on the quote.

When adding an item to a quote, you can set an effective date specific to that item.

The Item Effective Date and Quote Effective Date can be set independently, you can select different dates for each:

When you change the effective date of a quote, the system updates the effective dates of all items. This happens regardless of whether you previously modified those dates.

When you change the effective date of a bundle, the system updates the effective dates of all sub-items. This happens regardless of their previous state.

Pricing and Configuration Behavior

The item-level effective date is considered during both stateless pricing and document pricing. If no item-level effective date is set, the system uses the quote-level effective date by default. Changes to a parent item's effective date are automatically propagated to its child and sub-items.

This functionality is available to early adopters only and must be enabled by SAP Support.

For information about how to set up the feature, see Effective Date on Quote Item.

Effective Date on User Page

The Effective Date field can also be found in User Page  User Details. When a quote is created, the Effective Date on the quote determines the prices that are shown for products in the Catalog. However, if no quote is created, then the Effective Date from the User Page is used, instead. If the Effective Date on the User Page matches the validity period of the default price book selected on the User Page, prices displayed in the Catalog are retrieved from that price book.

When a new quote is created, the Effective Date from the User Page by default becomes the Effective Date on the new quote.

Effective Date and Product Effectivity Dates

Additionally, effective dates determine which products are visible in the catalog. Administrators can specify the effectivity dates for a product in Setup  Product Catalog   Products  Edit   Permissions and Effectivity dates. A product’s effectivity dates define the period in which that product is available to users. In case a product is set to be effective in the future, it doesn't appear in the Catalog if the Effective Date is set to the current date (default value). Therefore, to see that product in the Catalog, it’s necessary to change the effective date (on the quote, or on the User Page if no quote is created) so that it matches the product’s effectivity period. Users can also set the Effective Date in the past in order to display products with effectivity dates set in the past.

Note

Every time the user opens a quote, the Effective Date from that specific quote becomes the date determining which prices and products are shown to the user in the Catalog. In other words, the Effective Date of the last quote the user opened is always the one currently used by the system.

Effective Date and the SAP Subscription Billing Integration

When SAP CPQ is integrated with SAP Subscription Billing, there’s an Effective Date field available for subscription products in the quote. By default, the product effective date is the same as the effective date of the quote.

If a snapshot is defined for a subscription product, setting the product effective date determines whether the initial prices or the snapshot prices apply to that product. For example, you’ve created a snapshot that is valid from 1/11/2019. To apply the prices from that snapshot, you need to select a product effective date that is later than the starting date of the snapshot, which is 1/11/2019 (and earlier than the starting date of the next snapshot, if there’s one).

On this page
Effective Date on Quote
Effective Date on Quote Item
Effective Date on User Page
Effective Date and the SAP Subscription Billing Integration
Yes
No