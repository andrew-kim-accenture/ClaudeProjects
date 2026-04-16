# Replace Cart Action with Custom JS | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/3fd6f8453e714efcadeb4cc87374af04.html#procedure
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
	
Customization Examples


	
Header Customizations
	
Configurator Customizations
	
Cart Customizations


	
Replace Cart Action with Custom JS
	
Allow Negative Numbers in Cart Cells
	
Quote Custom Fields Customizations
	
Quote Item Custom Fields Customization
	
Cart Items Table Customizations
	
Catalog Customizations
	
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
Replace Cart Action with Custom JS

Regular custom actions on cart can have embedded JavaScript code that will execute on click.

Context

We want to add some JavaScript code for our custom action on a quote. We need to know our action's ID. For this example, let's say that ID is 2524.

Procedure
Create IronPython script that returns some message (for example This is a test message.) and name it test.
Create a new ActionsTemplate on the Cart page.
Override default template with this (Observe that id in this example is our custom action's ID):


<script type="text/javascript">
  window.ShowResult = function ()
  {
     var result = $.get("https://yourdomain.cpq.cloud.sap/customapi?username=admin&password=password123&scriptname=test");
     alert(result);
  };
</script>

<script type="text/html" id="actionsTemplate">
    <div data-bind="foreach: $data">
        <!-- ko if : $root.displayImagesForCartActions -->
        <div class="action-row">  

           <!-- ko if: id !== 2524 -->
          <a href="#">  
           <span data-bind="text: name, click: execute"></span>&nbsp;<img data-bind="attr: { src: imageUrl }, visible: imageUrl" />
            </a>
          <!-- /ko -->
           <!-- ko if: id === 2524 -->
           <button data-bind="text: name" onclick="window.ShowResult()"></button>&nbsp;<img data-bind="attr: { src: imageUrl }, visible: imageUrl" />
          <!-- /ko -->

        </div>

        <!-- /ko -->
        <!-- ko ifnot : $root.displayImagesForCartActions -->
        <div class="button-actions"><button type="button" class="btn btn-default" data-bind="text: name, click: execute"></button></div>
        <!-- /ko -->
    </div>
</script>

Go to Cart page.

You should see button beside your action's name.

Click on action and you should see message from your script:

In this example we've used SAP CPQ custom API for script execution. Of course, you can call any other supported external API source.

On this page
Context
Procedure
Yes
No