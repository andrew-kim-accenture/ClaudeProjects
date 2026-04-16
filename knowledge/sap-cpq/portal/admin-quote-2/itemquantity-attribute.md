# ItemQuantity Attribute | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/1074712f07c044128778aeec3108c556.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create Attributes
	
Attribute Types
	
Dynamic Attribute Values
	
Attribute Quantity


	
ItemQuantity Attribute
	
Item Quantity and Attribute Line Item Quantity
	
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
ItemQuantity Attribute

A special attribute added to a products configuration named ItemQuantity can be used to control the quantity of the main item in the cart.

The system looks specifically for the attribute named “ItemQuantity”. This controls not only the main item, but if any pricing schemes are attached to it, then prices in the cart are affected also. There are a few different ways that you can use the ItemQuantity attribute:

You can expose the attribute to the user so that they can pick their quantity, which is then reflected in the cart. In this situation, you would likely not allow the users to edit the quantity of the main item in the cart. Quantity for the product would be handled within the configuration.

Calculate ItemQuantity as a hidden attribute, which then is reflected in the cart. ItemQuantity in this situation would be based on selections made from the user.

Calculate pricing base on ItemQuantity, then allow users to edit the quantity in the cart. This situation is ideal for products that offer discounts when higher quantities are purchased. For example, a product can cost $5 when buying 1, $9 when buying two, or $13 when buying three. If a user adds the product to the cart with a quantity of 1, the price is $5. If when in the cart they change the quantity to 2, then the system passes that new quantity back into the configuration through the ItemQuantity attribute. Because pricing is based off this attribute, the price of the product changes accordingly.

Related Information
Attributes
Yes
No