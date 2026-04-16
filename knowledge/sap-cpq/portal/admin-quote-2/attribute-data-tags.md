# Attribute Data Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/8cf952b27d91408c9fea2d7f690f55c7.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
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


	
Conditional Statements
	
Tags and Expressions
	
CTX Tags
	
Product Tags


	
Arithmetic Tags
	
Attribute Data Tags
	
External Source Tags
	
Logged in User Data Tags
	
Product Data Tags
	
Quote Tags
	
Tags for Rules and Triggers
	
Main Item Price Tag
	
XWS Tag
	
Formula Validator
Attribute Data Tags
Tag	Description	Type Returned	Example


<*Quantity(attribute name)*>

	

Gives the value of the quantity entered for an attribute. Att. Quantity must be selected for the attribute in order for users to enter a quantity.

	

Number

	

<*Quantity(Network Cable)*> - returns 2 from the attribute Network Cable




<*Price(attribute name)*>

	

Gives the price of the current attribute selection

	

Number

	

<*Price(Memory)*> - returns the price from the attribute Memory.




<*ATTRIBUTECOST(AttributeName)*>

	

Returns Attribute cost

	

Number

	

<*ATTRIBUTECOST(Hard Drive)*> - returns the cost of the selected attribute value for Hard Drive.




<*ATTRIBUTEVALUECOST(AttributeName:AttributeValueCode)*>

	

Returns Attribute Value cost

	

Number

	

<*ATTRIBUTEVALUECOST(Hard Drive:250GB)*> - returns the cost of the attribute value 250GB from the attribute Hard Drive.




<*Value(attribute name)*>

	

Gives the display value of the current attribute selection. This will also return the value of a hidden calculated expression if it is being used.

	

String/Number Depends on what the attribute contains

	

<*Value(Hard Drive)*> - returns the display value or hidden calculation value from the attribute Hard Drive.




<*ValueCode(attribute name)*>

	

Gives the value of the current attribute selection. This is what is entered with the display value when an attribute is created.

	

String/Number

	

Depends on what the attribute contains <*ValueCode(CD or DVD Drive #1)*> - returns the value of the attribute CD or DVD Drive #1.




<*ValueCode(attribute name)*>

	

Gives the value of the current attribute selection. This is what is entered with the display value when an attribute is created.

	

String/Number

	

Depends on what the attribute contains <*ValueCode(CD or DVD Drive #1)*> - returns the value of the attribute CD or DVD Drive #1.




<*CatCode(attribute name)*>

	

Gives the value catalog code of the current attribute selection

	

String/Number Depends on what the catalog code contains

	

<* CatCode(CD or DVD Drive #1) *>: returns the catalog code value of the attribute CD or DVD Drive #1.




<*IsSelected(attribute name.attribute display value)*>

	

Gives whether or not the specified attribute value of an attribute is selected.

	

True/False

	

<*IsSelected(Processor.Amtel 9 3GHz Processor)*>: returns whether Amtel 9 3GHz Processor is selected.




<*AttDef(attribute name)*>

	

Gives whether the attribute is currently selected. Similar to <*AttSel( )*> but checks a status flag and is faster for a long list of attribute values.

	

True/False

	

<* AttDef(Hard Drive) *> - returns whether any value has been selected in the attribute Hard Drive.




<*AttSel(attribute name)*>

	

Gives whether the attribute is currently selected. Similar to <*AttDef( )*> but checks every selection of an attribute.

	

True/False

	

<* AttSel(Hard Drive) *> - returns whether any value has been selected in the attribute Hard Drive.




<*GETATVUPC(attribute name : attribute value)*>

	

Gives the price of the specified attribute value. Value will only be returned if it has been selected.

	

Number

	

<* GETATVUPC(Color:Blue) *> - returns the price of the value Blue from the attribute. Color




<*SETQTY(attribute name, quantity)*>

	

Sets a specified quantity to the entire attribute. Note: Can only be used in Triggers.

	

Number

	

<*SETQTY(Color,5)*> - sets the quantity of the attribute Color to 5




<*SETATVQTY(attribute name : attribute display value, quantity )*>

	

Sets a specified quantity to the specified attribute value.

	

Number

	

<*SETATVQTY(Color:Blue,5)*> - sets the quantity of the attribute value Blue from the attribute Color to 5




<*GETATVQTY(attribute name : attribute value)*>

	

Gives the quantity of the specified attribute value. Value will only be returned if it has been selected.

	

Number

	

<*GETATVQTY(Color:Blue)*> - returns the quantity of the attribute value Blue from the attribute. Color




<* EXTENDEDPRICE(attribute name) *>

	

Returns sum( attribute values extended prices ) * (attribute quantity )s Attribute value extended price = attribute value price * attribute value quantity Attribute quantity = 1 or else if “user may enter quantity”

	 	 


<*AttributeValueXcost(attribute:attribute_value)*>

	

Returns cost multiply by attribute value quantity. Value will only be returned if it has been selected.

	

Number

	

<*AttributeValueXcost(Monitor:F19)*> - returns cost*quantity of the attribute Monitor which value code is F19.




<*AttributeValueXPrice(attribute:attribute_value)*>

	

Returns attribute value unit price multiplied by attribute value quantity. Value will only be returned if it has been selected.

	

Number

	

<*AttributeValueXPrice(Monitor:F19)*> - Gives unit price multiply by quantity of attribute Monitor which value code is F19.




<*AttributeValueDescription(attribute:attribute_value)*>

	

Returns parsed attribute value description builder field. Value will only be returned if it has been selected. Returns empty string if designated attribute value is not selected.

	

String

	 
Yes
No