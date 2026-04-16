# Allow Negative Numbers in Cart Cells | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/60a134828a3f429ab993551f6ca13a0a.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Allow Negative Numbers in Cart Cells

We will customize cell template in order to allow negative numbers for discount, extended amount, and so on.

Procedure
Create a new responsive template which uses standard Cart/Templates/CellTemplates template.
In new template just replace numericMathCellTemplate with this one:


<script type="text/html" id="numericMathCellTemplate">
<div data-bind="css:{ 'input-group col-md-12 clear-padding': hasModifiedComputedField }">
<span class="input-group-addon" data-bind="visible: hasModifiedComputedField, tooltip:{ title: modifiedComputedFieldMsg }"><i class="fa fa-exclamation"></i></span>
<input type="text" class="form-control numberCell" 
data-bind="valueUpdatedOnEnter: value, executeOnEnter: $root.calculate, 
css:{ hasError: errorMessage }, attr:{ title: errorMessage() ? errorMessage() : '' }, incrementalTabIndex: tabIndexGroup" />
</div>
</script>

Yes
No