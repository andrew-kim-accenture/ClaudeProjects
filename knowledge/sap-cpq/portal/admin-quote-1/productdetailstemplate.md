# ProductDetailsTemplate | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/0667524c5581444a80ee35485230fdc2.html?locale=en-US&state=PRODUCTION&version=2603
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
ProductDetailsTemplate

If the responsive template ProductDetailsTemplate is customized, you need to check the template notation for invalid Razor code lines and follow the instructions to correct it so that it passes the Razor validation.

Fixing Invalid Razor Code
Note

The line numbers refer to the default templates with no customization. If your template is customized, the line number for the invalid code might differ.

Line 19: @if (AppParams["UseNewQuoteEngine"].AsBool)

Remove from lines 19-26:



@if (AppParams["UseNewQuoteEngine"].AsBool)
{
<span class="one-time-price-label">@Translation.Get("Catalogue.ListView.OneTimePrice")</span>
}
else
{
<span class="one-time-price-label">@Translation.Get("xsltNRC")</span>
}


Replace in line 19 with:



<!-- ko if: $root.useNewQuoteEngine -->
<span class="one-time-price-label">@Translation.Get("Catalogue.ListView.OneTimePrice")</span>
<!-- /ko -->

<!-- ko if: !$root.useNewQuoteEngine -->
<span class="one-time-price-label">@Translation.Get("xsltNRC")</span>
<!-- /ko -->

Line 32: @if (AppParams["UseNewQuoteEngine"].AsBool)

Remove from lines 32-39:



@if (AppParams["UseNewQuoteEngine"].AsBool)
{
<span class="recurring-price-label">@Translation.Get("Catalogue.ListView.RecurringPrice")</span>
}
else
{
<span class="recurring-price-label">@Translation.Get("xsltMRC")</span>
}


Replace in line 32 with:



<!-- ko if: $root.useNewQuoteEngine -->
<span class="recurring-price-label">@Translation.Get("Catalogue.ListView.RecurringPrice")</span>
<!-- /ko -->
										
<!-- ko if: !$root.useNewQuoteEngine -->
<span class="recurring-price-label">@Translation.Get("xsltMRC")</span>
<!-- /ko -->

Yes
No