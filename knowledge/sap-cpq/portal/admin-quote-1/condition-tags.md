# Condition Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/6c71abdd256a4ce7a6f7c16164c5bfd9.html?locale=en-US&state=PRODUCTION&version=2603
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
Condition Tags
Tag	Description	Result


<*anysel(standard attribute name:standard attribute value)*>

	

Parameters: attributes with their values, separated by a colon. More than one attribute/value pair can be entered. Every pair is separated from other pairs by a comma.

This tag can be used in formula rules, but it can't be used in the Formula Validator in the Configurator.

	

If any value from the entered list is selected the result is TRUE, otherwise it’s FALSE.




<*IfAnyValue(standard attribute name:standard attribute value)*>

	

Parameters: attributes with their values, separated by a colon. More than one attribute/value pair can be entered. Every pair is separated from other pairs by a comma. This tag should be used for product rules only.

This tag can be used in formula rules, but it can't be used in the Formula Validator in the Configurator.

	

If any value from the entered list is selected the result is TRUE, otherwise it’s FALSE.




<*anyselatt(standard attribute name)*>

	

Parameters: attribute names. More than one attribute can be selected. Separate them by commas.

This tag can be used in formula rules, but it can't be used in the Formula Validator in the Configurator.

	

If any value from the specified attributes is selected the result is TRUE, otherwise it’s FALSE.




<*IfAnyAttribute(standard attribute name)*>

	

Parameters: attribute names. More than one attribute can be selected. Separate them by commas.

This tag can be used in formula rules, but it can't be used in the Formula Validator in the Configurator.

	

If any value from the specified attributes is selected the result is TRUE, otherwise it’s FALSE.




<*allsel(standard attribute name:standard attribute value)*>

	

Parameters: attributes with their values, separated by a colon. More than one attribute/value pair can be entered. Every pair is separated from other pairs by a comma.

This tag can be used in formula rules, but it can't be used in the Formula Validator in the Configurator.

	

If all of the specified values are selected the result is TRUE, otherwise it’s FALSE.




<*IfAllValues(standard attribute name:standard attribute value)*>

	

Parameters: attributes with their values, separated by a colon. More than one attribute/value pair can be entered. Every pair is separated from other pairs by a comma.

This tag can be used in formula rules, but it can't be used in the Formula Validator in the Configurator.

	

If all of the specified values are selected the result is TRUE, otherwise it’s FALSE.




<*allselatt(standard attribute name)*>

	

Parameters: attribute names. More than one Attribute can be entered. Each separated from the other a comma.

This tag can be used in formula rules, but it can't be used in the Formula Validator in the Configurator.

	

If every specified attribute has its selection the result is TRUE, otherwise it’s FALSE.




<*IfAllAttributes(standard attribute name)*>

	

Parameters: attribute names. More than one attribute can be entered. Each separated from the other a comma.

This tag can be used in formula rules, but it can't be used in the Formula Validator in the Configurator.

	

If every specified attribute has its selection the result is TRUE, otherwise it’s FALSE.




<*IsNull(check_expression,replacement_value ) *>

	

Parameters: check_expression is the expression to be checked for NULL. check_expression can be of any type. replacement_value is the expression to be returned if check_expression is NULL. replacement_value must be of a type that is implicitly convertible to the type of check_expression.

	

The value of check_expression is returned if it is not NULL; otherwise, replacement_value is returned after it’s implicitly converted to the type of check_expression, if the types are different.

Yes
No