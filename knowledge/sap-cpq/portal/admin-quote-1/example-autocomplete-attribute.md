# Example Autocomplete Attribute  | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/14d4371a01fe40c38c12076531f2ab1c.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create Autocomplete Attributes 
	
Autocomplete Attributes Field Explanation 
	
Example Autocomplete Attribute 
	
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
Example Autocomplete Attribute

Here, you can see an example of an autocomplete attribute sourced from a custom table.

There is a product Phone Case to which we wish to add an attribute. We can use a custom table as a source to create an autocomplete attribute Decoration that has Price and Design columns. The Price column should contain price values which correspond to the design value in the same row. After that, we can add the attribute to the product Phone Case. If we select Design (with values such as Golden Brown, Matte, Punks and so on) as a both a searchable and a display column, and add the Price column as the Column Value Code, the product will appear like this in the Configurator:

The Price column was selected in the Column Value Code and its values were exposed in construction of a pricing formula in the Products  Phone Case  Pricingtab:

This ensures that the Price column values are used for the pricing mechanism in the product configuration. For each selected value in the dropdown, a corresponding price appears in the Configurator.  

Yes
No