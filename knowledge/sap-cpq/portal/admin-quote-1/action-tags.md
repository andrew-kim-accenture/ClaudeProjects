# Action Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/6c24fd2f2f99449ea243b7b3c42cc929.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags


	
Conditional Statements
	
Tags and Expressions
	
CTX Tags
	
Product Tags
	
Quote Tags
	
Tags for Rules and Triggers


	
Action Tags
	
Condition Tags
	
Main Item Price Tag
	
XWS Tag
	
Global Information (GI) Variables
	
Formula Validator
Action Tags
Tag	Description	Result


<*allowatt(standard attribute name)*>

	

Parameters: attribute names. More than one attribute can be entered. Each separated from the other a comma.

	

Allows all values from all specified attributes.




<*AllowAttributes(standard attribute name)*>

	

Parameters: attribute names. More than one attribute can be entered. Each separated from the other a comma.

	

Allows all values from all specified attributes.




<*allowatv(standard attribute name:standard attribute value)*>

	

Parameters: attributes with their values, separated by colon. More than one attribute/value pair can be entered. Every pair is separated from other pairs by a comma.

	

Allows all values from the entered list




<*AllowValues(standard attribute name:standard attribute value)*>

	

Parameters: attributes with their values, separated by colon. More than one attribute/value pair can be entered. Every pair is separated from other pairs by a comma.

	

Allows all values from the entered list




<*assignff(attribute name:value)*>

	

Parameters: the name of the free-form attribute, and the value to be assigned to the attribute, separated by colon. More than one free form attribute/free input value pairs can be entered. Every pair is separated from other pairs by a comma.

	

Every free input value is assigned to appropriate free form attribute. If free input value contains function, the function is executed before assignment. For example: <*assignff(attribute_name:<*catcode(other_attribute)*>)*> gives as the result the CatCode string from the other_attribute, assigned to free form field in the attribute_name attribute. <*assignff(attrib_name:Webcom)*> assigns the string Webcom to the “attrib_name” attribute. Non-free-form attributes can’t accept the assigned values.




<*AssignValue(attribute name:value)*>

	

Parameters: the name of the free form attribute, and the value to be assigned to the attribute, separated by a colon. More than one free form attribute/free input value pairs can be entered. Every pair is separated from other pairs by a comma.

	

Every free input value is assigned to appropriate free form attribute. If free input value contains a function, the function is executed before the assignment. For example:<*AssignValue(attribute_name:<*catcode(other_attribute)*>)*> gives as the result the CatCode string from the other_attribute, assigned to FreeForm field in the attribute_name attribute. <*AssignValue(attrib_name:Webcom)*> assigns the string Webcom to the attrib_name attribute. Non-free-form attributes can’t accept the assigned values.

Note

If you wish to assign date to an attribute of type Date via this tag, you should use <*ASSIGNVALUE(TestDate:<*CTX( Date.AddMonths(1).InUSDateFormat )*>)*> since the date needs to be converted from the user format to the US format when the AssignValue tag is used. If the user's date format is set to anything other than the US format, and the <CTX( Date.AddMonths(1) )> is used, the date value will be assigned incorrectly.

Tag	Description	Result


<*assignpc(attribute name:value)*>

	

Parameters: attributes with their prices to be assigned, separated by a colon. More than one attribute/price pair can be entered. Every pair is separated from other pairs by a comma.

	

The same as previous, except that it assigns “standard attribute value” to the Price field of the “standard attribute name”.




<*AssignPrice(attribute name:value)*>

	

Parameters: attributes with their prices to be assigned, separated by a colon. More than one attribute/price pair can be entered. Every pair is separated from other pairs by a comma.

Following attributes are supported for AssignPrice tag:

Free Form

Config Control

File Attachment

Button

Hidden Calculated

	

The same as previous, except that it assigns “standard attribute value” to the Price field of the “standard attribute name”.




<*disallowatv(standard attribute name:standard attribute value)*>

	

Parameters: attributes with their values, separated by a colon. More than one attribute/value pair can be entered. Every pair is separated from other pairs by a comma.

	

Disallows every specified value in every attribute in the list.




<*DisallowValues(standard attribute name:standard attribute value)*>

	

Parameters: attributes with their values, separated by colon. More than one attribute/value pair can be entered. Every pair is separated from other pairs by a comma.

	

Disallows every specified value in every attribute in the list.




<*disallowatt(standard attribute name)*>

	

Parameters: attribute names. More than one Attribute can be entered. Each separated from other by a comma.

	

