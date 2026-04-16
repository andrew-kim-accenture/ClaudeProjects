# indexOf | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/f5e77d7970b64a3897497dd80576b1c0.html?locale=en-US&state=PRODUCTION&version=2603
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
indexOf

Function indexOf returns index of the first element of passed array that matches predicate function condition.

If predicate function is not passed, native 'indexOf' function will be called. Native 'indexOf' is function from knockout. It receives member of array as parameter and returns index of that member in array starting from 0. Our modified function receives predicate function and returns index of array member that matches predicate function condition.

Syntax:



array.indexOf(predicateFunction)
Example:

We want to display section for custom fields only if none of the first five custom fields is read-only.

We should check index of first appearing of read-only custom field. It should be greater than 4 (because indexes start from 0).

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
<div data-bind="visible: customFields.indexOf(function (item) {return item.editable === false;}) > 4 ">
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
Yes
No