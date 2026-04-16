# Adding Products to Quote | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/26479d34c2204fa48693748e87272286.html?locale=en-US&state=PRODUCTION&version=2603
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
Adding Products to Quote

To create a quote, you can find a product by navigating categories or through the quick search, then configure it (if necessary) and add it to a quote.

Once a product is added to a quote, it’s possible to add more products by clicking the Add Item action in the Action area. Clicking this action directs you to the Catalog, where you can navigate to find another product to add it to the quote. Additionally, you can configure the product there and add it to the quote. Both the original product and the newly configured product are included in the quote. Alternatively, you can use the quick search field to find a product. Once a product is found through a description or part number search, you can configure it and add to quote. The newly configured product is then included in the original quote.

If you specify the quantity for a product in the Catalog, the quantity is taken into consideration only if you are directly adding that product to the quote from the Catalog. However, if you are configuring the product, the quantity needs to be specified on the quote.

Quick product search on Add Products section is used for finding all types of products (simple or configurable) or favorites, by typing any part of their part number, product name, or description. When you enter the search criteria, SAP CPQ looks for products that have the entered search criteria anywhere in the part number, product name or description, or on the beginning of the word (depending on how application parameter is set).

When search doesn’t produce any results (both within favorites or products), SAP CPQ displays the following message for part number search: Auto-complete search didn’t find any products or favorites with this part number. The same message is displayed if appropriate product name or description isn’t found.

Selecting Products to Be Added to a Quote

When you’re browsing the Catalog, and you select many products from different categories, every selection is saved, and you’re able to add selected products to a quote. You remain in the Catalog until you click on the Add To Quote button, which takes you to the quote and adds all these products to it. If you select several products and don’t add them to a quote, SAP CPQ saves selected products, so the next time you log on to SAP CPQ, the selected products remain.

If the application parameter Allow Selection of Products that will be added to Quote is set to TRUE, a new icon is added under the selection menu (top, floating, and bottom). The number of selected products that are added to the quote is displayed near the Add to Quote label and the collapse/expand arrow is added. When you click the Add to Quote button, the product is added to the quote, but quote calculations aren't executed. When you click on View Quote, all quote calculations as well as custom field calculations are executed. Add to Quote checkbox in Catalog is replaced with the Add to Quote button, if the application parameter Remain in Catalog after adding product to the quote is set to TRUE.

Note

Allow Selection of Products that will be added to Quote application parameter is obsolete for Quote 1.0 and Quote 2.0. You can make this parameter visible if you set the Hide Obsolete Features parameter to FALSE.

The Add to Quote checkbox is replaced with a button on following pages:

Catalog (list, tabular, and custom view)

Compare page

View Details page

When you expand Selected Products to be added to the quote, div with basic product information is opened. The following data is shown: Product Name, Part Number, Qty and Price.

You’re able to remove selected product or to add it to a quote. When you add products to the quote, selection is cleared. However, if you select some products and don’t add them to the quote, SAP CPQ saves your selection. Thus, the next time you log on, selected products are already saved and you can add them to the quote.

When you’re adding products using quick Ajax search or recent objects, the div with product details is opened. The same changes are performed on that div. You can select product to be added to quote, or to add all selected to quote. You can also clear selection. Checkbox and changes to Add to Quote button is also performed.

Quick product search from the quote can find configurable products and favorites. This behavior is controlled with application parameters. If the parameter Product Search On The Quote Can Find Configurable Products is set to TRUE, SAP CPQ looks for configurable products when you start typing a part number, product name or description. SAP CPQ looks for the matching part numbers, product names and descriptions in the same way as it looks for simple products. No reverse configuration is done, or parsing of descriptions and so on. When you click on the product, you’re taken to the product configuration. If you’ve arrived from the quote (and not from the Catalog), the breadcrumbs are different: the current quote link is displayed instead of categories.

There are two application parameters that are set to TRUE by default: Product Search On The Quote Can Find Configurable Products and Product Search On The Quote Can Find Product Favorites.

Add Sub-Item

The Add SubItem action allows users to include sub-items under a parent product within the quote. This feature is useful when managing complex configurations or bundles that require hierarchical structures. The SubItems can be added in the following manner:

Select a product (either a root item or a line item that references a product) already added to the quote

Choose the Add SubItem in the Action area . Then you will be redirected to the Catalog, where you can browse for the product to be added as a sub-item. Once selected, the sub-item is displayed beneath the parent product in the quote.

The added sub-item is linked directly to the item from which the Add SubItem action was triggered. This feature is available only in Quote 2.0 and provides more flexibility and organization in managing nested products.

Available Actions on Sub-Items

Delete:

Sub-items can be deleted, individually or in bulk, using multi-select checkboxes.

Deleting a parent or root item will also remove all its sub-items.

After deletion, item numbers are automatically updated for consistency.

Edit:

Users can edit configurable sub-items.

Upgrade to New Product Version:

Users can upgrade both sub-items and main items containing sub-items to a new product version.

Move Up/Down:

Sub-items can be repositioned within the quote to align with the desired structure using this action.

Refresh:

This action ensures all sub-items reflect the latest data and configuration changes, keeping the quote updated.

Limitations

System list products cannot be used as sub-items, nor can sub-items be added to system list products.

Copy action is disabled for sub-items.

Sub-items do not inherit quantity from their parent products.

The Add SubItem action is not supported in integration scenarios, SAP CPQ Quote to Solution Order Integration (Scenario B), SAP CPQ Quote to Sales Order Integration (Scenario C).

Copy a main item (VC product) that has a sub-item added by the "Add Sub-item" action is not supported.

Quote Summary in Catalog

You can preview the product image and view whether a product has already been added to a quote. The parameters Show icon within the Quote summary in Catalog to clarify whether product is already in the Quote and Show product image within the Quote summary in Catalog are presented to enable this functionality.

If the parameter Show icon within the Quote summary in Catalog to clarify whether product is already in the Quote is set to TRUE, when you are in the Catalog, you can see whether a product has already been added to a quote. If the product is already in the quote, it’s marked with gray icon, and if a product can be added to quote, it’s marked with an orange icon.

If the application parameter Show product image within the Quote summary in Catalog is set to TRUE, you can see images of products that have already been added to a quote and images of products that can be added to a quote in the Catalog page.

Related Information
Catalog Navigation
Product Configuration
Quote
Quote and Item Actions
Adding Products from Quote (Quick Add)
On this page
Selecting Products to Be Added to a Quote
Add Sub-Item
Quote Summary in Catalog
Related Information
Yes
No