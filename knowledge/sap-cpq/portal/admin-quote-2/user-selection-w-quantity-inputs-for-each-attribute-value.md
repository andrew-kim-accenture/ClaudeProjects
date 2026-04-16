# User Selection w/ Quantity Inputs for each Attribute Value | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/2363e0bde99d4d39a785893ce371ca16.html?locale=en-US&state=PRODUCTION&version=2603
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
User Selection w/ Quantity Inputs for each Attribute Value

By selecting the attribute type User Selection w/ Quantity Inputs for each Attribute Value, you create an attribute with a list of selectable values that each have a quantity input field in the Configurator.

The quantity input field displays only if Check Box is selected as the display type for that attribute on the product level. The user is able to set the quantity for each attribute value in the Configurator, even when multiple values are selected.

For example, the product is a computer system, and the attribute is Operating System with the values OS 1 and OS 2. For the purposes of your business, you wish to order 100 computers, but you want 75 of them to be licensed for the operating system OS 1 and 25 of them to be licensed for OS 2. To achieve that, the attribute Operating System needs to have the attribute type User Selection w/ Quantity Inputs for each Attribute Value selected in attribute definition, and the attribute display type Check Box selected on the product level. As a result, in the Configurator, the values for the attribute Operating System will appear as check boxes, and next to each check box there will be a separate quantity input field.

When you use the Free Input, No Matching display type, the value must not exceed 2,000 characters.

Related Information
Create Attributes
General Fields
Yes
No