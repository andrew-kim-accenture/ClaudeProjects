# Change the Way Attributes are Displayed in One Tab | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/b46a1e57b96540daa65633c1650bb3df.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Header Customizations
	
Configurator Customizations


	
Customize Attribute Image Checkboxes
	
Make Responder Display in Modal Window
	
Change the Way Attributes are Displayed in One Tab
	
Cart Customizations
	
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
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Change the Way Attributes are Displayed in One Tab
Procedure
Create a new template ConfiguratorView for the Configurator page.
Add condition for tab ID (or name) and then display the attributes inside that tab the way you want (example is showing attributes in a table).

In this example we customize tab with id = 17 and attributes with stdAttrCode = 930 and stdAttrCode = 931.



<!-- ko if : tabs().length > 0 && currentTab().id() === 17 -->
<table class="table table-bordered">
   <caption>Basic Information</caption>
   <thead>
      <tr>
         <!-- ko foreach: attributes -->
         <!-- ko if : $data.stdAttrCode() === 930 || $data.stdAttrCode() === 931 -->
         <th><label data-bind="html: label, css: { required: incomplete() && $root.highlightIncomplete() }"></label></th>
         <!-- /ko -->
         <!-- /ko -->
      </tr>
   </thead>
   <tbody>
      <tr>
         <!-- ko foreach: attributes -->
         <!-- ko if : $data.stdAttrCode() === 930 || $data.stdAttrCode() === 931 -->
         <td><span data-bind="text: userInput"></span></td>
         <!-- /ko -->
         <!-- /ko -->
      </tr>
   </tbody>
</table>
<!-- /ko -->

Add condition to display attributes in classic way in all other tabs.


<!-- ko if : tabs().length === 0 || tabs().length > 0 && currentTab().id() !== 17 -->
<!-- ko foreach: attributes -->
<div data-bind="attr: { 'class': isWholeRow() ? 'g4' : 'g1' }">
   <!-- ko template: { name: $root.getAttributeTemplate } -->
   <!-- /ko -->
</div>
<!-- /ko -->
<!-- /ko -->

Yes
No