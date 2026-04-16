# User Selection | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/bacefcfabfcd4424876333b2cd04b687.html?locale=en-US&state=PRODUCTION&version=2603
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


	
User Selection


	
Drilldown
	
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
User Selection

By selecting the attribute type User Selection, you create an attribute with a list of selectable values. This attribute type can also be used for calculations and other uses for attributes if you prefer that it not be restricted to any specific data type.

User selection is a commonly used attribute type that can be used in a variety of scenarios. The simplest scenario is for the user to select one or more attribute values in the Configurator. For example, a configurable product that is a computer system can have an attribute Operating System, with a list of selectable values representing specific systems. The attribute type used for that attribute would be User Selection. Depending on the business specifics, different display types can be set for this attribute on the product level: for example, Dropdown or Radio Button types allow selecting only one value, while Checkbox allows selecting multiple values. When you use the Free Input, No Matching display type, the value must not exceed 2,000 characters.

With this attribute type, the user can’t change the attribute quantity in the configuration. Instead, attribute quantity is inherited from the main item. For example, if an operating system is selected for the product Computer System with the product quantity set to 50, 50 computers will be ordered with 50 licenses for the selected operating system). To enter a specific quantity for the attribute value, you need to use the attribute type User Selection w/ Quantity Inputs for each Attribute Value.

In addition, the value selected by the user can trigger a product rule, or a formula can be calculated on that attribute. For example, an attribute may offer a selection between values A and B and selecting the value B can trigger a product rule causing another attribute to become available. In another example, if a numeric attribute value is selected by the user, attribute quantity can be multiplied with that number. The selected attribute value can be used in a formula in or outside that attribute.

There are no restrictions for the data type that can be used for the attribute values.

Related Information
Create Attributes
General Fields
Yes
No