# Alternative and Variant Configurations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/c9099d1a062f4b8a99160dd376eae199.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Quote and Item Actions
	
Pricing Details on Items
	
Sales Units of Measure
	
Discounts and Multipliers
	
Other Discounts
	
Quote Markets
	
Adding Products to Quote
	
Documents
	
Customer Information
	
MRC Quote Calculations
	
Quote Tabs and Fields
	
Alternative and Variant Configurations


	
Item Types - Alternative and Variant in Quote 2.0
	
Setup Alternative and Variant Configurations - Responsive Design
	
Application Parameter for Preventing Users to Add Simple Products to a Quote
	
Adding Products from Quote (Quick Add)
	
Parallel Work on Quote 1.0 (User Side)
	
Multi-User Quote Collaboration
	
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
Alternative and Variant Configurations

This feature gives you the option of creating alternative and variant items to the base quote items.

Some setup activities must be undertaken to enable usage of this feature. To enable alternative and variant configurations, refer to this topics:

Setup Alternative and Variant Configurations - Responsive Design

Alternative Items
Make item alternative action is available for:

Base and optional main items

When this action is executed on a base item, it becomes an alternative item of the selected item. Its variants (if any) become base items.

In the dropdown selection for a new parent item, you have all other base items and all optional and variant items available.

Variant main items

When this action is executed on a variant item, it becomes an alternative item of the selected item. Its alternatives (if any) become base items.

In the dropdown selection for a new parent item, you have all base and optional items and all other variant items available.

Variant Items
Make item variant action is available for:

Base and optional main items

When this action is executed on a base item, it becomes a variant item of the selected item. Its variants (if any) become base items.

In the dropdown selection for a new parent item, you have all other base and optional items available.

Alternative main items

When this action is executed on an alternative item, it becomes a variant item of the selected item.

In the dropdown selection for new parent item, you have all other base and optional items available.

Alternative, variant, and optional items aren’t included in the quote total and product types calculations, and they aren’t sent CRM products.

Tags
For each item in quote the following CTX tags are available:

<*CTX( Quote.CurrentItem.IsVariant )*> returns True if the item is a variant, otherwise Flase.

<*CTX( Quote.CurrentItem.IsAlternative )*> returns True if the item is an alternative, otherwise Flase.

<*CTX( Quote.CurrentItem.RolledUpNetDifferenceFromBaseItem )*> returns the difference of the rolled-up net price between the base item and the variant/alternative item

<*CTX( Quote.CurrentItem.NetAmountDifferenceFromBaseItem )*> returns the difference of the net price between the base item and the variant/alternative item

<*CTX( Quote.Total.TotalOptionalItems.DefaultDecimal)*> returns the total price of optional items in the quote

Tags for displaying variant and alternative items separately in the generated document.

«C2_VARIANT(Y)» a signal that only variant items should be displayed in the quote table.

«C2_ALTERNATIVE(Y)» a signal that only alternative items should be displayed in the quote table.

Custom Fields Calculation After Item Type Change

There’s an option to recalculate a custom field after a user changes optional/variant configuration and clicks Save.

This behavior is controlled by the application parameter After setting optional, variant and alternative items CPQ should recalculate quote custom fields, which can be found in Setup  General  Application Parameters   Shopping Cart and Quotes.

On this page
Alternative Items
Variant Items
Tags
Custom Fields Calculation After Item Type Change
Yes
No