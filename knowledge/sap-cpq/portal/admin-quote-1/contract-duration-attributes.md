# Contract Duration Attributes | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/4d02897d9bee4ab6ab3b15e6dfd8fe7e.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create Contract Duration Attribute
	
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
Contract Duration Attributes

The Contract Duration attribute should be used to state the length of the contract for a subscription product.

This attribute type inherits all general attribute characteristic. It can be used in product rules and it can affect the product price. For example, if the contract duration for a product subscription lasts for 1 year, the price is 1000$, and 1800$ for a two-year contract.

Contract Duration is introduced mainly for the SAP CPQ – SAP Billing and Revenue Innovation Management integration for Quote 2.0. In the integration scenarios, the new attribute is created automatically on all SAP Billing and Revenue Innovation Management products.

As of the 2011 release, this attribute type can be used outside the SAP CPQ – SAP Billing and Revenue Innovation Management integration, in other billing scenarios, in both quote engines. In the Quote 2.0 engine, the attribute values are propagated from the Configurator to the quote, and in the old quote engine, custom implementations are required to create the connection between the attribute in the Configurator and the quote.



Create Contract Duration Attribute

You can create and update contract duration attributes in Setup  Product Catalog  Attributes.
Yes
No