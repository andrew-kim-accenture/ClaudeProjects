# count/countWithProperty Function | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/6bb818a7788d4d74b6ddf5c12e9e2677.html?locale=en-US&state=PRODUCTION&version=2603
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
count/countWithProperty Function

Function count returns the number of array elements that matches predicate function condition.

Syntax:



array.count(predicateFunction)

Similar to the previous function, countWithProperty returns the number of array elements that have value of property matched with passed appropriate values. First argument is the name of property and other arguments are appropriate values and there is no limit of number of passed values.

Syntax:



array.countWithProperty ('propertyName', value1, value2, …, valueN)

This function will return number of members of array that have value of property “propertyName” equal to value1, or value2, …, or valueN.

Example1 (simple condition - count):

We want to display section custom fields only if there is more than 3 required fields.

We will change visibility condition.

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
<div data-bind="visible: customFields.count(function(item) {return item.isRequired === true;}) > 3">
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
In this example predicate function is:


function(item) {return item.isRequired === true;}

We should check value of property isRequired for each item of array. So, as argument of function we passed item and then we access to value of its property with item.isRequired, in order to check if that value is true. We are also able to use logical operators (AND, OR, NOT, and so on) to make complex conditions.

Example2 (complex condition - count):

We want to show section for custom fields only if there is exactly one non required field with type of “Date” (value of properties “type” and “isRequired” should be 3 and false, respectively).

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
<div data-bind="visible: customFields.count(function(item) {return item.isRequired === false s&& item.type === 3;}) === 1">
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

In this example predicate function is:



function(item) {return item.isRequired === false && item.type === 3;}

We should check value of properties “isRequired” and “type” for each item of array. So, as argument of function we passed item and then we access to value of properties “isRequired” and “type” with item.isRequired and item.isRequired. We use logical operator && for linking conditions.

Note

Everything above about predicate functions is valid for all predicate functions in other customization functions, such as any, all, indexOf, lastIndexOf, first, last, and so on.

Example3 (simple condition - countWithProperty):

We want to display section custom fields only if there is more than 3 required fields.

We will change visibility condition.

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
<div data-bind="visible: customFields.countWithProperty('isRequired', true) > 3">
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

We should check value of property isRequired. So, first argument is the name of property and second parameter is appropriate value of property “isRequired” and that is true.

Example4 (complex condition - countWithProperty):

We want to show section for custom fields only if there are more than two custom fields with type of “Date” or “Select” or “LongText”. (appropriate values of property “type” are 2, 3 and 4).

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
<div data-bind=" visible: customFields.countWithProperty('type', 2, 3, 4) > 2">
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

We should check value of property type. So, first argument is the name of property and other parameters are appropriate values of property “type” and that are 2, 3 and 4.

On this page
Example1 (simple condition - count):
Example2 (complex condition - count):
Example3 (simple condition - countWithProperty):
Example4 (complex condition - countWithProperty):
Yes
No