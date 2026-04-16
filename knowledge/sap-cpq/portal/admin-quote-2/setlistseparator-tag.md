# SETLISTSEPARATOR Tag | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/cb33586c8cc3411e9e100755f93bf79d.html?locale=en-US&state=PRODUCTION&version=2603
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
SETLISTSEPARATOR Tag

SETLISTSEPARATOR tag is used for setting the desired separator between the values retrieved via the list tag.

<*SETLISTSEPARATORTAG(…)*> tag should always be used in pair: the first tag sets the desired separator, and the second tag resets to the default separator “|”.

This tag separates all types of data contained in a table (numbers, dates, characters, strings, and so on).

Example
The list tag <* LIST ( SELECT Name FROM Customer_Address WHERE Country = 'Spain' ORDER BY Name ASC ) *> retrieves the list of names from the custom table Customer_Address when the country/region equals Spain, and sorts the names in ascending order.
Note

The SetListSeparator() tag is not supported for creating email lists within the Email Settings in SAP CPQ Setup. If this tag is included in a formula, it will not have any impact, and emails will not be sent to the intended email list.

The results are retrived and displayed as in the image:

To change the default separator in the list in this example, add the SETLISTSEPARATOR tag: <*SETLISTSEPARATOR(;)*> <* LIST ( SELECT Name FROM Customer_Address WHERE Country = 'Spain' ORDER BY Name ASC ) *> <*SETLISTSEPARATOR(“|”)*>.

The results are retrieved and displayed as in the image:

Related Information
Construct Table and List Tags
Table and List Tag Conditions
Table and List Tag Operators
On this page
Example
Related Information
Yes
No