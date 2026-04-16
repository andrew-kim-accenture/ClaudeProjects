# External Source Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/5286cfcbe88544a1911ee2575e4b8bda.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Arithmetic Tags
	
Attribute Data Tags
	
External Source Tags
	
Logged in User Data Tags
	
Product Data Tags
	
Sequence Tags
	
Quote Tags
	
Tags for Rules and Triggers
	
Main Item Price Tag
	
XWS Tag
	
Global Information (GI) Variables
	
Formula Validator
External Source Tags
Tag	Description	Type Retuned	Example


<*XValue(Subproduct/Attribute)*>

	

This is used for product hierarchy (nested products). It allows you to access the attributes of the nested or parent product. The subproduct part of the tag will be the attribute in the parent product that is referencing the child/nested product. If using this tag from the child product then the subproduct part of the tag will be replaced with ../

	

String/Number Depends on what the part number contains

	

<*XValue(Nested Printer/Toner)*> - returns the selected value of Toner attribute in the child attribute Printer. The attribute referencing Printer is called Nested Printer.




<*XWS(getProductPrice,NestedProductName)*>

	

Retrieves the total price of the nested product.

	

Number

	

<*XWS(getProductPrice,Nested Printer)*> - returns the total price of the Nested Printer product.




<*XWS(getProductDescription,NestedProductName)*>

	

Retrieves the product description of the nested product.

	

String

	

<*XWS(getProductDescription,Nested Printer)*> - returns the product description of the Nested Printer product.




<*XWS(getProductCatCode,NestedProductName)*>

	

Retrieves the product catalog code of the nested product.

	

String/Number

	

<*XWS(getProductCatCode,Nested Printer)*> - returns the product cat code of the Nested Printer product.

Yes
No