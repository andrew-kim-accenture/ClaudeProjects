# Collection of Configurable Products | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/1a1087461c6b4a75a6d5354dac085fca.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Products


	
Create Products


	
Product Definition Tab


	
Product Display Types


	
Simple Product
	
Configurable Product
	
Collection of Configurable Products
	
System (List) of Configurable Products
	
Parent/Child System (List) of Configurable Products
	
Product Pricing Tab
	
Product Attributes Tab
	Product Rules and Messages Tab
	
Product Scripts Tab
	
Products Layout Tab
	
Products Advanced Settings Tab (Code Matching)
	Product Actions
	
Categories
	
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
	
Custom Configurator XSLT
	
Pricing/Calculations
	
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
Collection of Configurable Products

Collection of Configurable Products behaves as a Configurable Product in that it requires attributes to be selected before it's added to a quote. Inclusion, exclusion, or bundling rules can be enforced between attributes. This product display type is used when setting up product nesting or hierarchical product structure.

Attributes added through the Product Attributes Tab must reference other products (child products). Attributes that reference products must also be set as List as Line Item.

Since this product display type is used in product nesting or hierarchical product structure, which involves referencing other products, it can't be imported through the Product Import.

From the Catalog, a collection of configurable products can be configured through the Configure button. The configuration behaves in the same way as it does for a Configurable Product.

Note

If all required attributes in the configuration are preselected, then the Add button becomes active in the Catalog, which allows the user to add the product to a quote without configuring it. This behavior is also available if there are no required attributes in the configuration.

When added to a quote, the collection of configurable products adds the products referencing the selected attributes to the quote. These products are displayed as main items in the quote, not as child items (which is true for configurable products). Only the products referenced by attributes (child products) are taken into account. The parent product, which includes the fields under the Product Definition Tab, is ignored when added to the quote.

This product display type differs from the System (List) of Configurable Products or Parent/Child System (List) of Configurable Products display types in that the products added to the quote aren't a part of any system. They become independent products in the quote. The parent product's configuration is also lost and can't be edited.

Yes
No