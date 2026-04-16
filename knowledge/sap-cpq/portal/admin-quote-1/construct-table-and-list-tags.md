# Construct Table and List Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/8c43fbbeefa04169902da08d73a71bb3.html?locale=en-US&state=PRODUCTION&version=2603
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
Construct Table and List Tags

Table and list tag builders are invoked from the Formula Builder.

On the list of tags, there’s a TABLE tag listed. When it’s selected, a Construct TABLE tag button appears. This button is visible only when the TABLE tag is selected in the list of tags.

Note

Everything described here is applicable for the LIST tag as well, but we’ll use the TABLE tag as an example.

Clicking Construct TABLE tag opens the Table Tag Builder window.

In Table Tag Builder, you first need to select a table from which you’re fetching the data. It's the dropdown labeled From Table. Next to the dropdown is the Preview Table Data button, which enables you to preview the first 25 rows of your uploaded table. It's meant to allow administrators to construct TABLE tags by showing them data sample of the selected table.

The table shows only first 25 records. It's meant to preview table structure rather than check table data. Since custom tables can be huge, it's not recommended to fetch large amounts of data since it tends to result in timeouts and stress to server.

After selecting the table, you need to select a function that returns data. The dropdown list you need is labeled Return. The default is EXACT function. Afterwards, you need to choose a column from which you wish to fetch the data from the From Column dropdown list.

The data can be sorted by that column, but it's optional. If you like, you can choose the sorting type to be ascending, descending, or to leave it as None, which is a default option. If you want sorting to be precise, you need to define the data type in that column (numbers, text, or dates). The data type needs to be set correctly, or else you can get incorrect sorting. For example, f you sort numbers as if they were text, the output is: 1, 10, 2, 3, 4, 5,…

When you define the column you wish to use, you need to set the conditions on that column, in order to fetch only the rows that you need. You can add as many conditions as you wish. New conditions are added by clicking on Add New Condition link under the previous condition. Another set of fields that you need to populate is added and, in this way, another condition is defined. A typical condition is built by selecting a column name from the source table, choosing an operator used for data comparison, and, finally, defining a reference value. For example, if you wish to get all records where part number is abcd, the reference value can be a constant – abcd, or it can be a dynamic formula, like <* CATCODE(attribute) *>.

You have a Syntax Builder button there, so you can easily construct formulas for your conditions. Every condition has a Column Type. It’s necessary because the SQL that fetches your data is different depending on whether the comparison is done with numeric values, text values, or date values. If an error message displays when you test the formula, recheck your column types. There’s a possibility that you’re fetching a column whose values can’t be converted to the data type you wish. For example, you can't convert abc to the numeric type, but you can enter numbers that correspond to that string.

After defining the data and the conditions, you can click Build Formula link, and you can preview the resulting TABLE tag constructed. The area that displays your generated TABLE tag is editable, so you can alter the SQL yourself. However, if you alter SQL manually, and then click Build Formula again, your complete formula is lost and replaced by newly generated TABLE tag formula, based on what you selected from dropdown lists. Thus, make sure that you alter SQL manually only once you've defined it enough with the Table Tag Builder. You can use the Test Formula link when you finish editing the TABLE tag. When you click on it, your SQL is executed and you’re presented with the data it returned. If you had an error in your SQL, it doesn't return any data. Instead, an error message displays, giving you a clue what you did wrong.

While testingTABLE tags, if you used any formulas in your conditions, you must replace them temporarily with values you expect formulas to evaluate to. For example, if you had a condition that contains “product_color = ';#;<* CATCODE(selected_color_attribute) *>;#;'”, you must alter your condition to state: -“product_color = 'blue'“. This alteration is necessary, since the CATCODE formula (and all other formulas) is context-dependent, and can't be parsed in the Table Tag Builder. In the sample above, it simply doesn’t know about the “selected_color_attribute” attribute, so it can't return its catalog code. Once you're satisfied with the results, you can click on Use This Formula button, and your TABLE tag is checked for errors. If it's OK, it's transferred to the Syntax Checker that invoked the Table Tag Builder.

Related Information
Table and List Tag Conditions
Table and List Tag Operators
SETLISTSEPARATOR Tag
Yes
No