# Product Display Types | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/d1e253598956428eb4b121c93d8a70f5.html?locale=en-US&state=PRODUCTION&version=2603
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
Product Display Types

The product display type depends on the the configuration level of a product. You choose the display type in the Product Definition tab of the Product Editor.

The following product types exist in SAP CPQ:

Product Display Type

	

Description




Simple Product

	

A simple product is one that can have attributes assigned to it, but they can't be configured. Because of nonexisting configuration of attributes, users can add the product to a quote directly from Catalog. In addition to defining simple products, simple products can be imported from Microsoft Excel.




Configurable Product

	

Configurable products have attributes associated with them and they need to be configured before being added to a quote. This is generally the standard configuration type used in the system. Note that the quote contains a System (List) of Configurable Products, and that its default behavior is as follows: if you delete one item from the system the entire system is deleted as well.




System (List) of Configurable Products

	

Each product can have its own attributes, but added products can't be independently changed or reconfigured. The entire system needs to be changed or reconfigured.




Parent/Child System (List) of Configurable Products

	

A child product’s existence in SAP CPQ is determined by its function in relation to the parent product. Each parent can have a range of child products and each child can assume the role of a parent and have a range of its own child products.

Yes
No