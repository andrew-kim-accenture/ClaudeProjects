# all/allWithProperty | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/ae882ee1ea9841c98c9f263f5809786e.html?locale=en-US&state=PRODUCTION&version=2603
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
all/allWithProperty

Function all returns the boolean value whether all elements of the passed observable array matches predicate function condition.

Syntax:


array.all(predicateFunction)


Similar to the previous function, allWithProperty returns the boolean value whether all elements of the passed observable array have value of property matched with passed appropriate values. First argument is the name of property and other arguments are appropriate values and there is no limit of number of passed values.

This function will return true if all members of array have value of property “propertyName” equal to value1, or value2, …, or valueN.

Syntax:


array.allWithProperty ('propertyName', value1, value2, …, valueN)
Example1:

We want to display section for custom fields only if all custom fields have id greater than zero and don’t trigger save.

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
<div data-bind="visible: customFields.all(function(item) {return item.id > 0 && item.triggersSave=== false;})">
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

We want to display section for custom fields only if there are only custom fields with id 5, 17, 35 and 212.

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
<div data-bind=" visible: customFields.allWithProperty('id', 5, 17, 35, 212)">
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

We should check value of property id. So, first argument is the name of property and other parameters are appropriate values of property “id” and that are 5, 17, 35 and 212.

On this page
Example1:
Example2:
Yes
No