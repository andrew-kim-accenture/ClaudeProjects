# Containers and IronPython Events | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/7d2f6a55be8541a5b9da1db31e7230ce.html?locale=en-US&state=PRODUCTION&version=2603
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
Containers and IronPython Events

There are four available Iron Python events when editing a product attribute in the Manage Container Events panel of the Attributes tab in a product.

When certain actions are performed in a container, the following events are triggered:

Script on row added (onRowAdded) – executes when a user adds a new row.

Script on row copied (onRowCopied) – executes when the existing row is copied.

Script on row deleted (onRowDeleted) – executes when a row is deleted from the container. 

Script on row edited (onCellEdited) – executes when the cell content is updated .

These events are triggered only on user interaction. If a container is altered via another script (such as adding a new row via Iron Python scripts), the events will not be triggered. For more information on available contexts and arguments check this scripting help page.

Yes
No