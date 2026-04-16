# Categories | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/e2ff672414694fce99195d67257a77dd.html#default-catalog-view
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Products
	
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
Categories

Categories and subcategories are used to logically group products in the Catalog according to specific criteria.

On the user side of the application, the list of categories available to the user is displayed in the Catalog. Additionally, on the Categories page in the Catalog, categories can be displayed alongside an image and a description. A category can be accessed only by users with the appropriate permissions.

Users can sort and filter the products in categories, as well as switch between a tabular view and a list view.

Creating and Editing Categories

As an administrator, you can create new and manage existing categories in Setup  Product Catalog  Categories.

A category name is limited to 50 characters. You can also add an optional description, which can include HTML, to provide a summary of the products in the category.

Using the Active toggle switch, you can control whether the settings defined in category administration are applied in the system.

Categories can be organized into hierarchies, meaning that a category can have a parent category and subcategories. You can select a parent category by clicking Parent Category, as well as create and manage subcategories in the Sub-Categories section, which display in a grid. When selecting a parent category, you can choose to apply the parent category’s permission settings to the category you are creating or editing. However, to apply the permission set for the current category to its subcategories, you need to use the option in Permissions and Effectivity Dates.

In addition, by setting a Rank for a category, you can define the order in which categories appear on the user side of the system. Likewise, you can define a redirection URL which will be triggered when users try to open that category.

Moreover, you can upload up to three images which will display when users open the category in the catalog. The image uploaded in the Image field is the main image, which is always displayed in the Catalog. It is also possible to add a mobile-only image, which is optimized for iOS mobile operating systems.

Note

To see them in the Catalog, you need to modify the XSLT by going to Setup  UI Design  Custom  Category UI. When you click Add New, you can select the Category for which you want to define the images. Then you can select the XSLT file for transforming these images. You can define your own transformation file, select the default file, or change the default file if needed.

For this feature to work properly, the appropriate transformation must be applied for all categories in the Catalog. You can do this in Setup  UI Design  Catalog Layout. There, you can select the appropriate XSLT file.

Permissions and Effectivity Dates

In Category Visibility Permissions, if the switch Visible to Everyone is enabled, the category is visible to all permission groups. However, if you disable this option, you can define which permission groups are able to see this category in the Catalog, by moving them from Available to Selected Permission Groups.

In addition, you can optionally define the start and end dates of an effectivity period during which the category will be visible to users.

Category visibility permissions are not automatically applied to the products in the category, its subcategories, or the subcategory’s products. If you decide that the same visibility rules defined for the category should apply to its products and subcategories, you can manage this behavior by enabling the following options:

Apply above specified category permission rules to all products in this category (not including products in sub-categories).

Apply above specified category permission rules to all subcategories and all products in those subcategories.

Default Catalog View

In Default Catalogue View, you can choose between a tabular, list, or custom view. The view you select here will be applied by default to this category on the user side. If no selection is made here, the view which is set for the user type in Users  User Types  Default category view is applied for this category, instead.

On this page
Creating and Editing Categories
Permissions and Effectivity Dates
Default Catalog View
Yes
No