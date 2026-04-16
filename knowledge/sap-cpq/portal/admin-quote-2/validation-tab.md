# Validation Tab | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/3e9f87e568514042a5b68c17c1993a99.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create Container Attributes 


	
General Tab 
	
Columns Tab
	
Properties Tab
	
Actions Tab 
	
Validation Tab


	
Create Validation Rules
	
Container Rows
	
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
Validation Tab

You can add rules which determine what can and can’t be done during configuration. If a validation rule is violated, its message is displayed below the container.

For example, you can check whether the container is valid (that it contains properly entered or selected values) by entering the <*CTX( Container(AttributeContainerName).IsValid )*> tag in Validation Formula and when the rule is applied, the container validity will be checked once it is configured.



Create Validation Rules

This topic contains the procedure for creating new validation rules.
Yes
No