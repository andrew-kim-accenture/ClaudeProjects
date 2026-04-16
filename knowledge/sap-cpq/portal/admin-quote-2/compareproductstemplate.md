# CompareProductsTemplate | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/c7d4b5112b58405aada764b3a66d7092.html?locale=en-US&state=PRODUCTION&version=2603
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
CompareProductsTemplate

If the responsive template CompareProductsTemplate is customized, you need to check the template notation for invalid Razor code lines and follow the instructions to correct it so that it passes the Razor validation.

Fixing Invalid Razor Code
Note

The line numbers refer to the default templates with no customization. If your template is customized, the line number for the invalid code might differ.

Line 25: @if (AppParams["UseNewQuoteEngine"].AsBool)

Remove from lines 25-32:



@if (AppParams["UseNewQuoteEngine"].AsBool)
{
	<div id="oneTimePrice" class="compare-label" scope="row">@Translation.Get("Catalogue.ListView.OneTimePrice"):</div>
}
else
{
	<div id="oneTimePrice" class="compare-label" scope="row">@Translation.Get("xsltNRC"):</div>
}


Replace in line 25 with:



<!-- ko if: $root.useNewQuoteEngine -->
<div id="oneTimePrice" class="compare-label" scope="row">@Translation.Get("Catalogue.ListView.OneTimePrice"):</div>
<!-- /ko -->

<!-- ko if: !$root.useNewQuoteEngine -->
<div id="oneTimePrice" class="compare-label" scope="row">@Translation.Get("xsltNRC"):</div>
<!-- /ko -->

Line 44: @if (AppParams["UseNewQuoteEngine"].AsBool)

Remove from lines 44-51:



@if (AppParams["UseNewQuoteEngine"].AsBool)
{
	<div id="recurringPrice" class="compare-label" scope="row">@Translation.Get("Catalogue.ListView.RecurringPrice"):</div>
}
else
{
	<div id="recurringPrice" class="compare-label" scope="row">@Translation.Get("xsltMRC"):</div>
}


Replace in line 44 with:



<!-- ko if: $root.useNewQuoteEngine -->
<div id="recurringPrice" class="compare-label" scope="row">@Translation.Get("Catalogue.ListView.RecurringPrice"):</div>
<!-- /ko -->

<!-- ko if: !$root.useNewQuoteEngine -->
<div id="recurringPrice" class="compare-label" scope="row">@Translation.Get("xsltMRC"):</div>
<!-- /ko -->

Yes
No