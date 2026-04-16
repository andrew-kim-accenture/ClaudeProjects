# Attribute Display Types | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/016fdd3f25cb46c4ad181fc1f5cecdf8.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Products


	
Create Products


	
Product Definition Tab
	
Product Pricing Tab
	
Product Attributes Tab


	
Attribute Display Types
	Product Rules and Messages Tab
	
Product Scripts Tab
	
Products Layout Tab
	
Products Advanced Settings Tab (Code Matching)
	Product Actions
	
Categories
	
Attributes
	
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
Attribute Display Types

Attribute display types define how and if the attribute appears in the Configurator. They are selected in product attribute definition. Specific attribute display types are associated with specific attribute types.

Attribute Display Types

Attribute display type

	

Associated attribute types

	

Description




Autocomplete – Quote Table

	

Autocomplete – Sourced from a Quote Table

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

	

Used for autocomplete attributes sourced from quote tables. The attribute is displayed as a dropdown list with an input field, where the user can enter a value. The attribute will automatically suggest values based on what the user entered.




Autocomplete – Custom Table

	

Autocomplete – Sourced from a Custom Table

	

Used for autocomplete attributes sourced from custom tables. The attribute is displayed as a dropdown list with an input field, where the user can enter a value. The attribute will automatically suggest values based on what the user entered.




Container

	

Container

	

Containers are displayed as a table which can be expanded by adding attributes or products. Its columns are defined in Setup, while its rows can be added and deleted during product configuration.




Checkbox

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

Measurement

	

All attribute values are visible and there is a clickable checkbox next to every value. You can select multiple values.




Dropdown

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

Measurement

	

Clicking on the attribute opens up a dropdown list of attribute values, where you can select a single value.




Radio Button

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

Measurement

	

All attribute values are visible and there is a clickable button next to every value. You can select only one value.




Button

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

	

The attribute is displayed as a single button. You can define the text displayed on the button in product attribute definition.




Custom Control

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

	

This display type is used with the Drilldown functionality.




Display Only Text

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

User Input or Computed – String, Date, Number

	

Create text that is displayed in the configuration. One way to use this attribute display type is to combine it with the User Input or Computed – String attribute type, to create headers in the configurator to separate groups of attributes in a single tab.




File Attachment

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

User Input or Computed – String, Date, Number

	

The user is able to upload a file attachment.




Image Button

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

	

This display type is similar to a radio button, except that you perform the selection by clicking on an image. You can select only one value.




List Box

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

	

A list displayed in a box, where you can select a single value. This type is used the same way as the dropdown list but appears different visually.




List Box Multi-select

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

	

A list displayed in a box, where you can select multiple values. Multiple values are selected using the Shift key (for a range of subsequent) or the Control key (for choosing multiple specific values).




Free Input, No Matching

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

User Input or Computed – String, Date, Number

	

This display type has a limit of 2,000 characters.

You can use it with all three User Input or Computed attribute types, but it can only be selected when the attribute has a single value. With Date, the Configurator shows a date picker for a single selection. With Number and String, users can enter any numeric or string value up to 2,000 characters.




Free Form, Exact Match

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

	

The user needs to enter the exact attribute value in the field. If the match isn’t exact, no value is saved. This display type has a similar function to the dropdown display type. However, it is more practical than the dropdown when it comes to exceedingly large numbers of attribute values, which would be difficult to navigate in a dropdown menu.




Free Form, Exact Match w/ Otherwise Option

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

	

The user enters the desired attribute value in the field. If the value entered does not exactly match a defined attribute value, it is overwritten by a different value. This display type is obsolete and should not be used.




Free Form, Match Lower

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

	

The user enters the desired attribute value in the field. The entered value is then matched with the adjacent lower value. For example, if the attribute values are 25, 30, and 35, and the user enters 32, the display value is saved as 32 in the configurator, but the attribute value code selected in SAP CPQ is 30.




Free Form, Match Upper

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

	

The user enters the desired attribute value in the field. The entered value is then matched with the adjacent higher value. For example, if the values are 25, 30, and 35, and the user enters 32, the display value is saved as 32 in the configurator, but the attribute value code selected in SAP CPQ is 35.




Free Form, Set Match Lower

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

	

The user enters the desired attribute value in the field. If the entered value does not match any attribute values, the value in the configurator is overwritten with the adjacent lower value and that value is saved in SAP CPQ.

For example, if you are selling software licenses in bulks of 10, 20, and 30 (using multi-tier pricing), if the user enters 25, the value is automatically corrected to 20.




Free Form, Set Match Upper

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

	

The user enters the desired attribute value in the field. If the entered value does not match any attribute values, the value in the configurator is overwritten with the adjacent higher value and that value is saved in SAP CPQ.

For example, if you are selling software licenses in bulks of 10, 20, and 30 (using multi-tier pricing), if the user enters 25, the value is automatically corrected to 30.




Hidden calculated, Match Lower

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

	

Attributes with the Hidden calculated display types are not visible in the Configurator. Instead, they are used in calculations, for which they use values from other fields. This display type overwrites the value with the lower adjacent attribute value.

Calculations in hidden calculated attributes are performed before rules are executed.




Hidden calculated, Match Upper

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

	

Attributes with the Hidden calculated display types are not visible in the Configurator. Instead, they are used in calculations, for which they use values from other fields. This display type overwrites the value with the higher adjacent attribute value.

Calculations in hidden calculated attributes are performed before rules are executed.




Hidden, Calculated, no Matching

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

User Input or Computed – String, Date, Number

	

Attributes with the Hidden calculated display types are not visible in the Configurator. Instead, they are used in calculations, for which they use values from other fields. This display type keeps the received value and does not overwrite it with any attribute value.

Calculations in hidden calculated attributes are performed before rules are executed.




Subproduct

	

User Selection

User Selection w/ Attribute Quantity Input

User Selection w/ Quantity Inputs for each Attribute Value

	

This display type is no longer supported. Instead of the Subproduct attribute display type, the attribute type Container should be used.

Related Information
Attribute Types
Product Attributes Tab
Attributes
Yes
No