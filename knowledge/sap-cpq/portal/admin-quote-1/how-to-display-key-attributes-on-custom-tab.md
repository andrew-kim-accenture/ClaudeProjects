# How to Display Key Attributes on Custom Tab | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/4ca1dabb6e5044fda420fcefb3d8bed4.html#add-tab-to-quote
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
How to Display Key Attributes on Custom Tab

In order to display key attributes on custom quote tab we need to do following:

Create global script for retrieving data to be displayed.

Write custom logic for getting and displaying data.

Add custom quote tab to a quote.

Create Global Script for Retrieving Data to be Displayed

The example of global script (name of script, Ex. GetData) for getting key attributes:



def GetColumns(mainItems):
    columns = ["Product Name"]
    if len(list(Quote.MainItems)) > 0 :
        for attr in mainItems[0].KeyAttributes:
            columns.append(attr.Label)
    return columns

columns = GetColumns(Quote.MainItems)
values = [];
for item in Quote.MainItems:
    values.append({"keyAttributes": item.KeyAttributes,"productName": item.ProductName});

model = {'columns': columns, 'values': values}
ApiResponse = ApiResponseFactory.JsonResponse(model)

Write Custom Logic for Getting and Displaying Data

The example of js/html files that need to be added to file management:

MyPage.html:



<!DOCTYPE html>
<html>

<head>

  <script src="libs/jquery.js"></script>
  <script src="libs/knockout.js"></script>
  <script src="app.js"></script>

  <script src="libs/bootstrap.min.js"></script>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="libs/bootstrap.min.css">

</head>
<body>
  <div>
    <table class="table table-bordered table-hover ">
      <thead>
        <tr data-bind='foreach: columns'>
          <th>
            <span data-bind="text: $data"></span>
          </th>
        </tr>
      </thead>
      <tbody data-bind="foreach: rows">
        <tr>
            <td data-bind="text: $data.productName "></td>
            <!-- ko foreach: $data.keyAttributes -->
            <td data-bind="text: $data.ParsedValue || 'Null'"></td>
            <!-- /ko -->
        </tr>
      </tbody>
    </table>
  </div>
</body>

</html>

app.js:



$(function() {
    $.get(location.origin + "/customapi/executescript?scriptname=GetData",
        function(data) {

            var ViewModel = function(data) {
                var self = this;
                self.columns = ko.observableArray(data.columns);
                self.rows = ko.observableArray(data.values);
            };

            ko.applyBindings(new ViewModel(data)); // This makes Knockout get to work
        });
})

Add Tab to Quote

We need to define a tab with IFrame as a Type, and in IFrame URL you should provide URL like : https://yourdomain.cpq.cloud.sap/mt/{your_tenant}/additionalfiles/MyFolder/MyPage.html

Where MyFolder is a folder where we will upload our files (html, js, css), and MyPage.html our custom page for displaying data.

Also we need to include knockout.js and jquery.js and reference them in MyPage.html. We can include bootstrap to make UI looks more native.

All files needs to be uploaded to MyFolder, previously defined. For better organization we can create sub-folder lib and place all common libraries (such as 'knockout.js', 'jquery.js', 'bootstrap.css..') there.

On this page
Create Global Script for Retrieving Data to be Displayed
Write Custom Logic for Getting and Displaying Data
Add Tab to Quote
Yes
No