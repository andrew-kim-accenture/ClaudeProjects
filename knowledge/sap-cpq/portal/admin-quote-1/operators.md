# Operators | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/1e322d59a2344c1e93d1e5915b682b21.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Operators
	
Tags and Expressions
	
CTX Tags
	
Product Tags
	
Quote Tags
	
Tags for Rules and Triggers
	
Main Item Price Tag
	
XWS Tag
	
Global Information (GI) Variables
	
Formula Validator
Operators

Here are some examples of using operators in conditional statements for CPQ tags:

Example

AND operator:

[IF]([AND]([GEQ](<*CTX( Quote.Total.Cost.DefaultDisplay )*>, 100),
[LIKE](<*CTX(Quote.Status.Name)*>, Open))){The total cost of the quote 
with the status "open" is greater than or equal to 100.}{The quote is 
either not open or the total cost is less than 100.}[ENDIF]

OR operator:

[IF]([OR]([LEQ](<*CTX(Quote.CountOfAllItems)*>, 10), 
[EQ](<*CTX(Quote.Total.NetPrice.DefaultDisplay)*>, 100))){There are fewer 
than 10 items in the quote or the total net price of the quote is equal to 100.}
{Neither condition is true.}[ENDIF]
Operator	Description	Syntax


[AND]

	

Joins multiple conditions. When used, all conditions must be true for expression if true section to be performed.

	

[AND](condition 1,condition 2,condition 3)




[OR]

	

Joins multiple conditions. When used, at least one condition must be true for expression if true section to be performed.

	

[OR](condition 1,condition 2,condition 3)




[LT]

	

Equivalent to the ”<” operator, this returns whether one value is less than another value.

	

[LT](value 1,value 2)




[GT]

	

Equivalent to the ”>” operator, this returns whether one value is greater than another value.

	

[GT](value 1,value 2)




[GEQ]

	

Equivalent to ”>=”, this returns whether one value is greater than or equal to another value.

	

[GEQ](value 1,value 2)




[LEQ]

	

Equivalent to ”⇐”, this returns whether one value is less than or equal to another value.

	

[LEQ](value 1,value 2)




[INR]

	

Returns whether a value is between a bottom value and a top value. If the value equals the bottom or top value, then true will be returned.

	

[INR](value, bottom value,top value)




[IN]

	

Returns whether a value equals a value in a list of values.

	

[IN](value, value 1,value 2,value 3,…)




[LIKE]

	

Returns 1 if the second value is contained in the first value.

	

[LIKE](value 1, value 2)




[BEGW]

	

Returns 1 if the first value begins with the second value.

	

[BEGW](value 1, value 2)

Yes
No