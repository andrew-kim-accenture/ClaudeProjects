# WorkflowContext ClientData Rendering | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/8751dff3f6d6453490036f3c13e54526.html?locale=en-US&state=PRODUCTION&version=2603
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


	
CPQ Global Variable
	
WorkflowContext ClientData Rendering
	
Fetching Additional Data from Server
	
How to Download XML File
	
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
WorkflowContext ClientData Rendering

Data you put in WorkflowContext.ClientData can be accessed on client on Cart and CartList knockout model using WorkflowClientData observable on model.

This observable stores last WorkflowContext.ClientData received from server and can be used for rendering. See example below.

Example 1:

Once custom action that will build ClientData is created, you need to add the following IronPython script to the action:

Python:



# Apply some logic here for calculating client data

msgArray = [{ 'type' : 'info', 'message': 'some custom info' },
{ 'type' : 'error', 'message': 'some custom error' }]

warnMsg = {};
warnMsg['type'] = "warning";
warnMsg['message'] = "some warning message";
msgArray.append(warnMsg);

WorkflowContext.ClientData = msgArray

After you are done don't forget to setup new custom actoin in workflow and workflow permissions.

Then add following snippet in the Sections/Promotions template on Cart page:



<div class="row" data-bind="visible: workflowClientData">
  <strong>Below is some client data</strong>
  <!-- ko foreach : workflowClientData -->
    <div class="alert" data-bind="text: message, css: { 'alert-info' : type === 'info', 'alert-danger' : type === 'error', 'alert-warning': type === 'warning'   }"></div>
  <!-- /ko  -->
</div>


Now if you go to Cart you will see new action Get ClientData.

When you click Get ClientData IPython script sends data to client which is then rendered using out custom template.

Example 2 (Widget implementation in CartPage template):

Downside of previous example is that client data can't be manipulated. It is using WorkflowContext.ClientData to directly render data. Advantage of this approach is that is very simple. Disadvantage is that you will show only last data received from server. In this example we'll implement custom widget on cart page, in which client data is rendered and can be manipulated. This widget will accumulate and display different messages received from server via client data and it will allow us to remove single or all messages.

Create custom template in Cart/CartPage and add following HTML content:



<script type="text/javascript">
        cpq.ready(function()
          {
                  var model = { 
                          isVisible: ko.observable(true),
                          data: ko.observableArray(),
                          clearAll: function ()
                          {
                                  model.data([]);
                          },
                          remove: function(item)
                          {
                                  model.data.remove(item);
                          }
                  };

                  cpq.events.sub('cart:updated', function(data) {
                          // if we received client data, add it to our model
                          if (data.model.workflowClientData())
                          {
                                  for(var i = 0; i < data.model.workflowClientData().length; i++)
                                {
                                        model.data.push(data.model.workflowClientData()[i]);
                }
                          }
                  });

                  ko.applyBindings(model, document.getElementById("exampleWidget"));
        });
</script>


<div id="exampleWidget" class="center-block" data-bind="visible: isVisible" style="display: none; width: 500px">
          <div>
            <strong>This is custom widget</strong>
              <a href=#" data-bind="click: clearAll, visible: data().length > 0" style="float: right">Clear all</a>
                  <!-- ko foreach : data -->
            <div class="alert" data-bind="css: { 'alert-info' : type === 'info', 'alert-danger' : type === 'error', 'alert-warning': type === 'warning'   }">
                <span  data-bind="text: message"></span>
                <a href="#" data-bind="click: $root.remove" style="float: right">remove</a>
        </div>
                  <!-- /ko  -->
              <div data-bind="visible: data().length === 0">currently empty...</div>
           </div>
</div>


Go to Cart page. You should see empty widget just above the quote:

Click on custom action for which you've defined IronPython script and you should see widget filled with client data. You can remove individual divs or clear entire content of widget:

Example 3 (Widget implementation in Cart section template):

In previous example we've implemented widget that is positioned above cart page. This is because cart page already have applied knockout bindings and we can't apply two or more bindings on same model. Luckily, knockout have workaround for that, which give us possibility to implement our widget anywhere inside cart page.

Create custom template in Sections/Promotions and add following HTML content:



<script type="text/javascript">
        cpq.ready(function()
          {
                  var model = { 
                          isVisible: ko.observable(true),
                          data: ko.observableArray(),
                          clearAll: function ()
                          {
                                  model.data([]);
                          },
                          remove: function(item)
                          {
                                  model.data.remove(item);
                          }
                  };

                  cpq.events.sub('cart:updated', function(data) {
                          // if we received client data, add it to our model
                          if (data.model.workflowClientData())
                          {
                                  for(var i = 0; i < data.model.workflowClientData().length; i++)
                                {
                                        model.data.push(data.model.workflowClientData()[i]);
                }
                          }
                  });

            ko.bindingHandlers.stopBinding = {
                    init: function() {
                        return { controlsDescendantBindings: true };
                    }
            };
                ko.virtualElements.allowedBindings.stopBinding = true;

                  ko.applyBindings(model, document.getElementById("exampleWidget"));
        });
</script>

<!-- ko stopBinding: true -->
<div id="exampleWidget" class="center-block" data-bind="visible: isVisible" style="display: none; width: 500px">
          <div>
            <strong>This is custom widget</strong>
              <a href=#" data-bind="click: clearAll, visible: data().length > 0" style="float: right">Clear all</a>
                  <!-- ko foreach : data -->
            <div class="alert" data-bind="css: { 'alert-info' : type === 'info', 'alert-danger' : type === 'error', 'alert-warning': type === 'warning'   }">
                <span  data-bind="text: message"></span>
                <a href="#" data-bind="click: $root.remove" style="float: right">remove</a>
        </div>
                  <!-- /ko  -->
              <div data-bind="visible: data().length === 0">currently empty...</div>
           </div>
</div>
<!-- /ko -->


Go to the Cart page. You should see widget as part of the cart page, similar to previous example.

Note that only difference between this and previous example is in block of code just above applyBindings part. Then, we surounded our widget div with stopBinding function that we've added in script block to tell knockout that on this part of HTML is applied inner binding.

On this page
Example 1:
Example 2 (Widget implementation in CartPage template):
Example 3 (Widget implementation in Cart section template):
Yes
No