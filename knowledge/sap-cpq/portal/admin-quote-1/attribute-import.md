# Attribute Import | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/04bc08a0df9f4995a2eb10879c6f22f1.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
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


	
Bulk Product Import/Export
	
Bulk User Import/Export
	
Bulk Pricebook Import/Export
	
Bulk Product Translation Import/Export
	
Attribute Import


	
Create Template by Exporting Attributes
	
Importing Attributes with Unit of Measurement Type
	
Import/Export Attribute Translations
	
Export/Import Customers
	
Companies Export/Import
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Attribute Import

In the Attribute Import page, you can export/import attributes in several ways.

You can perform attribute import by following one of these workflows:

Download a sample template, fill out attribute details, and then import the file.

Export all attributes in SAP CPQ.

Export all attributes, change details, and add new attributes, then import the file.

Sample Template

The sample template lets you easily upload multiple new attributes in SAP CPQ. To download the import template, click Sample Template in the Attribute Import page. The Excel file contains three sheets:

Attributes - enter attribute details having in mind the restrictions detailed in the following section. The layout of the sheet matches the layout of the file that you get when downloading all attributes in the system.

IMPORTANT INFO - instructions on filling out the columns.

Data Type Defn - the first column lists the attribute types supported for upload. The second column lists the possible values for the Contract Duration attribute type and the third column lists the possible values for the Billing Cycle attributes.

Upload Restrictions
When you are populating the Excel template to upload or update attributes, have in mind the following restrictions:

Each line in the Attributes sheet corresponds to one attribute value. If an attribute has multiple values, the attribute name, attribute external Id, and data type are the same for each value of one attribute.

The column ID needs to remain empty for new attributes. If you are updating an existing attribute, do not change the values in this field.

The first cell in the column Index needs to always have the value 1 and the number should increment by one in the subsequent cells.

The maximum length of values in the Attribute Name cells is 50 characters.

Attributes that are already in the system must have the system ID. Do not change or remove their system ID in the list. If you are adding a new attribute, leave this column empty. If you are adding a new attribute value to an existing attribute, you need to provide the system ID of that attribute or otherwise the system will create a new attribute.

The maximum length of values in the Attribute External ID cells is 100 characters. This is not a required field.

Display Value - Attribute value with the measurement unit, if applicable (for example 150 kg). The maximum length is 255 characters.

Value - Attribute value code. The maximum length is 255 characters.

Data Type - Data validation is set up on this column, so you can only select one of the attribute types stated in the Data Type Defn sheet.

Unit is required for Contract Duration attributes.

Billing period is required for Billing Cycle attributes.

Measurement - Name of the measurement unit of the attribute value as defined in Product Catalog > Unit of Measurement.

All attribute types except Autocomplete - sourced from a custom table, Autocomplete - sourced from a quote table, and Container can be imported in the system through the Attribute Import feature.

Note

Those kinds of attributes will not be included when exporting attributes.

The maximum size of the Excel template file is 768 KB.

On this page
Sample Template
Upload Restrictions
Yes
No