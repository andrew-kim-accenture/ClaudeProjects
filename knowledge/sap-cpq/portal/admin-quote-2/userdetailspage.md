# UserDetailsPage | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/de4d363f37b84571a0a141c2a826b2af.html?locale=en-US&state=PRODUCTION&version=2603
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
UserDetailsPage

If the responsive template UserDetailsPage is customized, you need to check the template notation for invalid Razor code lines and follow the instructions to correct it so that it passes the Razor validation.

Fixing Invalid Razor Code
Note

The line numbers refer to the default templates with no customization. If your template is customized, the line number for the invalid code might differ.

Line 19: @if (AppParams["RESPONSIVE_GUI_PER_USER"].AsBool && !AppParams["UseNewQuoteEngine"].AsBool)

Remove from lines 19-22:



@if (AppParams["RESPONSIVE_GUI_PER_USER"].AsBool && !AppParams["UseNewQuoteEngine"].AsBool)
{
	<button class="btn btn-default btn-xs pull-right responsive-switch" data-bind="click: toggleResponsiveDesign">@Translation.Get("UserPersonalization.SwitchToOldDesign")</button>
}


Replace in line 19 with:



@if (ResponsiveGuiPerUser)
{
	<!-- ko if: !useNewQuoteEngine -->
	<button class="btn btn-default btn-xs pull-right responsive-switch" data-bind="click: toggleResponsiveDesign">@Translation.Get("UserPersonalization.SwitchToOldDesign")</button>
	<!-- /ko -->
}

Yes
No