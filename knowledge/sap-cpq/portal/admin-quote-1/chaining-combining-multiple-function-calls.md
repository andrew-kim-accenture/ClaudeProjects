# Chaining - Combining Multiple Function Calls | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/862c122617fc495499ac841b9f0a745f.html#example3:
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
Chaining - Combining Multiple Function Calls

Functions sortByProperty and filterByProperty return new observable array and they can be combined with other functions.

Example1:

We can sort the array by value of label and then get the name of the first required member of sorted array.



<!-- ko if: customFields.sortByProperty('label').first(function(item){ return item.isRequired === true;}) !== null -->   
  <span data-bind ="text: customFields.sortByProperty('label').first(function(item){ return item.isRequired === true;}).name"></span>
<!-- /ko -->

Example2:

We can filter the array by value of editable and then check if all editable fields are required.



<h3>Are all editable fields required?</h3> 
<span data-bind ="text: customFields.filterByProperty('editable', true).all(function(item){ return item.isRequired === true;})"></span>


Example3:

We can filter the array by value of editable and then check if any editable field is required.



<h3>Is any editable field required?</h3>
<span data-bind ="text: customFields.filterByProperty('editable', true).anyWithProperty('isRequired', true)"></span>


On this page
Example1:
Example2:
Example3:
Yes
No