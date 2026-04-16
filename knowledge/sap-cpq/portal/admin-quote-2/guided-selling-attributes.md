# Guided Selling Attributes | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/265850661c124f6db0b3ca0229e632fc.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Product Implementation
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


	
Create Guided Selling


	
Guided Selling Definition Tab
	
Guided Selling Attributes
	
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
Guided Selling Attributes

In the Attributes tab, you select which attributes are considered as filtering criteria when users search for products/services in the Catalog.

All the attributes you add can be customized. Once you click Edit next to an attribute, the following fields and options are displayed:

Display Type

	

Attribute display types define how and if the attribute appears in the Guided Selling page in the Catalog.




Spans Across Entire Row

	

The attribute stretches across the entire row, so no other attributes are positioned next to it.




Triggers Execution of Rules

	

When the attribute value is changed in the Configurator, a product rule is executed. Applicable only if rules are attached to the product. 




Refresh Configurator on Change

	

Every time a user selects an attribute value, the Configurator is refreshed.




Custom Label

	

Replaces the default attribute name in this guided selling only. Formula Builder can also be used to retrieve the label from other places in the application.




Hint

	

Creates a tooltip next to the attribute label. The hint isn’t displayed if the selected attribute display type is Hidden Calculated.




Start Date/End Date

	

The dates between which the attribute is active.




Use Attribute as Search Parameter

	

The attribute is included in the product-filtering process.




Use Attribute Only to Select in which Categories Values will be Searched

	

Select a category or a subcategory for which the search will be performed, while the products from other categories and subcategories will be ignored.

You can also select which attribute values will be displayed to users and used as search criteria and rank them in order in which you want them to be displayed to users.

Yes
No