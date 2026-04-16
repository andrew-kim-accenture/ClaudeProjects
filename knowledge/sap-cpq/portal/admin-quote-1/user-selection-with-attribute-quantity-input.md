# User Selection with Attribute Quantity Input | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/105c72571112452f8430c6b257596b35.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create Attributes
	
Attribute Types


	
User Selection
	
User Selection with Attribute Quantity Input
	
User Selection w/ Quantity Inputs for each Attribute Value
	
User Input or Computed – Date, Number or String
	
Container Attributes
	
Autocomplete Attributes
	
Measurement Attributes
	
Contract Duration Attributes
	
Billing Cycle Attributes
	
Dynamic Attribute Values
	
Attribute Quantity
	
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
User Selection with Attribute Quantity Input

By selecting the attribute type User Selection with Attribute Quantity Input, you create an attribute with a list of selectable values, and a quantity input field in the Configurator that applies to the entire attribute.

This attribute type is not restricted to any specific attribute display type. However, when you use the Free Input, No Matching display type, the value must not exceed 2,000 characters. In the Configurator, the user can only set the quantity for the entire attribute, and not for individual attribute values. If multiple attribute values are selected, the quantity of each value becomes equal to the quantity of the attribute.

Note

The User Can Enter Quantity function can’t be set for this attribute type.

In this example, the product is a computer system, with the attribute Keyboard, and a list of selectable keyboard types as its attribute values. If the attribute type is User Selection, the quantity selected for the product is applied to the attribute (if the product quantity is 50, you will order 50 computer system together with 50 of the selected keyboards). However, if the attribute type is User Selection with Attribute Quantity Input, the quantity of the keyboards you order is defined in the quantity input field in the Configurator. That way, you are able to order 50 computer systems and 25 keyboards.

However, this attribute type allows you to set the quantity for the entire attribute, but not for the specific values. For example, if the Keyboard attribute has Checkbox selected as its attribute display type, you are able to select multiple values (that is, different keyboards). In that case, the quantity for each selected value will be the same as the quantity set for the entire attribute (by entering the quantity 25 and selecting the values Keyboard A and Keyboard B, you will order 25 keyboards of each type). If you want to be able to specify a number for each specific keyboard type, you will need to use the attribute type User Selection w/ Quantity Inputs for each Attribute Value, instead.

Related Information
Create Attributes
General Fields
Yes
No