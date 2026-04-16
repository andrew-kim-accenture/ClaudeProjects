# Configurable Product | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/22a6cbdad4af4f42ac099424d252c4ac.html?locale=en-US&state=PRODUCTION&version=2603
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
Configurable Product

A Configurable Product requires attributes to be selected in order to be added to a quote. These attributes can have inclusion, exclusion, or bundling rules enforced between them.

The Configuration Layout and Rules tabs are both active when the Configurable Product display type is selected.

Attributes can be added and updated through the Product Attributes Tab.

Configurable products and their attributes are most often imported through the Bulk Product Import/Export. The import doesn’t provide a way to set up attribute pricing, display types, or product references.

From the Catalog, configurable products can be configured through the Configure button.

Note

If all the required attributes in the configuration are preselected, then the Add button is active in the Catalog, which allows the user to add the product to a quote without entering the configuration. This behavior is also available if there are no required attributes in the configuration.

When added to a quote, a configurable product is displayed as a single main item. If the option List as Line Item is selected for any attribute, they’re displayed as child items to the configuration in the quote. The Copy, Delete, Edit, and Refresh actions (Item Actions Workflow) are available for configurable products in the quote.

Note

If you select Configurable Product as the display type, you cannot add Variant priced product container rows to configurable products. Only Parent/Child products support this feature.

Yes
No