# Create Autocomplete Attributes  | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/ae65e72d2ecf4680bdc3319f1862d8d2.html#procedure
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
Create Autocomplete Attributes

Autocomplete attributes sourced from either custom or quote tables are created in a relatively similar way. The procedure contains steps for creating both types.

Prerequisites

Complete the first four steps of the common attribute creation procedure. 

Procedure
Select Autocomplete – sourced from a quote table or Autocomplete – sourced from a custom table in Attribute Type dropdown. 

The fields common for this attribute type are displayed.

Fill in the fields as explained in the table .
Once you select a quote table or a custom table as a source, its columns display in Columns.
Note

Editing existing configuration with Autocomplete Attribute will always fetch the actual values from the custom table. In some cases, this can cause a system performance issue. You can perform the fallback to previous behavior by turning OFF the application parameter, AlwaysLoadSelectedValuesFromCustomTable on the Setup → General → Application Parameters → General Parameters page.

Place these columns in Selected Searchable Columns, Display Label, Selected Display Columns and Selected Column Value Code by clicking arrows next to each one of them.
Click Save.

The attribute is now created.

Note

When you use a quote-level custom field of type Autocomplete that's sourced from a custom table, a message might appear in the browser's developer console if the field is referenced in a CTX expression before you select a value.

If the following CTX expression is evaluated while the Autocomplete field is still empty:

<CTX( Quote.CustomField(FieldName).AttributeValueCode )>

a console error might be displayed.

This message doesn't affect the behavior of the formula. Once you select a value in the Autocomplete field, the CTX expression resolves as expected and no further messages appear.

On this page
Prerequisites
Procedure
Yes
No