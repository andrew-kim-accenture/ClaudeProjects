# Unit Mapping Table | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/d3ba837d34ba4da9bd055c1f1c43346e.html?locale=en-US&state=PRODUCTION&version=2603
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
Unit Mapping Table

Unit Mapping Table contains the units of measurement that have been added to the system. They can be downloaded.

Once you've added at least one default unit, you can download a Unit Mapping Table from Setup  Product Catalog  Unit of Measurement by clicking Export Conversions. You can add the table once you export the converted values.

If there are no attributes belonging to a certain measurement type, the exported Unit Mapping Table is empty. For example, if you download a table containing no attributes whose measurement type is Pressure, the downloaded table is empty.

The Unit Mapping Table format is as follows:

The first column is a Default unit.

The table has as many columns as there are added measurement units.

The number of rows in the Unit Mapping Table is defined by a number of unique values of measurement attributes.

If there are attributes of a certain measurement type in the system, the exported Unit Mapping Table contains the attributes' display value, and no duplicates.

The column order is the same as the order in which measurement units are added.

If you already completed the conversion of a certain value, the Unit Mapping Table contains converted values as well.

When two attributes use the same measurement, for example Pressure, the display value can be shown with a space (25bar) or without a space (25 Bar). The format of the display value is defined by the system (or by administrators) which creates Unit of Measurement attributes. When a Unit of Measurement attribute is loaded in product configuration, the attribute display values are read from the Unit Mapping Table. The attribute values format is as follows: 0.25 Bar and 0.25 bar are the same values, but one of the values exists in the unit mapping table. The format of the first value entered in the system is applied to all other attributes with the same values.

Example

New attribute: Attribute A with values 0.25 Bar, 0.35 Bar, 0.45 Bar.

New attribute: Attribute B with the following values, 0.25 bar, 0.35 bar, 0.45 bar, is displayed the same way in configuration. However, in table mappings, the values 0.25 Bar, 0.35 Bar, and 0.45 Bar are displayed.

Note

0.25Bar and 0.25bar are the same values, but one value is present in the Unit Mapping Table. The format of the first value entered in the system is applied to all other attributes with this value.

If a new value is compared to a value entered when you've completed a conversion for the last time, the new values are added to the column Pressure, but values aren't converted into other units.

You need to download a Unit Mapping Table, conduct a conversion, and put the table back into the system.

Yes
No