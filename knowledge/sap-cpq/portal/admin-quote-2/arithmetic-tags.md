# Arithmetic Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/f82d3aa4cc50480d8c625026b16527a7.html?locale=en-US&state=PRODUCTION&version=2603
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
Arithmetic Tags
Tag	Description	Type Returned	Example


<*EVAL(math expression)*>

	

Evaluates a math expression. The expression can contain operators and conditions that need to be evaluated. This tag initiates the VBScript engine, so all VBScript functions can be used. See Appendix A for more information.

	

Result of evaluation

	

<* EVAL( [IF](<* IsSelected(Operating System.Linux 10) *>){<* Price(Operating System) *> * 0.10}{<* Price(Operating System) *> * 0.05}[ENDIF] ) *> - if Linux 10 is selected from the attribute Operating System then multiply the price of the selected attribute value in the Operating System attribute by 0.10, otherwise multiply it by 0.05. The EVAL tag evaluates the entire expression and returns the result.




<*Round (value, decimal places)*>

	

Rounds a value. The number of decimal places can be specified; otherwise the value is rounded to the whole number.

	

Number

	

<* Round(<*EVAL(13/2)*>)*> - returns 6 <* Round(<*EVAL(13/2)*>,2)*> - returns 6.5 <* Round( <*EVAL(<*Price(Maint)*>/ <*Value(Months))*>*>) *> - returns the quotient of the Maint price divided by the value of the Months attribute.

Yes
No