# Unit of Measurement | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/30d0366a71574fbe949a4c7d2f013887.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Attribute Visibility Restrictions
	
Unit of Measurement


	
Unit Mapping Table
	
File Import
	
Attribute Type - Unit of Measurement
	
Sales Unit of Measure
	
Unit of Measurement on User Page
	
Unit of Measurement Scopes and Limits
	
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
Unit of Measurement

The Unit of Measurement attribute refers to the attribute in the product configuration that displays values of certain measurement types, such as Pressure, Temperature, Length, and so on.

When these attributes are created, their values are expressed in default units. You can select measurement units for any measurement type. Based on your selection of the measurement unit, SAP CPQ converts attribute values to the selected unit. The purpose of this functionality is to display values of Unit of Measurement attributes in the units that you select.

The default unit of measurement is set up per user. The Unit of Measurement is available in Setup  Product Catalog.

You can add as many measurement types and measurement units as needed.

Once a measurement type and its units are added, the default unit can’t be changed anymore.

If the default unit has to be changed, you need to delete the existing measurement type and to create it again.

If a measurement type that needs to be deleted is used in attributes, you need to delete those attributes first, or change the attribute type, in order to remove the measurement type.

Yes
No