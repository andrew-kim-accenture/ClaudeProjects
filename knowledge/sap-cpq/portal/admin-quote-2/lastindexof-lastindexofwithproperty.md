# lastIndexOf/lastIndexOfWithProperty | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/40256ba8515a44399f10ab50105e9a1b.html?locale=en-US&state=PRODUCTION&version=2603
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
lastIndexOf/lastIndexOfWithProperty

Function lastIndexOf returns index of the last element of passed array that matches predicate function condition.

Syntax:



array.lastIndexOf(predicateFunction)


Similar to the previous function, lastIndexOfWithProperty returns index of the last element of passed array that has value of property matched with passed appropriate values. First argument is the name of property and other arguments are appropriate values and there is no limit of number of passed values.

Syntax:



array.lastIndexOfWithProperty('propertyName', value1, value2, …, valueN)

This function will return index of the last element of passed array that has value of property “propertyName” equal to value1, or value2, …, or valueN.

Example1:

We want to display section for custom fields only if none of last three custom fields has different name and label. (all of last three custom fields have same name and label) We should check if index of last appearing of custom field, with different label and name, is less than array length minus three (because indexes start from 0).

Create new template.

Change this part of the template:


<div data-bind="visible: customFields().length > 0">
    <div class="col-md-12">
        <h3 class="alternate">@Translation.Get("xsltQuoteCartCustomFields")</h3>
    </div>
    <div class="clearfix">
        <div data-bind="foreach: customFields" class="custom-fields">
            <!-- ko template: template -->
            <!--/ko -->
        </div>
    </div>
    <br />
</div>

With this:


<div data-bind="visible: customFields.lastIndexOf(function (item) {return item.label !==item.name;}) < customFields().length - 3 ">
    <div class="col-md-12">
        <h3 class="alternate">@Translation.Get("xsltQuoteCartCustomFields")</h3>
    </div>
    <div class="clearfix">
        <div data-bind="foreach: customFields" class="custom-fields">
            <!-- ko template: template -->
            <!--/ko -->
        </div>
    </div>
    <br />
</div>

Example2:

We want to display section for custom fields only if none of the last three custom fields is required.

We should check if index of last appearing of custom field, with value of isRequired equal to true, is less than array length minus three (because indexes start from 0).

Create new template.

Change this part of the template:



<div data-bind="visible: customFields().length > 0">
    <div class="col-md-12">
        <h3 class="alternate">@Translation.Get("xsltQuoteCartCustomFields")</h3>
    </div>
    <div class="clearfix">
        <div data-bind="foreach: customFields" class="custom-fields">
            <!-- ko template: template -->
            <!--/ko -->
        </div>
    </div>
    <br />
</div>

With this:


<div data-bind="visible: customFields.lastIndexOfWithProperty('isRequired', true) < customFields().length - 3 ">
    <div class="col-md-12">
        <h3 class="alternate">@Translation.Get("xsltQuoteCartCustomFields")</h3>
    </div>
    <div class="clearfix">
        <div data-bind="foreach: customFields" class="custom-fields">
            <!-- ko template: template -->
            <!--/ko -->
        </div>
    </div>
    <br />
</div>

On this page
Example1:
Example2:
Yes
No