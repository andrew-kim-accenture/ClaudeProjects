# Item Types - Alternative and Variant in Quote 2.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/7ccaf7ce59324fcbbae1bc64c9a731b3.html?locale=en-US&state=PRODUCTION&version=2603
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
Item Types - Alternative and Variant in Quote 2.0

Alternative item type is used to describe an alternative product or service. Variant item type is used to describe a variant of a product or service.

With the capability to incorporate Alternative and Variant types, users can create a comprehensive quote that includes all product or service alternatives and variants. This removes the necessity to generate multiple quotes and offers, facilitating the presentation of various options to customers. This fosters operational flexibility and streamlines the management of quotes and offers.

There are four different Item Types:

Base.

Optional.

Alternative.

Variant.

Note

For Quote 2.0, when using Document Pricing, SAP recommend letting CPQ calculate totals by setting the following application parameter to false: Pricing/Calculations   Pricing Procedures  Settings  Use Back-End Pricing On Quote Totals.

Note

Behavior of Item Types in SAP CPQ Quote 2.0 and SAP S/4HANA Integration:

When Product Item Types are enabled in the SAP CPQ Quote 2.0 engine by the SAP CPQ administrator:

Only line items marked with Item Type = Base will be considered for follow-up document creation in SAP S/4HANA public and private cloud.

Following Item Types are excluded from SAP S/4HANA follow-up document creation. These item types are typically not billed to the customer, and thus are irrelevant for official transactional in SAP S/4HANA:

Optional

Variant

Alternative

By default, column Item Type is not visible and must be enabled. Enable Item Type column in the Setup  Quotes  Fields, Calculations, Layout section.

SAP CPQ admin can configure available values in item type column via Set up using new parameters under the General  Application Parameters  Shopping Cart and Quotes  Available item Types

Item type Base and Optional is the default value.

Note

Material variants in SAP ERP and VC differ from the Variant Item Type in the SAP CPQ.

Example:

After adding a product as root item to a quote, a SAP CPQ Sales user can select and modify item type.

When product is added to the quote, default item type will be set to Base.

When a SAP CPQ Sales user chooses a link button to change item type, pop up window is shown with list of item types.

If order of items is changed in a quote, then references will be updated automatically. Example, item with Item Number 1 is at the first position in a quote and has item type set to Base, item with Item Number 2 is at the second position in a quote and has item type set to Alternative for Item A(1.) Now, If the first item is moved to second place, then item type label for alternative item will be updated to Alternative for Item A (2).

If a SAP CPQ Sales user tries to remove root item of item type Base or Optional from a quote, and there are other main items with types set to Alternative for {ProductWhichWillBeRemoved} and Variant for {ProductWhichWillBeRemoved}, SAP CPQ will show message asking for deletion confirmation.

Upon confirmation of deletion by choosing the Ok, the SAP CPQ system will remove all items with item types set to Alternative and Variant that are related to the main deleted item, regardless of their quantity.

Tags

<CTX( Quote.CurrentItem.IsItemTypeVariant ){}>- Returns True if the item is a variant, otherwise False,

<CTX( Quote.CurrentItem.IsItemTypeAlternative ){}> - Returns True if the item is an alternative, otherwise False,

<CTX( Quote.CurrentItem.RolledUpNetDifferenceFromBaseItem ){}>- Returns the difference of the rolled-up net price between the base item and the variant/alternative item

<CTX( Quote.CurrentItem.NetAmountDifferenceFromBaseItem ){}> - Returns the difference of the net price between the base item and the variant/alternative item

<CTX( Quote.CurrentItem.RecurringRolledUpNetDifferenceFromBaseItem ){}> - Returns the difference of the MRC rolled-up net price between the base item and the variant/alternative item

<CTX( Quote.CurrentItem.RecurringNetAmountDifferenceFromBaseItem ){}> - Returns the difference of the MRC net price between the base item and the variant/alternative item

<CTX( Quote.CurrentItem.ReferencedItem){}> Returns the referenced item

<CTX( Quote.CurrentItem.ItemTypeDisplayValue){}> - Returns translated value for the item type of the item

Relationships Between Products of Different Item Types:

Rules applicable for Quote 2.0:

Item type Alternative can be set to any quote root item, but related item can be only of type Base, Optional or Variant.

Item type Variant can be set to any quote root item, but related item can be only of type Base or Optional.

If Base is set as item type for a root item, changing to Optional will not impact relationships with other items for which item type is set to Alternative or Variant and related to particular root item, and vice versa.

Children will inherit same item type as parent..

Yes
No