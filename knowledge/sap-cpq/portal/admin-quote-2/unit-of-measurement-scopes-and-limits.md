# Unit of Measurement Scopes and Limits | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/660e23323b6b4cdcaf78971a0f653d27.html?locale=en-US&state=PRODUCTION&version=2603
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
Unit of Measurement Scopes and Limits

This topic contains scopes and limits of the Unit of Measurement functionality.

Here are the scopes of the Unit of Measurement functionality:

When a user edits a saved configuration, Favorites, or a configuration from an existing quote, and if measurement attributes have selected values, the system shows the selected value of measurement attributes in unit selected when the Edit action was executed.

When a new product is created via API, the Unit of Measurement attribute type is supported. API is expanded to support the Measurement type along with the attribute type.

Creating an attribute type Unit of Measurement through Export/Import functionality is supported. Importing attributes with Unit of Measurement type is required when you want to make an attribute determined by a unit of measurement. When you conduct your Attribute Import, the Excel file needs to include a column called Measurement where you can enter your Display Values and your Unit of Measurement.These values must be entered in the exported file in order to be converted from your default value (meters, for example) to another value (kilometers, for example).

Making rules with this type of attribute and IronPython scripts is supported.

Attribute Unit of Measurement tags - all SAP CPQ attribute tags have to work with this new attribute.

Attribute Unit of Measurement in Deploy/Send Changes functionality – entire settings regarding Measurement and the Unit of Measurement are deployed to a new environment.

Here are the limits of the Unit of Measurement functionality:

Attribute Unit of Measurement translation - values of measurement attribute can’t be translated into other languages. For example, translating 25,000 Pаscale in English to 25,000 Паскаль in Russian isn’t supported.

Attribute Unit of Measurement in quote - tags in the quote return the value of the default unit. The converted values in the quote aren’t supported by the design; only tags in the Configurator return converted values.

Yes
No