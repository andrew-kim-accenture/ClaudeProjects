# System (List) of Configurable Products 2.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/8158b6b776a94835b2f699028021e7bf.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Product Implementation


	
Create Products


	
Product Definition Tab


	
Product Display Types


	
Simple Product
	
Configurable Product
	
System (List) of Configurable Products 2.0
	
Parent/Child System (List) of Configurable Products
	
Product Sales Area Tab
	
Product Pricing Tab
	
Product Attributes Tab
	Product Rules and Messages Tab
	
Product Scripts Tab
	
Products Layout Tab
	
Products Advanced Settings Tab (Code Matching)
	Product Actions
	
Product Categories
	
Attributes
	
Attribute Visibility Restrictions
	
Unit of Measurement
	
Product Types
	
Custom Tables
	
Sequences
	
Sequence Substitution
	
Guided Selling
	
Product Favorites
	
Product Tabs
	
Quick Search and Advanced Search
	
Set Configuration Based on XML
	Integrations
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
System (List) of Configurable Products 2.0

System (List) of Configurable Products behaves as a Configurable Product and it requires attributes to be selected before being added to a quote. Inclusion, exclusion, or bundling rules can be enforced between those attributes. This display type is used when setting up product nesting or hierarchical product structure.

Attributes added through the Product Attributes Tab must reference other products (child products). Attributes that reference products must also be set as List as Line Item.

Since this product display type is used in a product nesting or hierarchical product structure, which involves referencing other products, it can't be imported through Product Import.

From the Catalog, the system (list) of configurable products can be configured through the Configure button. The configuration behaves in the same way as it does for a Configurable Product.

Note

If all required attributes in the configuration are preselected, then the Add button becomes active in the Catalog, which allows the user to add the product to a quote without entering the configuration. This behavior is also available if there are no required attributes in the configuration.

When added to a quote, the system (list) of configurable products adds the products referencing the selected attributes to the quote. These products are displayed in the quote as main items, not child items (which is true for configurable products. Only the products referenced by attributes (child products) are taken into account. The parent product, which includes the fields under the Product Definition Tab, is ignored when added to the quote.

This product display type differs from the Collection of Configurable Products display type in that the products added to the quote are still part of the system. The parent product's configuration isn't lost and can be edited by clicking the Edit action next to any products that are a part of that system

The System (List) of Configurable Products display type differs from the Parent/Child System (List) of Configurable Products display type in that the main item is ignored, and only the products referencing attributes are taken into account.

Copying one item from the System (List) of Configurable Products will result in copying all items from System (List) of Configurable Products.

Deleting one item from System (List) of Configurable Products will result in deletion all the items from System (List) of Configurable Products.

The Item quantity attribute doesn't affect the quantity of the items that are part of System (List) of Configurable Products. All items within the System (List) are displayed and behave as main items. The Item quantity propagates from the main item to line items in parent/child or configurable product configurations that are within the System (List) of Configurable Products, but only within their respective nesting levels.

On the Quote 2.0 engine, a blue line is available to indicate items that are part of the System (List) of Configurable Products. If two same products are shown on a quote System (List) of Configurable Products, then items that are part of the first system will be highlighted in dark blue and the second one in light blue. Only this display type product has this indicator.

If the user chooses one item on a quote using a checkbox, all items that are part of the System (List) of Configurable Products are selected.

Note

This product type is not compatible with variant configuration products.

Yes
No