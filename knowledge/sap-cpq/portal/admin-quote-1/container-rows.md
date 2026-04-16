# Container Rows | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/dcfaf97d84d645f9b8a732cd3d4e91fd.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create Container Attributes 
	
Container Rows


	
Containers and IronPython Events
	
Example Container Attribute
	
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
Container Rows

Container rows can be added or deleted during configuration, either manually or by a product rule. Minimum and maximum numbers of rows that can be added are defined in Setup. Users need to select one product per a row.

If there are no products in the container, or if there is just one, you can use the following tag in product rules to add a row:

Container(Container Name).Rows.Add(1)

1 is the number of rows that will be added.

If there are several products in a container, the following tag should be used in product rules: 

Container(Container Name).Product(Product Name).Add(2). 

Related Information
Container Attributes
Create Container Attributes 
Product Configuration
Yes
No