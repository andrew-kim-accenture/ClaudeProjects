# first/firstWithProperty | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/b53f55de599840cc8ec37f53e8c954fe.html#example3:
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


	Setup Help

	
Branding
	
Catalog Layout
	
Quote Layout
	
Responsive Templates


	
Responsive Template Customization in Setup
	
Responsive Design Customizations


	
Prerequisites
	
Knockout Extension Functions


	
filterByProperty function
	
sortByProperty Function
	
count/countWithProperty Function
	
all/allWithProperty
	
any/anyWithProperty
	
indexOf
	
lastIndexOf/lastIndexOfWithProperty
	
first/firstWithProperty
	
last/lastWithProperty
	
Chaining - Combining Multiple Function Calls
	
Customization Examples
	
Advanced Customization Examples
	
Server Side Rendering
	
Manage Custom CSS/JS Files with File Manager
	
Upgrade Templates to Newer Versions with Newer Releases
	
Template Versions
	
Freeze Templates
	
Obsolete Features
	
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
first/firstWithProperty

Function returns the first element of passed array that matches predicate function condition.

The arguments are predicate function, which is mandatory, and default value, which is optional parameter. If there is no array member that matches predicate function condition, default value will be returned. If default value is not defined null will be returned.

Syntax:



array.first(predicateFunction, [defaultValue])

Similar to the previous function, firstWithProperty returns the first element of passed array that has value of property matched with passed appropriate values. First argument is the name of property and other arguments are appropriate values and there is no limit of number of passed values.

Syntax:



array.firstWithProperty ('propertyName', value1, value2, …, valueN)

This function will return first element of passed array that has value of property “propertyName” equal to value1, or value2, …, or valueN.

Example1:

We want to show label of the first required custom field (without default value).

Create new template.

Add this part to existing template:



<h3>First required field</h3>
<!-- ko if: customFields.first(function(item){ return item.isRequired === true;}) !== null -->
  <span data-bind ="text: customFields.first(function(item){ return item.isRequired === true;}).label"></span>
<!-- /ko -->

Example2:

We want to show label of the first required custom field, if there is no required fields show No required fields. (with default value)

We will create dummy default value with label No required fields.

Create new template.

Add this part to existing template:


<h3>First required field</h3>
<span data-bind ="text: customFields.first(function(item){ return item.isRequired === 'not existing';}, {label: 'No required fields'}).label"></span>

Example3:

We want to show label of the first custom field with id 23 or 5 or 19 or 91.

Create new template.

Add this part to existing template:



<h3>First field from the set with id 23 or 5 or 19 or 91 </h3>
<!-- ko if: customFields.firstWithProperty('id', 23, 5, 19, 91) !== null-->
    <span data-bind ="text: customFields.firstWithProperty('id', 23, 5, 19, 91).label"></span>
<!-- /ko -->

On this page
Example1:
Example2:
Example3:
Yes
No