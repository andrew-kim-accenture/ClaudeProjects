# Table and List Tag Operators | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/3bd5c9d96237457da455664d0a17a051.html?locale=en-US&state=PRODUCTION&version=2603
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


	
CTX Syntax Builder
	
Table and List Tags


	
Construct Table and List Tags
	
Table and List Tag Conditions
	
Table and List Tag Operators
	
SETLISTSEPARATOR Tag
Table and List Tag Operators

Operators are words or characters typically used in SQL statements as conjunctions for several conditions.

Note

Everything described here is applicable for the LIST tag as well, but we’ll use the TABLE tag as an example.

Depending on data types you expect in a condition column, not all condition operators are available. The supported operators are:

Operators	Data Types


=

	

Text; number; Date




>

	

Number; Date




<

	

Number; Date




>=

	

Number; Date




⇐

	

Number; Date




begins with

	

Text




ends with

	

Text




matches

	

LIKE clause in SQL (for strings); Text




match lower (inclusive)

	

Number; Date




match lower (noninclusive)

	

Number; Date




match upper (inclusive)

	

Number; Date




match lower (noninclusive)

	

Number; Date

begins with

This operator is typically used to search string columns. It’s used to search if there’s data in a column that begins with string provided as a parameter. This only works on text column types. It’s translated to the SQL LIKE clause, with % at the end - searching for strings that begin with preset parameter and can end with anything.

Example

SELECT price FROM products WHERE product_name like 'ab%'

ends with

This operator is typically used to search string columns. It’s used to search if there’s data in a column that ends with string provided as a parameter. This only works on text column types. It’s translated to the SQL LIKE clause, with % at the beginning – searching for strings that end with preset parameter and can begin with anything.
Example

SELECT price FROM products WHERE product_name like '%ab'

matches

This operator is typically used to search string columns. It’s used to search if there’s data in a column that contains string provided as a parameter. This only work on text column types. It’s translated to the SQL LIKE clause, with % at the beginning and with % on the end – searching for strings that begin with anything and end with anything, but must contain provided string.
Example

SELECT price FROM products WHERE product_name like '%ab%'

match lower

This only works on numeric and date column types. This operator is typically used for doing some sort of rounding of the input parameter in condition.
Example

There's a table that contains prices for products. It typically has 3 columns: product_catalog_code, order_quantity, and price. For a given product, price varies depending on quantity. However, in the prices table, there are prices defined for quantities 1, 5, 10, 50. So, since there isn't “7” as a value for quantity in prices table, you need to set up a condition that uses the nearest lower value for the quantity column. In this case, select column order_quantity and the match lower operator. Enter a formula that reads quantity attribute. (that is the source of “7” in the previous example). If you click the Rebuild button, you get SQL that looks like: SELECT TOP 1 price FROM table WHERE quantity<7 ORDER BY quantity DESC. This way you have set up the condition to form a price based on quantity. You still need additional condition that identifies the product by part number (that condition uses the typical = operator). When this condition is added, you have a complete query:

SELECT TOP 1 price FROM table WHERE quantity<7 AND product_catalog_code='abc' ORDER BY quantity DESC

The query finally fetches the price for a given catalog code and quantity “5”. (first one less than the input value - 7).

match upper

This only works on numeric and date column types. This operator is similar to match lower. The only difference is that it gets the first record that has greater value than the given reference. If you use the example for match lower as reference, match upper selects the row with quantity value of 10 (the first one greater than 7).
Example

SELECT TOP 1 price FROM table WHERE quantity>7 ORDER BY quantity ASC

Inclusive and noninclusive options define if you use < operator or < = operator. The choice between these options depends on whether you wish the formula to include a boundary from a condition, or not.

Related Information
SETLISTSEPARATOR Tag1.0
Table and List Tag Conditions
Construct Table and List Tags
Yes
No