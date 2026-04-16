# User Input or Computed – Date, Number or String | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/f51c3f75633b44b9b1a673f748e2bc87.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create Attributes
	
Attribute Types


	
User Selection
	
User Selection with Attribute Quantity Input
	
User Selection w/ Quantity Inputs for each Attribute Value
	
User Input or Computed – Date, Number or String
	
Container Attributes
	
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
User Input or Computed – Date, Number or String

By selecting the attribute type User Input or Computed (date, number or string), you create an attribute which can contain the user’s personal input or a calculation. The value entered by the user, or the result of the calculation, must be in the selected format: date, number, or string.

This attribute type can be matched with various attribute display type, but they can all be matched with the display type Free Input, no Matching (to select this display type, make sure the attribute has only one value).

Note

User input attributes can also allow users to upload file attachments if the appropriate display type is selected on the product level.

Date

The simplest way to use this attribute type is to combine it with the display type Free Input, no Matching and make sure it only has one value. As a result, in the Configurator, the attribute appears as a date picker.

Number

With this attribute type, your user input is limited to numeric values. By selecting the display type Free Input, no Matching, a user input field appears in the Configurator where you can enter a number as a value.

For example, if the attribute is Number of Monthly Installments, in this field you can specify the number of installments for your payment. However, if you wish to limit your user to entering numbers of installments between 1 and 12, you can define this limit for the attribute on the product level, using the fields Valid Input is From and To. By setting these fields to 1 and 12, the user will not be able to enter 13 as a value in the Configurator, and if they attempt to do that, a message will appear. That message is also defined by you on the product level, in the field Custom Range Error Text (for example: Only values between 1 and 12 are allowed).

Fields such as Valid Input is From/To and Custom Range Error Text can also contain formulas if you want them to retrieve their values from custom tables. That way, these values can be maintained externally, which is useful if the attribute is used in multiple products, and at some point, you wish to edit the value globally rather than edit every individual product with that attribute.

String

In the most basic scenario, if this attribute type is combined with the display type Free Input, no Matching, you can enter any type of string as a value.

Additionally, with the display type Display Only Text, you can create a text that will appear in the configuration. One way to use this attribute type to create headers in the configurator to separate groups of attributes in a single tab (if that is the preferred option for your model). For example, your product is a computer system and has 10 attributes. You wish to separate them into two groups on the same product tab: the former 5 are hardware, and the latter 5 are software. For that, you will need to create two attributes of the string data type (one for each header). On the product level, edit the attribute and enter the text you wish to display in the header in the field Hint (for the first attribute enter the hint Hardware and for the second, Software). Following that, enable the toggle switch Spans Across Entire Row in Configurator, and in the layout, place the Hardware header attribute before the 5 hardware attributes, and the Software attributes before the 5 software attributes.

Note

When you use the Free Input, No Matching display type, the value must not exceed 2,000 characters.

Related Information
Create Attributes
General Fields
On this page
Date
Number
String
Related Information
Yes
No