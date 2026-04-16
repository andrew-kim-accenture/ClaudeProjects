# Product Details Templates | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/861b76db10574d15ab0153ae53b80e8b.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration
	
User Administration
	
User Interface Design


	Setup Help
	
Obsolete Features


	
Top Menu
	
Custom Category UI
	
Product Configuration Templates
	
Product Details Templates
	
Products to Product Details Templates Mappings
	
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
Product Details Templates

Product Details Templates allows designing the Product Details page in a flexible, yet easy way by dragging and dropping various elements to the Design panel. Users can see the templates designed in the Catalog when they click on products View Details link. Templates can contain information about products, product attributes, Facebook widgets and so on.

Note

This feature is obsolete in Responsive Design, and can only be accessed if Classic Design is used.

Product Details Templates administration can be accessed by selecting the Product Details Templates link under the UI Design section of the Setup. From there you can add, delete, edit, or copy templates.

You can add new templates by clicking Add New. A new product details template can be defined in two steps. In the first step, you need to name the new template. In the second step, you can define the template by dragging variable elements onto the panel. On the right-hand side of the screen there are four groups of elements:

Attributes in the entire system

Properties of the product

Static HTML elements

Widgets

Product weight is added as a new product property. You can set label, rank, and styles as for all other product properties. The label of this property depends on the value of the application parameter, Unit of Measurement under Application Parameters  General Parameters. The value of the product property is one of following: Product Weight in GRAMS, Product Weight in KGS, Product Weight in LBS.

On the first tab Details, you can define properties specific to elements (for example - element div has only one detail, rank, which defines the order within the parent element). On the second tab Styles, you can define the style for that element.

In the Catalog, only attributes that exist in a product are displayed for the user, while attributes that don't belong to that product are ignored. All other elements are shown to the client. Static elements are listed in the following table.

Name	Description


Div

	

Use it as a container for other static and nonstatic elements.




Literal

	

Use it when you want to display any HTML.




List

	

Container for elements that are displayed as unordered list.




Tab container

	

Use it when you want to separate data in more tabs.




Tab

	

Use it to display data into a tab panel. Use it together with tab container.

Display type allows selecting the way the attribute is displayed.

Caution

After you've finished designing the template, you need to associate at least one product or a category with this template in order to display it in the Catalog. See Products to Product Details Templates Mappings for more information.

Yes
No