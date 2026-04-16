# CPQ Global Variable | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/436fb2bb0b88403084513234acbd535a.html#cpq.kocontext
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
CPQ Global Variable

The cpq global variable is designed to facilitate responsive design customizations with custom JavaScript behavior.

cpq.models

The cpq.models property exposes all knockout models present on the current page. This feature makes it easier for you to access and inspect model instances. To try it out, type cpq.models. in your browser console. Note the options that auto-complete offers.

cpq.server

The cpq.server property helps you communicate with the server from your JavaScript. It contains one member: the function executeScript which invokes your global IPython script. For more information, see Consume Python Global Scripts as REST Webservices.

JavaScript:



executeScript: function(scriptName, jsonParam, callback)
Name	Type	Required	Description


scriptName

	

string

	

yes

	

Name of your global IPython script.




jsonParam

	

object

	

no

	

If it's supplied, it must be object literal. For example: { myPoperty: 'myValue' }.




callback

	

function

	

no

	

Function that is called if a service is executed successfully. If the service returns data, it is returned as the first parameter.

JavaScript:



cpq.server.executeScript('someScript', { myPoperty: "myValue" }, function (data) { console.log(data); });

cpq.events

The events object contains pub and sub functions which allow you to subscribe to SAP CPQ public JavaScript events. It also lets you publish and subscribe to your custom events. This is useful when building multiple widgets for the same page that need to communicate.

Code Syntax

JavaScript



sub: function (channelName, callback)

Name	Type	Required	Description


channelName

	

string

	

no

	

Name of the event you are subscribing to. For example, "modelCreated" or "catalog:updated". Channel name supports name spacing. In case of "catalog:updated" event, if you subscribe to "catalog" you will get notified for all events starting with "catalog:". If channel name is not supplied, you will be subscribed to all events.




callback

	

function

	

yes

	

Function that will get called once the event is raised. The first parameter is the data and the second one is the channel name (name of the raised event).

Code Syntax

JavaScript



pub: function (channelName, data)
Name	Type	Required	Description


channelName

	

string

	

yes

	

Name of the event you are publishing. For example, "someEvent".




data

	

anything

	

no

	

Data that will be sent to event subscribers.

Code Syntax

JavaScript



cpq.events.sub("someEvent", function(data, event) { console.log(data, event); });
cpq.events.pub("someEvent", "someData");


CPQ Public Events

Each knockout model in SAP CPQ raises events when models are created and updated. When a model is created, the modelCreated event is raised. When a model receives data from the server, the modelName:updated event is raised. This event is also triggered when initial data is received. In these events, the data sent will always include the property model which contains a reference to the model that raised the event.

Code Syntax

JavaScript



cpq.events.sub("catalog:updated", function(data, event) { console.log("Catalog was updated",  data.model); });


For more information on SAP CPQ public events, see How to Fetch Additional Server Data After SAP CPQ System Events.

cpq.ready

The ready function accepts only one parameter: a callback function which is called when the document is ready. Unlike jQuery ready event, this function waits for script initialization to finish. This ensures you can use the ko global variable.

Code Syntax

JavaScript



cpq.ready(function(){
   var model = { 
       name: ko.observable('MyModle'),
       items: ko.observableArray()
   };

   ko.applyBindings(model, document.getElementById("exampleWidget"));  
 });

For full example using ready function, see WorkflowContext ClientData Rendering.

cpq.koContext

The koContext function accepts one parameter: a CSS selector string. It returns the knockout context of the element. If the element doesn't exist, an error message is displayed in the console. If the knockout context doesn't exist, a warning message is shown. This function was created because the Knockout Context extension was removed from Chrome for security reasons.

Code Syntax

JavaScript



koContext: function(cssSelector)
Name	Type	Required	Description


cssSelector

	

string

	

yes

	

Selector of the element for which you want to get the knockout context. The function uses document.querySelector to select the first matching element.

Example:



cpq.koContext('.categories-tabular');

On this page
cpq.models
cpq.server
cpq.events
CPQ Public Events
cpq.ready
cpq.koContext
Yes
No