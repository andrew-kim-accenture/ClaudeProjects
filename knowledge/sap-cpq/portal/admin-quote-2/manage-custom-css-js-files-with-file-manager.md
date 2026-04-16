# Manage Custom CSS/JS Files with File Manager | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/3ca8c167703d40dc9dd1a4ef3599f786.html?locale=en-US&state=PRODUCTION&version=2603
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
Manage Custom CSS/JS Files with File Manager

Custom CSS or JS files can be uploaded via the File Manager into additional files folder and be used and referenced in custom templates.

Context

We want to upload JavaScript file on file system and reference that JS file in our custom action template on Cart page.

Procedure
Create and upload your JavaScript file via File Manager into additional files folder.

In our example, JS file is a simple function that shows message in alert box.

Override default template with custom action template and reference previously uploaded script:

XML:



<script src="~/mt/default/additionalfiles/file.js" type="text/javascript"></script>

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

Observe that src attribute in script html tag represents path to the uploaded script in additional files folder. Also, ShowResult() is our JS function from uploaded file.

Go to Cart page.

You should see button beside your action's name.

Click on action and you should see message from your script.
On this page
Context
Procedure
Yes
No