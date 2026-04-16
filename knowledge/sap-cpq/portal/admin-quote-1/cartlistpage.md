# CartListPage | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/f150a2cfa25644abb89e95f1751f7f9f.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Customize Templates
	
Razor Validation in Responsive Templates


	
BreadcrumbsView
	
CartListPage
	
CartSummary
	
CatalogPage
	
Categories
	
CompareProductsTemplate
	
ConfiguratorView
	
FavoritesPage
	
HomePage
	
MainMenu
	
ModifyPasswordPage
	
ProductDetailsTemplate
	
QuoteListComponent
	
RecentlyVisitedObjects
	
ResponderForProductView
	
Sections/QuoteInfo
	
UserDetailsPage
	
UserMenu
	
Limiting Customized Templates to Specific User Groups
	
Responsive Design Customizations
	
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
CartListPage

If the responsive template CartListPage is customized, you need to check the template notation for invalid Razor code lines and follow the instructions to correct it so that it passes the Razor validation.

Fixing Invalid Razor Code
Note

The line numbers refer to the default templates with no customization. If your template is customized, the line number for the invalid code might differ.

Line 2: @if (!Webcom.Configurator.UserEnvironment.LandedFromC4C)

Remove from lines 1-2:



<div id="cartListContainer" class="w960 user-page-container load-quote-page-container" data-bind="visible: isInitialized" style="display: none">
    @if (!Webcom.Configurator.UserEnvironment.LandedFromC4C)


Replace in line 1 with:



<div id="cartListContainer" class="w960 user-page-container load-quote-page-container hidden" data-bind="visible: isInitialized, css: { hidden : $root.landedFromC4C }">

Line 103: @Translation.Get("C4C.LoadQuoteDisabledWhenLadningFromC4C")

Remove from lines 101-104:



else
{
	<label class="message_error" style="text-align:center;">@Translation.Get("C4C.LoadQuoteDisabledWhenLadningFromC4C")</label>
}


Replace in line 101 with:



<!-- ko if: $root.landedFromC4C -->
	<div class="fiori3-alert fiori3-alert-danger fiori3-alert-danger-border hidden" data-bind="css: { hidden : !$root.landedFromC4C }">
		<span class="sap-icon">&#xe1ec;</span>
		<span>@Translation.Get("C4C.LoadQuoteDisabledWhenLadningFromC4C")</span>
	</div>
<!-- /ko -->

Yes
No