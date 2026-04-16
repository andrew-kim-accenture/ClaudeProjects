# Fetching Additional Data from Server | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/a16f03f12a3f488797dfbf8911cdbc91.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Advanced Customization Examples


	
CPQ Global Variable
	
WorkflowContext ClientData Rendering
	
How to Display Key Attributes on Custom Tab
	
Fetching Additional Data from Server


	
How to Fetch Additional Server Data After SAP CPQ System Events
	
How to Download XML File
	
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
Fetching Additional Data from Server

This procedure shows you how to make the list of hidden attributes display in the Responder.

Procedure
Create new IronPython script for listing all product attribute values and name it GetHiddenAttributes. Those attributes are hidden.

IronPython:



list = []
atrributes = Product.Attributes
for attr in atrributes:
    if not attr.ShowInResponder:
        for value in attr.Values:
            list.append(value.Display)

ApiResponse = ApiResponseFactory.JsonResponse(list);
Create new template ResponderView in the Configurator page.
Add following content to the ResponderView template:


<script type="text/javascript">
  showResult = function (callback)
  {
     return cpq.server.executeScript("GetHiddenAttributes", {}, callback);
  };
  cpq.ready(function(){

        var model = {
                dataArray: ko.observableArray()
        };

        cpq.events.sub('API:configurator:updated', function(data) {
                init = function(serverData) {
                        for(var i = 0; i < serverData.length; i++)
                        {
                                model.dataArray.push(serverData[i]);
                        }
                };

                showResult(init);
        });

        ko.applyBindings(model, document.getElementById("exampleList")); 
  });
</script>

<div id="exampleList" class="row" data-bind="visible: dataArray">
  <strong>Below is some client data</strong>
  <ul>
          <!-- ko foreach : dataArray -->
                <li data-bind="text: $data"></li>
          <!-- /ko  -->
  </ul>
</div>

Configure your product and you should see list of hidden attribute values rendered just above the Responder every time Configurator updates.
Yes
No