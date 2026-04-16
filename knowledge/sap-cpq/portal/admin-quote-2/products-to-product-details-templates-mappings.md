# Products to Product Details Templates Mappings | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/13bdfb7f29cd4552aff1d91176f37dd6.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration
	
Business Partners
	
User Administration
	
User Interface Design


	Setup Help

	
Branding
	
Catalog Layout
	
Responsive Templates
	
Obsolete Features


	
Top Menu
	
Products to Product Details Templates Mappings
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Products to Product Details Templates Mappings

The Products to Product Details Templates Mappings feature allows you to specify where Product Details template is used.

Templates Mappings administration can be accessed in Setup  UI Design  Product Details Templates Mapping. From here user can add, delete, or edit a mapping.

Clicking Add New opens a page where you can connect a single product or products within a category to a template.

Click Select to choose a Product or a Category the template is mapped to. If product or category isn't selected, the template is shown for any product or category.

Once you set up the mapping, you can see the details by clicking View Details in the Catalog. It’s possible to specify whether the details appear in a modal div, or in a new page, by changing the application parameter Allow view details for simple products in catalogue, which has three available values: No, In modal popup, On new page (See Application Parameters 1.0).

When you click on View Details, the system tries to find the template for that product. If there’s no template for that product, the system tries to find a template for the category to which the product belongs. If there’s no template for that category, the system continues searching recursively for a template in the parent category. Finally, if there's no template that matches the criteria, the system chooses a default template (which doesn't define category and product (Any)) or if there’s no default template mapping, the standard view is used.

Yes
No