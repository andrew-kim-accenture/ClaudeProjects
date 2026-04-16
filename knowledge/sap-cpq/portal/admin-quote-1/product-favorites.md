# Product Favorites | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/f4dc9f2608cd4a8fb5a5434a4ae1f169.html#user-side---quote
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


	
Creating Favorites Permissions
	
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
Product Favorites

Favorites are presented to users in a widget in different pages in SAP CPQ (quote, catalog, configuration and special page for Favorites).

General Considerations
Setup

To enable favorites, the application parameter Users are able to create product favorites needs to be set to TRUE.

Fields and Search
For each favorite, users can see:

Favorite's name

Favorite's description

Part number

Product that is used as favorite's base

Category of product

Users can search favorites based on all these fields. They can search between My Favorites, Company Favorites, and All Favorites. By default, all three categories of favorites are selected for the search.

Adding Favorites to Quotes

Users will be able to add favorites to current quote or to create new quote (if one is not loaded yet in session) by choosing one or more favorites from table and clicking Add to quote.

If result is success for favorite, it is added to the quote. If at least one favorite is incomplete, user will not be immediately taken to quote. Instead, same screen will be displayed to user from where he can continue to quote or complete favorite (clicking on ‘complete’ link will take user to product configuration with favorite loaded).

Deletion

User can only delete favorites they have created.

User Side - Catalog

The catalog shows two icons:

Add to Favorites - Users can add both simple and configurable products to favorites from the catalog (for simple product there will be only ‘Add to Favorites’ icon).

View Favorite Configurations for this product - In catalog, users can see icon for configurable products (as well as systems and collections). Mouse over for icon will be ‘View Favorite Configurations for this product’. When user clicks on ‘Favorite Configurations’ link, favorites for that product will be displayed.

In product configuration, 2 new icons will be added – ‘Add to Favorites’ and ‘View Favorite Configurations for this product’. Users who belong to appropriate user types will be able to define favorites for their company and for all users (these check boxes will be displayed only to appropriate user types).

User Side - Quote

Users can add favorites to current quote from the widget. New quote item action ‘Create Favorite’ will be added. When users click on it, pop-up will be displayed where users will be able to enter favorite’s name and description. Item action will be available for all main items (both configurable and simple products).

On this page
General Considerations
User Side - Catalog
User Side - Quote
Yes
No