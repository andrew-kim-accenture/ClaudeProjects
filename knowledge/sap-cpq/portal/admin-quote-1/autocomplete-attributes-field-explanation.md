# Autocomplete Attributes Field Explanation  | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/6ee46c9c047e44e89803e4a157dbb9c7.html?locale=en-US&state=PRODUCTION&version=2603
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
Autocomplete Attributes Field Explanation

This table contains description of fields and options that you should populate when creating the autocomplete attribute type.

Custom Table/Quote Table 

	

Choose either a custom table or a quote table as a source of attribute values. Quote tables are only supported by the Responsive Design.




Search Method

	

Choose either a Starts With or Contain method.  Starts With is faster than Contains as it is method that searches for the phrases (letters) that Autocomplete parameter value starts with and Contains searches for all the phrases in all the Autocomplete attribute values.

User can control after how many letters entered in the Autocomplete attribute value field the search should start and that way to speed up return of search results. This is controlled by the Application parameter “Minimum Characters for Search in Autocomplete Attribute sourced from Custom Table” that can be found in Setup  General  Application Parameters  General Parameters.




Preselection Filter 

	

Use it to reduce the number of attribute values retrieved from the table. You should use the Formula Builder to construct SQL statements according to which the values can be retrieved. The filter is especially useful for attribute values sourced from custom tables, as there may be extensive attribute values stored in the custom table. Tags starting with Quote.CurrentItem are not supported in the preselection filters for autocomplete attributes. 




Show Only Distinct Values (displays if a custom table is used as the attribute source) 

	

Applicable if the same column is added to Display Column box and the Column Value Code. If this checkbox is selected, the system does not retrieve duplicate values from a column and only distinct values are displayed to users. 




Searchable (max 4) 

	

The values of columns you select can be looked up in the dropdown search box in the Configurator. 




Search Placeholder Text 

	

Once you select a box in the Searchable (4) column, the corresponding cell in the Search Placeholder Text column is automatically populated with the text from the Column Name. You can fill in with the textual value you wish to be displayed in the Configurator instead of the existing column name (this is valid only for attributes, which attribute type is Autocomplete - Sourced from a Custom Table, but not for Autocomplete - Sourced from a Quote Table).




Display (max 4)

	

When users search for a value from a searchable column, the value from the selected display column that corresponds to it is displayed next to it in the dropdown search box in the Configurator. 




Column value code

	

Values of the column you select in this field are exposed for use in scripts and formulas. 

Example: If the table from which the attribute is sourced has prices as values of one of its columns, that column can be selected in this field for building a pricing formula which will later be applied in a quote. 

Yes
No