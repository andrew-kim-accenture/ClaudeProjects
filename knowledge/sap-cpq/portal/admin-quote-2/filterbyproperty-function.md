# filterByProperty function | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/86bae5905dc54ac8963a0bd309fe9130.html?locale=en-US&state=PRODUCTION&version=2603
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


	Setup Help

	
Branding
	
Catalog Layout
	
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
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
filterByProperty function

Function filterByProperty returns a filtered observable array with members that have value of property matched with passed appropriate values.

First argument is the name of property and other arguments are appropriate values and there is no limit of number of passed values.

Context:



array.filterByProperty ('propertyName', value1, value2, …, valueN)

This function will return all members of array that have value of property “propertyName” equal to value1, or value2, …, or valueN.

Example1 (single property value)

We want to create new section for custom fields where want to show all custom fields that are editable. Custom filed has property with name “editable” that can be true or false. We don’t want to show all custom fields, but only those that are editable (that has value of property “editable” equal to true).

Create new template.

Change this part of the template:



<div data-bind="foreach: customFields" class="custom-fields">
        <!-- ko template: template -->
        <!--/ko -->
</div>

With this:



<div data-bind="foreach: customFields.filterByProperty('editable', true)" class="custom-fields">
        <!-- ko template: template -->
        <!--/ko -->
</div>

Example2 (multiple property values):

We want to create new section for custom fields where we want to show only custom fields that are type of “Date” or “Select” or “LongText”. Custom field has property type that has numeric value (0 for Label, 1 for Text, 2 for Select, 3 for Date, 4 for LongText). We want to show only custom fields that have value of property “type” 2 or 3 or 4.

Create new template.

Change this part of the template:



<div data-bind="foreach: customFields" class="custom-fields">
        <!-- ko template: template -->
        <!--/ko -->
</div>

With this:



<div data-bind="foreach: customFields.filterByProperty('type', 2, 3 , 4)" class="custom-fields">                
        <!-- ko template: template -->
        <!--/ko -->
</div>

On this page
Example1 (single property value)
Example2 (multiple property values):
Yes
No