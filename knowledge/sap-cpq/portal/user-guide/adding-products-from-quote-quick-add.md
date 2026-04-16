# Adding Products from Quote (Quick Add) | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/53efd3f8f00c4fd990cd6b9a96f5b20b.html?locale=en-US&state=PRODUCTION&version=2603
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
Adding Products from Quote (Quick Add)

This functionality allows you to add new products (simple or configurable), or replace the existing ones directly from the quote.

It's controlled by several application parameters, but the availability of this function also depends on the Workflow configuration as well as on the action permissions.

There are six application parameters in General  Application Parameters  Shopping Cart and Quotes section of the administration:

Enable product search by part number in ‘Add Products’ section of the quote

Enable product search by product name in ‘Add Products’ section of the quote

Enable product search by product name and description in ‘Add Products’ section of the quote

Show Part Number as part of product search results in ‘Add Products’ section of the quote

Show Product Name as part of product search results in ‘Add Products’ section of the quote

Show Product Description as part of product search results in ‘Add Products’ section of the quote

To have Add Product section on the quote page, you need to have at least one of the first three parameters enabled and Add Item action available. Also, at least one of the last three application parameters need to be set to TRUE in order to have a functional search.

Using the Ajax technology, the search shows results in real time, as you type. It displays only simple products that are visible for the current user. The search engine skips records that contain formulas. If your search is performed with a part number, only the products that are simple, visible, don't have formulas and begin with the entered text are shown. The product is automatically added to the quote after you've made a selection.

Configurable products can also be added by typing their part numbers, names or description and clicking the Add button afterwards. Note that all rules that apply to the Add Items in Bulk functionality for adding products also apply here (product must be visible, product must be complete, and so on).

Replacing existing products can also be done quickly in the quote. To have this function enabled, you need to have the Replace Items action available as well, as set up quote calculations that make the part number field editable (Pricing Calculations   Cart Fields Administration).

After you’ve clicked on the part number you wish to change, all part numbers become editable, so you'll be able to start changing all part numbers you wish to replace. When done, you need to click on Replace Items. If all new part numbers are valid, SAP CPQ removes the existing items from the quote, and inserts new products instead of them. Fields quantity, discount percent, multiplier, and channel mark-up percent are copied from the previous item to the new item. All other fields (discount amount, multiplier amount, and so on) are calculated as a part of the Replace Items action.

If a part number doesn’t exist, SAP CPQ displays the error message to the user, and no products are added to the quote. Thus, the action Replace Items isn't executed.

Yes
No