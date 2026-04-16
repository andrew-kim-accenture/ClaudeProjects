# Table and List Tag Conditions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/04cab41dc4c745dcbfc6b087d552611c.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Main Item Price Tag
	
XWS Tag
	
Global Information (GI) Variables
	
Formula Validator


	
CTX Syntax Builder
	
Table and List Tags


	
Construct Table and List Tags
	
Table and List Tag Conditions
	
Table and List Tag Operators
	
SETLISTSEPARATOR Tag
Table and List Tag Conditions

The <* TABLE(…) *> tag and the LIST tag support adding multiple conditions to your data query. The typical condition is defined by the name of the column being tested, and by the matching criteria.

Note

Everything described here is applicable for the LIST tag as well, but we’ll use the TABLE tag as an example.

The typical example is: “give me price of the product that has a catalog code ABC”. Price is defined in one column, and every price has its catalog code in the catalog_code column. So, our criteria instructs that catalog_code is ABC. Use the following query in SQL:

SELECT price FROM table WHERE catalog_code='abc'

Now, we can use multiple conditions. For example, if quantity affects the price, we need to treat the quantity column in the same table. The SQL now looks like this:

SELECT price FROM table WHERE catalog_code='abc' AND quantity>5

In this way, we can add as many conditions as we like. They’re all concatenated with AND operator, meaning that all the conditions must be met in order to fetch the data.

Related Information
Table and List Tag Operators
SETLISTSEPARATOR Tag
Construct Table and List Tags
Yes
No