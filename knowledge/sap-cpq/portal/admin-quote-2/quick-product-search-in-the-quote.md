# Quick Product Search in the Quote | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/13671d25d7934c458d7ccd5bbbefb379.html?locale=en-US&state=PRODUCTION&version=2603
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


	Setup Help
	
Solution Design
	
Quote Teams
	
Filtering Items in Quote
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
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
Quick Product Search in the Quote

Quick product search on ‘Add Products’ section is used for finding all types of product (simple or configurable) or favorites by typing any part of its part number, product name or description.

When user enters search criteria, SAP CPQ will look for products that have entered search criteria anywhere in the part number/name/description, or on the beginning of the word(depends on how application parameter is set).

When search doesn’t produce any results (both within favorites or products), SAP CPQ will show the messages for part number search: Auto-complete search didn’t find any products or favorites with this part number. The same message will be displayed if the appropriate name/description is not found.

When users click on See more results link in the message, SAP CPQ will try to find products by using standard product search (as if user clicked on the product part number search) in the top right corner of the screen. If SAP CPQ finds any results, user will be taken to the catalog where results are displayed (in the same way as if user entered part number in the top right corner of the screen). If SAP CPQ doesn’t find any results, message will be displayed: Additional search didn’t find any part numbers that contain searchcriteria.

Quick product search from the quote will be controlled with new application parameters, Product Search On The Quote Can Find Configurable Products and Product Search On The Quote Can Find Product Favorites. They are set on TRUE by default. If parameter Product Search On The Quote Can Find Configurable Products is set to TRUE, SAP CPQ will look for configurable products when user starts typing either part number of name/description (SAP CPQ will look for matching part numbers/names/descriptions in the same way as it looks for simple products – there will be no reverse configuration done, parsing of descriptions and so on) If parameter Product Search On The Quote Can Find Product Favorites is set to TRUE, SAP CPQ will look for favorites when user starts typing either part number of name/description (SAP CPQ will look for matching part numbers/names/descriptions in the same way as it looks for simple products – there will be no reverse configuration done, parsing of descriptions etc.) When user clicks on the product, he will be taken to the product configuration. If user came from the quote (and not from the catalog), breadcrumbs will be different – Current Quote link will be displayed instead of categories. It is important to note that there will be no products loading, processing of product rules, description parsing etc. when search results are displayed. This will happen only when user clicks on the product.

Product search in Catalog
User has entered SAP CPQ and goes to catalog start page. Instead of browsing through categories, user can start typing product, category or favorite name and find appropriate item. This will reduce the time it takes for user to find the item that she is looking for – typically users know what they want to quote. This behavior will be controlled with application parameters: Enable auto-complete product search in catalog by part number and show part number in results and Enable auto-complete product search in catalog by product description and show description in results. If those params are set to TRUE, user can choose will search be done via product part number or product name/description.

User has different search options for categories: Entire catalog (Search is done for entire catalog) and Category Name specified (Search is done within this category and all its sub-categories and their sub-categories and so on).

When user clicks on ‘See more results’, they will be taken to the catalog where SAP CPQ will search for the products in the same way as if user entered part number or name/description in the top right search box (in top menu) and clicked on Search.

When search doesn’t produce any results (both within product or favorites), SAP CPQ will show following messages for part number search: Auto-complete search didn’t find any products, categories or favorites with this part number.

Within search results, user can click on:

Configurable product - In this case, user is taken to the product configuration page

Simple product - View details pop-up is displayed for this simple product

User has the option to Add to quote. If this is clicked, product is added to the quote and user is taken to the quote screen (if quote doesn’t exist at this moment, new quote gets created)

Favorite - By using the same logic as for products, user is either taken to product configuration screen or product details page is displayed with favorite name and description displayed instead of product name and description

Category - User is taken to this category

If catalog top is not displayed (parameter SAP CPQ Setup  UI Design  Catalog Layout  Display top selection menu in Catalog set to FALSE), Search widget will be displayed above the breadcrumbs. Breadcrumbs will not be displayed for home category. Instead of Home  Top Category, there will be only one node Home Category that will take users to the top category page.

Yes
No