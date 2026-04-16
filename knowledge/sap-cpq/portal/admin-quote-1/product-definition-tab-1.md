# Product Definition Tab | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/bbdefc49681749d290118beebc7fe35a.html#shipping-costs
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
Product Definition Tab

This tab is used for defining the basics of a product. It contains several logical segments for entering product data.

General Fields

Name (required)

	

The name of the product.




System ID (required)

	

Generated automatically from the product's name and the addition _cpq.




Active

	

Selected by default. Only active products are available in the Catalog.




Display Type

	

The configuration level of the product.




Product Type

	

If a group of products with the same specifications (for example, hardware, software) isn’t available, clicking the Add New button next the dropdown list creates a new Product Type.




Part Number

	

Dynamic part numbers can be created by entering an expression in the Part Number field. You can also use the Formula Builder to create an expression.




Unit of Measure

	

This field enables you to quantify and track products. You can only enter a three-character ISO code in the field, for example, EA(each), PCE(piece), PK(pack).




Description

	

Optional description of the product.




Image

	

Visual representation of the product.




Alt Text

	

Textual replacement of the Image. Recommended for persons with impairments.




Dynamic Description

	

Displayed to the user in a quote. You can create it by combining text and tags.




Category (required)

	

A category which the product is associated with.

Permissions and Effectivity Dates

If Visible to Everyone option is enabled, all users can see the product. If not, only the selected user types, companies, brands, and so on, can see it. The Start Date and End Date determine the period during which the product is available.

The visibility permissions defined for the category a product belongs to are not automatically propagated to the product. Instead, you can define the permissions for the individual product in this section. Otherwise, if the Visible to Everyone option is disabled, you can manually apply the permissions defined for the category to the product by clicking Apply Category Permissions.

Products for which a user has restricted visibility don't display in the product search results to that user. Furthermore, users can’t add those products to the quote. For example, if a product is visible to everyone and its category is visible only to a Sales Manager, the logged-in Sales Representative will not be able to view the product because it’s part of a category for which they don’t have the visibility rights.

Additional Product Data

The following options and fields are optional. They simply offer a finer layer of product personalization.

Product Version

	

There can be only one active product version. The active product version can't be deleted.




External ID

	

Used for referencing the product with the ID from an external system.




UPC (Universal Product Code)

	

Can be used for the European Article Number (EAN) or International Standard Book Number (ISBN).




MPN (Manufacturer Part Number)

	

Needs to be used if the manufacturer part number is different from part number used to mark the product (when selling through channels).




Inventory

	

A descriptive field used for storing additional information about the product. The entered data doesn’t influence the product in any way but can be used in formulas.




Lead Time

	

Used to describe how long it takes to get the product.




Family Code

	

The family code is the key to validating that a consumer has purchased a qualifying family of products.




Product Weight

	

The label of this property depends on the value of the application parameter Unit of Measurement. The value of the product property is one of following: Product Weight in GRAMS, Product Weight in KGS, Product Weight in LBS.




Large Image

	

Displayed on user side when you visit the product's Details page or modal, only when Large Image tag is used in the ProductDetails templates.




Long Product Description

	

A more detailed description can be added here, if needed.




User can enter quantity

	

Determines whether users can enter quantity for this product. Enter 1 to unconditionally allow users to enter quantity or enter an expression to only allow it under certain conditions.

Note

Product’s quantity can be changed with a special attribute called ItemQuantity. If this attribute exists, then the system uses its value to determine the quantity of the main item in the quote.




Allow Product Configuration Import

	

Enables import of product configuration via an Excel file. An IronPython script needs to be written in order to read the Excel file and assign values from a file to the product attributes.

For controlling whether to display a configuration template you can use the application parameter Show product configuration template. This parameter can be found in Setup  General  Application Parameters  Configuration Tab.

Shipping Costs

This section contains shipping method fields in which you can add or build a shipping cost formula for each product.

When users add products to a quote, they can choose a shipping method which is calculated according to shipping costs of products defined in this section by administrators.

On this page
General Fields
Permissions and Effectivity Dates
Additional Product Data
Shipping Costs
Yes
No