# Product Attributes Tab | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/9d8df1a2aa374eba8d2a666809414966.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Product Implementation


	
Create Products


	
Product Definition Tab
	
Product Sales Area Tab
	
Product Pricing Tab
	
Product Attributes Tab


	
Attribute Display Types
	Product Rules and Messages Tab
	
Product Scripts Tab
	
Products Layout Tab
	
Products Advanced Settings Tab (Code Matching)
	Product Actions
	
Product Categories
	
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
Product Attributes Tab

You can add attributes to individual products directly from the product configuration in Setup. It is also possible to create new attributes there, and they will automatically be available in the list of all attributes.

By clicking Define New Attribute, you will be redirected to the Attributes creation screen. From there, you can follow the attribute creation procedure.

By clicking Add Attribute, a popup displays with a list of available attributes, and you can select the attribute you wish to use in the product.

We recommend to avoid duplicate attributes associated with a product, as this may lead to problems with later processes such as importing products and trying to fetch the attribute names in a formula.

Editing Attributes within Products

It's possible to define attribute behavior within each product separately. None of these options are mandatory.

Note

Not all options presented in the following tables refer to all attribute types.

Display as

	

Determines how the attribute is displayed in the Configurator.




Custom Label

	

Replaces the default attribute name for this product only. Formula Builder can also be used to retrieve the label from other places in the application.




List as Line Item

	

Attributes marked as line items are listed as separate items in the quote and can be configured independently from the products.




Required

	

Determines whether it is mandatory to select an attribute value to complete the configuration.




Hint

	

Creates a tooltip next to the attribute label. The hint isn’t displayed if the selected attribute display type is Hidden Calculated.

The following options are displayed only if List as Line Item option is active.

Description

	

What you enter here will be displayed below the line item when it is configured.




User Can Enter Quantity

	

Users can enter the quantity of child items independently of the parent item quantity. If enabled, you can create a formula with conditions which determine which permission groups can edit quantity

If both this toggle switch and Inherit Quantity from Parent are enabled, the line item quantity will be inherited from the parent product, and user can’t enter quantity.




Inherit Quantity from Parent

	

Line item inherits the quantity of the parent item. If enabled, you can create a formula to expand the basic conditions (yes/no).




Rank within the Cart

	

If there are several items, their rank determines the order in which they are displayed in the Configurator.

Additional Attribute Definition

In this section, you can define optional attribute values, which have an impact on the attribute’s behavior in the Configurator.

Width

	

Width determines how much space the attribute takes up in the Configurator.

The value entered in this field isn't applied in the Configurator if the Responsive Design is used.




Height

	

Height determines how many rows the attribute takes up in the Configurator. The value defined indicates the number of rows and not the number of pixels.

The value entered in Height is only applied in the Configurator for the following attribute display types:

Free Form, Exact Match w/ Otherwise Option

Free Form, Exact Match

Free Form, Match Lower

Free Form, Match Upper

Free Form, Set Match Lower

Free Form, Set Match Upper

Free Input, No Matching




Formula for Calculating Attribute Quantity

	

You can add a formula which calculates the attribute quantity during configuration. For example, the quantity of one attribute can be conditioned by the quantity of another one. The maximum allowed number of characters is 2500. 




Custom Range Error Text

	

You can define an error message which displays if users enter an incorrect value. 




Valid Input is From/To

	

These options are displayed for container attributes. You can build formulas which determine the input validity period.




Spans Across Entire Row in Configurator

	

The attribute stretches across the entire row, so no other attributes are positioned next to it. 




Show One Time Price

	

Enabling this option shows the one-time priceof the attribute in the Configurator. By default, they are disabled, so the price of the product is the only one displayed. 




Show Recurring Price

	

Enabling this option shows the recurring price of the attribute in the Configurator. By default, they are disabled, so the price of the product is the only one displayed. 




Triggers Execution of Rules

	

When the attribute value is changed in the Configurator, a product rule is executed. Applicable only if rules are attached to the product. 




Refresh Configurator on Change

	

Every time a user selects an attribute value, the Configurator is refreshed.

Note

Regardless of the parameter status, Add Container row will always trigger a Configurator Page Refresh.




Start Date/End Date

	

The dates between which the attribute is available on the product. 




Inherit Product Type from

	

You can select a product that the attribute will inherit the product type from, even though by default the main item serves as a source of the product type.

Manage Container Events

If the attribute is a container, this panel is displayed, and you can add scripts to the following events which will be triggered once the listed events occur: 

Script on new row added 

Script on row copied 

Script on row deleted 

Script on cell edited 

Attribute Values

Attribute values are automatically retrieved from the attribute's definition and displayed in the table of values.

Alternatively, you can add attribute values manually or you can add one of the products as a source of attribute values.

Add Values Manually – If selected, a table in which you can enter values, value code and rank displays.  

Add Values from Product List - If selected, a table with products displays, and you can select products from which you will source the values. 

After you make the selection of values, they will be displayed in the table below. You can use both manually entered values and product values in one attribute. Values need to be selected in the Display to User checkbox in order to appear in the Configurator.

You can add long descriptions for configurable products to enable the display of more details of attribute values. For more information, see Long Description for Configurable Products.

Related Information
Container Attributes
Attributes
Create Attributes
General Fields
Attribute Display Types
On this page
Editing Attributes within Products
Additional Attribute Definition
Manage Container Events
Attribute Values
Related Information
Yes
No