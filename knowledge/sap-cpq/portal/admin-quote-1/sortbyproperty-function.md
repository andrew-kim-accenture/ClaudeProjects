# sortByProperty Function | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/51357cba40434b7da5f2d91c5cbde19a.html?locale=en-US&state=PRODUCTION&version=2603
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
sortByProperty Function

Function sortByProperty returns an observable array that contains all members of the original array sorted by property which name is passed.

Also, it leaves the original array unchanged. The only argument is the name of property which is criteria for sorting array.

Syntax:



array.sortByProperty ('propertyName')

This function will return all members of array sorted by property which name is passed to the function.

Example:

We want to create custom section for custom fields where we want to sort them by their label.

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
<div data-bind="foreach: customFields.sortByProperty('label')" class="custom-fields">
        <!-- ko template: template -->
        <!--/ko -->
</div>

Yes
No