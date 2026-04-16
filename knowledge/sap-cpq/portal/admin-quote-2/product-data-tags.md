# Product Data Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/43dfbd51aede46d784452609fbcd5715.html?locale=en-US&state=PRODUCTION&version=2603
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
Product Data Tags
Tag	Description	Type Returned	Example


<*ProductCode*>

	

Gives the part number of the current configuration

	

String/Number Depends on what the part number contains

	

<* ProductCode *>: returns the current part number from whichever product the tag is used in.




<*ProductName*>

	

Gives the product’s name

	

String

	

<* ProductName *> - returns the product name of the product the tag is used in.




<*ProductDescription*>

	

Gives the product description entered in the Product Definition

	

String

	

<* ProductDescription *> - returns text in the Product Description field.




<*LongProductDescription*>

	

Gives the long product description entered in the Product Definition.

	

String

	

<* LongProductDescription *> - returns text in the Long Product Description field.




<*ProductLink*>

	

Gives the link or URL from the product link field

	

String

	

<* ProductLink *> - returns the text from the Product Link field.




<*ProductImage*>

	

Gives the product image file name used for a product

	

String

	

<* ProductImage *> - returns the file name used for the product image for the product the tag is used in.




<*LargeProductImage*>

	

Gives the large product image file name used for a product

	

String

	

<* LargeProductImage *> - returns the file name used for the large product image for a product.




<*PRODUCTINFO(product type)*>

	

Gives defined product type name. This can be used when defining specifics correlated with product type using Custom Tables.

	

String

	

<* PRODUCTINFO(ProductType_CD) *> - returns CD from the system




<*PRODUCTDEFINED*>

	

Gives whether configuration is complete on a product or not.

	

True/False

	

[IF](<* ProductDefined *>) {<*SELATV(Status:Active)*>}{}[ENDIF] – sets the Status attribute to Active when the product has a complete configuration




<*Price(*)*>

	

Gives the sum of all prices for all currently selected attributes but doesn’t include base price. This would be different than TotalPrice if there is a base price and/or if TotalPrice is calculated using Product Price building sequence.

	

Number

	

<* Price(*) *> - returns the prices of all selected attributes without adding in the base price of the product.




<*TotalPrice*>

	

Gives the price of the current configuration. This includes items designated as separate line items. Calculations using Product Price building sequence may produce a different value.

	

Number

	

<* TotalPrice *> - returns the total price of the product configuration.




<*BasePrice*>

	

Gives the base price of the product. This is the amount entered in the product price field.

	

Number

	

<* BasePrice *> - returns the base price of the product the tag is used in.




<*TotalPriceWoLi*>

	

Gives the total product price of the configuration excluding prices of attributes that are designated as line items.

	

Number

	

<* TotalPriceWoLi *> - returns the price of the configuration without adding any line item prices.




<*ITEMCODE*>

	

Returns part number of the current cart item while calculating discount rules and aggregates. In all other cases it returns empty string. It should be used for aggregates and discounts only.

	

String

	 


<*TotalCost*>

	

Gives the cost of the current configuration. This includes the cost of all selected attributes.

	

Number

	

<* TotalCost*> - returns the total cost of the product configuration.

Yes
No