# Hidden Custom Tables | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/eac1a273d450479281c27c97252b22c4.html#parameter-edit-hidden-custom-tables
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
	
Product Types
	
Custom Tables


	
Custom Table Logging
	
Hidden Custom Tables
	
Access Rights for Custom Table
	
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
Hidden Custom Tables

Hidden custom tables are custom tables that are conditionally visible in SAP CPQ Setup, depending on whether you’ve marked the tables as Hidden.

When you create a new custom table (by clicking Define New), you need to decide whether to mark the tables as Hidden or not. The tables can be Hidden with values True and False. The default value is always False.

Many projects require storing data on custom tables that shouldn't be shown in SAP CPQ Setup. These kinds of tables are a part of clients’ SAP CPQ model, but SAP CPQ system administrators aren’t responsible for them and, as a result, they aren't visible in SAP CPQ Setup.

Note

Input parameters for creating a new custom field via API call have been expanded to support this property. The IPython CreateTable method has also been expanded to support this property.

Parameter Show hidden tables

This parameter is located on the Custom Table page in Setup. When the value of this parameter is set to True, SAP CPQ shows hidden tables. The parameter's default value is False. The value of this parameter is saved only during your session. In other words, your selection is valid only you log out or unselect this parameter.

Parameter Edit hidden custom tables

If this parameter is set to True, custom tables are displayed in the Configurator. They look the same as other custom tables. You can edit them, delete them or change their content.

On this page
Parameter Show hidden tables
Parameter Edit hidden custom tables
Yes
No