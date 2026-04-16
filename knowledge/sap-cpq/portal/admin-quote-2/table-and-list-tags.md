# Table and List Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/f119846f098747c0a5afca3f0b6b4578.html?locale=en-US&state=PRODUCTION&version=2603
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
Table and List Tags

The <* TABLE (…) *> and <* LIST (…) *> tags are used to fetch data from data tables uploaded by customers. Users can use SQL aggregate functions: MIN, MAX, AVG, SUM, COUNT, as well as match upper and match lower. You can also retrieve records greater than some entered value.

Note

The only difference between the table tag and the list tag is that the table tag retrieves data from a table cell while the list tag retrieves data from an entire column. For example, if you are retrieving names of customer whose country/region of origin is Spain, the list tag will retrieve all matching names, and the table tag will retrieve just the first name whose country/region of origin is Spain.

Additionally, both tags retrieve all types of data (dates, numbers, strings, and so on).

The descriptions and explanations on this and the following pages apply to both the list tag and the table tag.

Supported Functions for TABLE and LIST Tags
The TABLE and the LIST tags support the following functions:

EXACT

A default function. It returns anything that is selected, without any data filtering. It's similar to the AUX tag behavior - the difference is that AUX must use the = operator for conditions. The typical TABLE tag based on the EXACT function looks like this:

<* TABLE (SELECT price FROM priceBook WHERE productId = 5 ) *>

The EXACT function reveals a classic SQL Select statement. If the statement returns more than one record from the database, only the first one returned is the result of the <* TABLE(…) *> tag. If you need the last one, you can change sorting direction. Since there’s no guarantee on order SQL server return records, if you don't use sorting, it's best to prepare data and use queries in such way that they return unique records.

MIN

A function that returns minimal value from all the results that are meeting the given criteria. The typical TABLE tag based on MIN function looks like this:

<* TABLE (SELECT MIN (price) FROM priceBook WHERE productId = 5 ) *>

The MIN function returns one record, the minimal one among all the records that satisfy given conditions.

MAX

A function that returns maximal value from all the results that are meeting the given criteria. The typical TABLE tag based on MAX function looks like this:

<* TABLE (SELECT MAX (price) FROM priceBook WHERE productId = 5 ) *>

The MAX function returns one record, the greatest one among all the records that satisfy the given conditions.

COUNT

A function that counts all records that meet the given conditions. The typical TABLE tag based on the COUNT function looks like this:

<* TABLE (SELECT COUNT (price) FROM priceBook WHERE productId = 5 ) *>

The COUNT function returns one record.

AVERAGE

A function that selects all records that meet the given conditions, and then calculates average value from the results. The typical TABLE tag based on AVERAGE function looks like this:

<* TABLE (SELECT AVG (price) FROM priceBook WHERE productId = 5 ) *>

The AVERAGE function returns one record.

The returned results can be sorted Ascending, Descending, or not sorted at all. Only the column that contains results can be sorted. When match upper or match lower condition operator is used, sorting is first performed by the column that is used in condition, and then by resulting column.



Construct Table and List Tags

Table and list tag builders are invoked from the Formula Builder.
Table and List Tag Conditions

The <* TABLE(…) *> tag and the LIST tag support adding multiple conditions to your data query. The typical condition is defined by the name of the column being tested, and by the matching criteria.
Table and List Tag Operators

Operators are words or characters typically used in SQL statements as conjunctions for several conditions.
SETLISTSEPARATOR Tag

SETLISTSEPARATOR tag is used for setting the desired separator between the values retrieved via the list tag.
Yes
No