If condition is TRUE, all listed attributes are disallowed. If condition, during some of the following steps become FALSE, the attributes are NOT re-allowed. Here, it's recommended to create complementary rules: for every rule made as condition - > disallowatt(attribute_list) create another as [not]condition - > allowatt(attribute_list). Additionally, make sure that every complementary Rule has its rank higher than the rank of the primary rule.




<*DisallowAttributes(standard attribute name)*>

	

Parameters: attribute names. More than one attribute can be entered. Each separated from other by a comma.

	

If condition is TRUE, all listed attributes are disallowed. If condition, during some of the following steps become FALSE, the attributes are NOT re-allowed. Recommended here is to create complementary Rules: for every Rule made as condition - > DisallowAttributes(attribute_list) create another as [not]condition - > AllowAttributes(attribute_list). Additionally, make sure that every complementary rule has its rank higher than the rank of the primary rule.




<*DisallowAllValuesExcept(Attribute_Name : Value1, Attribute_Name : Value2, ..)*>

	

Parameters: attributes with their values, separated by colon. More than one attribute/value pair can be entered. Every pair is separated from other pairs by a comma.

	

Sets all attribute values to not allowed, except for the listed values. This may be used when there is a large number of attribute values, but only a couple of them needs to be allowed.




<*resetatt(standard attribute name)*>

	

Parameters: attribute names. More than one Attribute can be entered. Each is separated from other by a comma.

	

Resets every value of every listed attribute.




<*resetatv(standard attribute name:standard attribute value)*>

	

Parameters: attributes with their values, separated by colon. More than one attribute/value pair can be entered. Every pair is separated from other pairs by a comma.

	

Resets every listed attribute value.




<* SELATV (attribute1: value1 I value2 I value3, attribute2: value 1)*>

	

Selects attribute values. By default the system resets the attribute when a selection is made with SELATV. With the use of <*DONOTRESETATT*> and <*DORESETATT*> (see description below) more than one attribute value will be selected without the other values being unselected.

	

Attribute values included in tag will be selected.




<* SelectValues (attribute1: value1 I value2 I value3, attribute2: value 1)*>

	

Selects attribute values. By default the system resets the attribute when a selection is made with SelectValue. With the use of <*DONOTRESETATT*> and <*DORESETATT*> (see description below) more than one attribute value will be selected without the other values being unselected.

	

Attribute values included in tag will be selected.




<* SelectValue (attribute1: value1,attribute1:value2 ,attribute1:value3)*>

	

Selects attribute values. By default the system resets the attribute when a selection is made with SelectValue. With the use of <*DONOTRESETATT*> and <*DORESETATT*> (see description below) more than one attribute value will be selected without the other values being unselected.

	

Attribute values included in tag will be selected.




<*ResetValue(standard attribute name:standard attribute value)*>

	

Parameters: attributes with their values, separated by colon. More than one attribute/value pair can be entered. Every pair is separated from other pairs by a comma.

	

Resets every listed attribute value.




<*DONOTRESETATT*>

	

Tells the system not to reset the attribute values when another selection is made. By default the system resets the attribute when a selection is made with SELATV. Use in conjunction with <*DORESETATT*> (see description below)

	

Switches the system to not reset attributes when SELATV tag is used.




<*DORESETATT*>

	

Tells system to reset attribute values when another selection is made. Generally this is used after the <*DONOTRESETATT*> tag in the same expression. For example: <*DONOTRESETATT*><*SELATV(attr1:value1)*><*DORESETATT*>

	

Switches the system to reset attributes when the SELATV tag is used.




<* ResetAttribute(standard attribute name) *>

	

Parameters: attribute names. More than one attribute can be entered. Each is separated from other by a comma.

	

Resets every value of every listed attribute.




<*DONOTREVERSERULES*>

	

Tells the system not to reverse a rule when the rule becomes not true. By default the system will reverse a rule when the condition is no longer true. Use <*DONOTREVERSERULES*> to turn this function off.

	

Switches the system to not reverse rules when the condition is no longer true.




<*REVERSERULES*>

	

Tells the system to reverse the rule when the rule becomes not true. Generally this is used after the <*DONOTREVERSERULES*> tag in the same expression. For example:<*DONOTREVERSERULES*><*DISALLOWATT(attr1)*><* REVERSERULES*>

	

Switches the system to reverse rules when the condition is no longer true.




<*SETREQUIRED(AttName)*>

	

Sets an attribute to be required. Useful when attributes only need to be required under certain conditions. When it is used, another rule needs to be created to set the same attribute as optional under the reverse conditions.

	

Sets the specified attribute as required.




<*SETOPTIONAL(AttName)*>

	

Sets an attribute to be optional. Generally used in conjunction with <*SETREQUIRED()*> as a separate rule.

	

Sets the specified attribute as required.

Yes
No