# XWS Tag | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/6618adbae4e54e40aa9a1150eb89728e.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Quote Tags
	
Tags for Rules and Triggers
	
Main Item Price Tag
	
XWS Tag
	
Formula Validator
XWS Tag

XWS tag may have one or more parameters. First parameter is function name. Other parameters are optional and represent parameters passed to the specified function. Other than that, it supports several standard functions it’s a gateway from Configurator to external resources like web services from another systems.

The standard XWS functions are:

Candy - <*XWS(Candy)*> Always returns the same constant. Parameters - none. Returns - 100.

GetProductPrice - <*XWS(GetProductPrice, ProductName)*> applies current product configuration to the specified product and returns its price. Parameters - ProductName – a name of the product that’s price is queried. Returns - Price of the specified product after current configuration has been applied to it.

GetProductCatCode - <*XWS(GetProductCatCode, ProductName)*> applies current product configuration to the specified product and returns its catalogue code. Parameters - ProductName – a name of the product that’s catalog code is queried. Returns - Catalog code of the specified product after current configuration has been applied to it.

GetProductDescription <*XWS(GetProductDescription, ProductName)*> applies current product configuration to the specified product and returns its description. Parameters - ProductName – a name of the product that’s description is queried. Returns - Description of the specified product after current configuration has been applied to it.

Iterate - <*XWS(Iterate, Data, Formula)*> applies formula expression from the hint of the Formula attribute to each part of the comma-separated values (CSV) in the value of the Data attribute and returns sum of all evaluations. Parameters - Data – name of the attribute that in its value contains the data that needs to be iterated - Formula – name of the attribute that in its hint contains the formula that needs to be evaluated on each CSV value from Data attribute. Formula may contain all standard tags and new special tag {{CurrentValue}} that will be replaced by the current iteration value. Returns - Sum of all evaluated formulas

Example


<*XWS(Iterate, Data, Formula)*> Value of attribute Data is 1,2,3,4,5 Hint of attribute Formula is {{CurrentValue}} Will return 15 Sum = 0 Iteration 1 - Sum = Sum + 1 = 0 + 1 = 1 Iteration 2 - Sum = Sum + 2 = 1 + 2 = 3 Iteration 3 - Sum = Sum + 3 = 3 + 3 = 6 Iteration 4 - Sum = Sum + 4 = 6 + 4 = 10 Iteration 5 - Sum = Sum + 5 = 10 + 5 = 15



<*XWS(Iterate, Data, Formula)*> Value of attribute Data is 1,2,3,4,5 Hint of attribute Formula is <*eval({{CurrentValue}}+1)*> Will return 20 Sum = 0 Iteration 1 - Sum = Sum + <*eval(1+1)*> = 0 + 2 = 2 Iteration 2 - Sum = Sum + <*eval(2+1)*> = 2 + 3 = 5 Iteration 3 - Sum = Sum + <*eval(3+1)*> = 5 + 4 = 9 Iteration 4 - Sum = Sum + <*eval(4+1)*> = 9 + 5 = 14 Iteration 5 - Sum = Sum + <*eval(5+1)*> = 14 + 6 = 20



<*XWS(Iterate, Data, Formula)*> Value of attribute Data is 09/01/2008,09/03/2008,09/08/2008 Hint of attribute Formula is <*Table(select top 1 Price from Table where StartDate⇐‘{{CurrentValue}}’ and EndDate>=‘{{CurrentValue}}’)*> Will return sum of prices for selected dates in Data attribute.

Yes
No