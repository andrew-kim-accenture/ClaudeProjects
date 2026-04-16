# Products | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/753cb4233271443585f86fa5f07f0055.html#product-copy
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
Products

The Products administrative section allows setting up new and editing the existing products.

Accessing this administrative section from the Products administrative menu displays a list of all existing products in the system. From here, you can also create new products manually, or import them via Excel.

Note

SAP CPQ does not support automatic product version upgrades in Quote 1.0. When using the Quote 1.0 engine, upgrading to a new product version is not supported for Variant Configuration (VC) products.

Note

Products obtained via synchronization with SAP ERP and SAP Variant Configuration and Pricing have the value Yes in the column Synced from Back Office. The column Synced from Back Office is visible only when SAP CPQ is integrated with a back-office application, such as SAP ERP.

Note

Variant Configuration product versions cannot be added or deleted in SAP CPQ, because they are obtained along with their own effectivity periods via knowledge base synchronization. Product versions of Variant Configuration products are permanently active in SAP CPQ as this behavior is controlled by the back-end system and SAP Variant Configuration and Pricing (one product can have multiple active product versions at the same time). If a product has multiple active product versions, you can distinguish them by their different knowledge base versions.

According to their display type, products can be:

Simple

Configurable

Collection of configurable products

System (list) of configurable products

Parent/child system (list) of configurable products

Note

While loading the product, all related products are loaded and rules for each of them are executed. After that, catalog code, price, cost, image, and product name of the related product will be used as catalog code, price, cost, image, and display value of the attribute value. All related products have to be loaded because it takes too long to load the product in the Configurator.

If the formulas for catalog code, price and cost of the related product are simple (there’s no need to load related product and execute rules in order to evaluate them) this option can be used to increase the speed of product loading. In that case, formulas for catalog code, price, and cost of the related product are used as formulas of the attribute value.

Product Changes

In the product table, columns Date Modified and Modified By include fields that show at what time and on what day the currently active product revision was modified last time, as well as who executed the change. If none of the product versions are currently active, data is displayed for the product version with the highest version number.

When you click Edit, you can see Created and Modified data. The data is displayed for the version that you’re editing (you can edit different product versions, not just the currently active one).

SAP CPQ logs a rule change only when the rule was changed (not every time you click the Save button). This is checked for all rule fields: Rule Name, Description, Condition, Action, and so on.

Product Copy

A Copy button gives you an option to copy existing products in the system. It’s displayed for all products, including aliases.

SAP CPQ copies the product’s active revision. If no revision is active, the revision with the highest revision number is copied. All product fields are copied – all fields from the product setup, database, ASPX pages and so on.



Create Products

On this page
Product Changes
Product Copy
Yes
No