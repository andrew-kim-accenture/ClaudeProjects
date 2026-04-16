# QuoteListComponent | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/e6b4edfb4ef341f499dd0dc6cc8f4fb8.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
QuoteListComponent

If the responsive template QuoteListComponent is customized, you need to check the template notation for invalid Razor code lines and follow the instructions to correct it so that it passes the Razor validation.

Fixing Invalid Razor Code
Note

The line numbers refer to the default templates with no customization. If your template is customized, the line number for the invalid code might differ.

Line 1: @if (!Webcom.Configurator.UserEnvironment.LandedFromC4C)

Remove from lines 1-2



<div class="cart-list fiori3-cart-list col-md-12" id="quoteListContainer">
@if (!Webcom.Configurator.UserEnvironment.LandedFromC4C)


Replace in line 1 with:



<div class="cart-list fiori3-cart-list col-md-12 hidden" id="quoteListContainer" data-bind="css: { hidden : $root.landedFromC4C }">

Line 45: @Translation.Get("C4C.LoadQuoteDisabledWhenLadningFromC4C")

Remove from lines 43-46:



} else 
{
<label class="message_error" style="text-align:center;">@Translation.Get("C4C.LoadQuoteDisabledWhenLadningFromC4C")</label>
}


Replace in line 43 with:

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