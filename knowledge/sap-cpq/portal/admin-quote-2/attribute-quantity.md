# Attribute Quantity | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/40f85024ef074b3da5450ee3e2bf3d06.html?locale=en-US&state=PRODUCTION&version=2603
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
Attribute Quantity

Attribute quantity and its values can be managed in multiple ways.

Quantity can be entered by a user for an attribute at the attribute level, or at the attribute value level. This is determined by what the attribute is set as at in the Attribute administration section. Attribute quantity can be changed by the user in the configuration if the attribute type is either User Selection w/ Quantity Inputs for each Attribute Value or User Selection w/ Attribute Quantity Input. If User Selection w/ Quantity Inputs for each Attribute Value is selected as the attribute type, then in the configuration, the user is able to select the quantity of each attribute value that is selected. So, if multiple attribute values are selected, the user is able to select the quantity for each one individually. Attributes set as User Selection w/ Quantity Inputs for each Attribute Value can only be check boxes.

If User Selection w/ Attribute Quantity Input is selected, then in the configuration the user is only able to select the quantity of the attribute not the quantity of each individual attribute value. If multiple attribute values are selected, then the quantity of each attribute value changes to equal the quantity of the attribute. With User Selection w/ Attribute Quantity Input, the Can Enter Quantity function can’t be set.

If the attribute type is User Selection, then the user isn’t able to change attribute quantity in the configuration. The attribute’s quantity is based on how it either inherits the main item’s quantity or the value entered in the Attribute Quantity field depending on how you have the attribute set up on the attribute definition page.

Attribute type can be changed for existing attributes in the Attributes administration section. It’s also set when creating a new attribute in the Attributes tab of products.

Note

Attribute quantity can only be entered after a product that is already selected. The default attribute quantity can’t be edited globally.

Related Information
Attributes
Yes
No