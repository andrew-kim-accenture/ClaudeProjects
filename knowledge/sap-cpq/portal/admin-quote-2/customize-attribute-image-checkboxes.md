# Customize Attribute Image Checkboxes | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/8c2eb4039d304bcba08866ff6fc62be6.html?locale=en-US&state=PRODUCTION&version=2603
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
Customize Attribute Image Checkboxes

Here, you can learn how attribute image checkboxes are customized.

Procedure
Edit attribute in product.
Set Display as to be Image Button.
Upload Image On and Image Off pictures.
Change Display as to be Check Box.
Click Save.
Create new template Editors/CheckboxTemplate to be used in the Configurator page.
Change this part of the template:


<span class="l" data-bind="css: {'col-md-7 clear-padding': $parent.dataType() == 'Attr.Quantity'}">
  <label class="middle">
      <input class="custom" type="checkbox" data-bind="value: pavId, checked: selected, incrementalTabIndex, enable: $parent.isEnabled" />
      <span data-bind="html: displayValueWithPrices" class="lbl"></span>
  </label>
</span>

With this:


<span class="l image-checkbox" data-bind="css: {'col-md-7 clear-padding': $parent.dataType() == 'Attr.Quantity'}">
  <label class="middle">
      <input class="custom" type="checkbox" data-bind="value: pavId, checked: selected, incrementalTabIndex, enable: $parent.isEnabled" />
      <!-- ko if: $data.imageUrl().length > 0 -->
      <span class="img-thumbnail">
          <img class="img-responsive" data-bind="attr:{src: $data.imageUrl}" />
            <span data-bind="html: displayValueWithPrices" class="lbl"></span>
        </span>
      <!-- /ko -->
      <!-- ko if: $data.imageUrl().length == 0 -->
      <span data-bind="html: displayValue" class="lbl"></span>
      <!-- /ko -->
  </label>
</span>

Add this CSS:


.image-checkbox {
width: 100%;
}
.image-checkbox  input.custom[type="checkbox"]:checked + span.img-thumbnail {
border: 2px solid #00a8e3;
box-shadow: 0 0 8px #dce1e5;
}

Yes
No