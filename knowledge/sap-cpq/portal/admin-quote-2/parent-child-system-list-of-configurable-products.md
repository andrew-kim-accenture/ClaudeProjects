# Parent/Child System (List) of Configurable Products | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/2d1253a2fe224fee96939972a65f90b2.html?locale=en-US&state=PRODUCTION&version=2603
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
Parent/Child System (List) of Configurable Products

Parent/Child System(List) of Configurable Products behaves like a Configurable Product in that it requires attributes to be selected in order to be added to a quote. Inclusion, exclusion, or bundling rules can be enforced between the attributes. This product display type is used when setting up product nesting or hierarchical product structure.

Attributes added through the Product Attributes Tab must reference other products (child products). Attributes that reference products must also be set as List as Line Item.

Since this product display type is used in a product nesting or hierarchical product structure, which involves referencing other products, it can't be imported through Product Import.

From the Catalog, parent/child system (list) of configurable products can be configured through the Configure button. The configuration behaves in the same way as it does for configurable products.

Note

If all the required attributes in the configuration are preselected, then the Add button is active in the Catalog, which allows the user to add the product to a quote without entering the configuration. This behavior is also available if there are no required attributes in the configuration.

When added to a quote, parent/child system (list) of configurable products add the products referencing the selected attributes to the quote. These products are displayed in the quote as main items, not child items (which is true for configurable products). Not only are the products referenced by attributes (child products) taken into account, but the parent product is also added to a quote, which includes the fields under the Product Definition Tab. Basically, this display type is a combination of a Configurable Product and a System (List) of Configurable Products. Not only are the referenced products displayed in the quote, but also the main item and any attribute line items that aren't referencing products.

The Parent/Child System (List) of Configurable Products display type differs from the System (List) of Configurable Products display type in that the main item and the products referencing attributes are added to the quote.

Yes
No