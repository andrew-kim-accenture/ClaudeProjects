# Columns Tab | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/42fcca6b49c244e98af88e7a3d9271f7.html?locale=en-US&state=PRODUCTION&version=2603
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


	
General Tab 
	
Columns Tab
	
Properties Tab
	
Actions Tab 
	
Validation Tab
	
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
Columns Tab

In this tab, you define the columns of the container. 

To add a new column, go to Setup  Product Catalog  Attributes  Columns tab and click Add Column. The following options are displayed in the tab:

Name (required)

	

The column name. 




Header Label

	

The text which is displayed in the column header.




Footer Label

	

The text displayed below the column. It can be used for displaying totals of a formula.




Width

	

The column width.




Height

	

The column height. Displays if Multiline is selected as Display Type.




Total

	

Calculation options:

Sum

Average

Formula




Total Formula

	

The formula which will be applied for calculation of totals can be entered here or created with Formula Builder. Displays if  Formula is selected in the Total dropdown.




Data Type

	

The format of data (String, Number, Currency and Date).




Column Type

	

Stand Alone Column – reference values of attributes which are not a part of the container. 

Product Attribute – can be selected if a container uses a product as the source of its values.  

Product Part Number – can be selected if a product part number is used for retrieving a product during configuration. 




Display Type

	

The visual appearance of input fields. The available choices are Label, TextBox, CheckBox, DropDown, SelectList, RadioButton, Multiline, Selector Radio Button, Selector Check Box, Autocomplete With Custom Table, Autocomplete With Quote Table. 

Only Label and TextBox are displayed if the Column Type is Product Part Number. 




Decimal Places (required)

	

The number of decimal places of entered values. Displays if  Number or Currency are selected in Data Type.




Attribute (required)

	

The attribute as a source of values referenced by the container. You can also select which of its values you wish to use. It displays if you:

select Product Attribute as the Column Type.  

select CheckBox, DropDown, SelectList, RadioButton, Autocomplete With Custom Table or Autocomplete With Quote Table as Display Type. 

Once you select the attribute, a popup window containing that attribute’s values displays. You need to select at least one value. 

Note

If you select the Product Attribute column type, you can't change the attribute values that will be displayed to users, as their visibility is determined by the product's settings. If you wish the column to reference some values of an attribute, but not all of them, you can opt for the Stand-alone Column type and one of the display types listed above.




Calculation Formula

	

Used for automatic evaluation of column value. Enter the formula or construct one with the Formula Builder.

Example: An administrator defines columns First Name, Last Name with Text Box as display type, the column Full Name with Label as its display type and uses the following calculation formula: <*CTX(MyContainer.CurrentRow.Column(First Name).Get)*><*CTX(MyContainer.CurrentRow.Column(Last Name).Get)*>. The administrator adds another column Date Added (Text Box) with the following calculation formula: <*CTX(Date)*>. The Full Name column value is updated every time when the values of First Name or Last Name columns are changed, while Date Added is calculated only when a row is added. 




Always include in KO context

	

Used for exposing a hidden column in knockout context if some information stored within needs to be sent through a JSON file via the HTTP response. Activating this toggle switch does not make the column visible to end users. Applicable in responsive design only.  

These properties become available: 

columnId – Id of the hidden column 

headerLabel – label of the hidden column 

value – value of the hidden column 




Contains Personally Identifiable Information

	

Information that can be used to identify an individual uniquely (passport number), or information that can be used in combination with other information to recognize an individual (for example, race and date of birth)




Suppress Information Logging

	

Prevent logging of old and new values in the Audit Trail, as the unauthorized acquisition could be harmful to the concerned individual. The toggle can be activated only if the Contains Personally Identifiable Information toggle is active.



Once you define a column, you can edit permissions that user types and permission groups will have during configuration.  

Column Permissions

In this section, you can select the permissions which will be applied to the columns depending on the user types and permission groups users belong to. If you enable the Same permission for all Permission Groups toggle switch, all users will see the column in the same way. However, if you deselect the toggle switch, you have more freedom in assignment of different column rights to different user types and permission groups.

You can choose between the following permission types:

Editable – users can edit the fields within the column.

Read-only – users can only view the contents of the column. 

Required – users can’t complete the configuration before making changes to the contents of the column. 

Hidden – users can’t see the column at all. 

Yes
No