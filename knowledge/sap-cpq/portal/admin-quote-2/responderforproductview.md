# ResponderForProductView | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/ebe7b63c3d7e4c5ba8b35a6c1be21c38.html?locale=en-US&state=PRODUCTION&version=2603
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
ResponderForProductView

If the responsive template ResponderForProductView is customized, you need to check the template notation for invalid Razor code lines and follow the instructions to correct it so that it passes the Razor validation.

Fixing Invalid Razor Code
Note

The line numbers refer to the default templates with no customization. If your template is customized, the line number for the invalid code might differ.

Line 7: @if (AppParams["BASE_PRICE_TYPE_IN_CONFIG"].AsInt == 2)

Remove from line 7:



@if (AppParams["BASE_PRICE_TYPE_IN_CONFIG"].AsInt == 2)

Replace in line 7 with:



@if (BasePriceTypeInConfigurator == 2)
Line 21: @if (AppParams["BASE_PRICE_TYPE_IN_CONFIG"].AsInt == 0)

Remove from line 21:



@if (AppParams["BASE_PRICE_TYPE_IN_CONFIG"].AsInt == 0)

Replace in line 21 with:



@if (BasePriceTypeInConfigurator == 0)
Line 26: @if (AppParams["BASE_PRICE_TYPE_IN_CONFIG"].AsInt == 1)

Remove from line 26:



@if (AppParams["BASE_PRICE_TYPE_IN_CONFIG"].AsInt == 1)

Replace in line 26 with:



@if (BasePriceTypeInConfigurator == 1)
Line 33: @if (AppParams["UseRecurringPriceAndCost"].AsBool)

Remove from line 33:



@if (AppParams["UseRecurringPriceAndCost"].AsBool)

Replace in line 33 with:



@if (UseRecurringPriceAndCost)
Line 35: @if (AppParams["BASE_PRICE_TYPE_IN_CONFIG"].AsInt == 2)

Remove from line 35:



@if (AppParams["BASE_PRICE_TYPE_IN_CONFIG"].AsInt == 2)

Replace in line 35 with:



@if (BasePriceTypeInConfigurator == 2)
Line 49: @if (AppParams["BASE_PRICE_TYPE_IN_CONFIG"].AsInt == 0)

Remove from line 49:



@if (AppParams["BASE_PRICE_TYPE_IN_CONFIG"].AsInt == 0)

Replace in line 49 with:



@if (BasePriceTypeInConfigurator == 0)
Line 54: @if (AppParams["BASE_PRICE_TYPE_IN_CONFIG"].AsInt == 1)

Remove from line 54:



@if (AppParams["BASE_PRICE_TYPE_IN_CONFIG"].AsInt == 1)

Replace in line 54 with:



@if (BasePriceTypeInConfigurator == 1)
Line 67: @if (AppParams["UseRecurringPriceAndCost"].AsBool)

Remove from line 67:



@if (AppParams["UseRecurringPriceAndCost"].AsBool)

Replace in line 67 with:



@if (UseRecurringPriceAndCost)
Line 69: if (AppParams["UseNewQuoteEngine"].AsBool)

Remove from lines 69-78:



if (AppParams["UseNewQuoteEngine"].AsBool)
{
	<th scope="col">@Translation.Get("Configurator.NRC")</th>
	<th scope="col">@Translation.Get("Configurator.MRC")</th>
}
else
{
	<th scope="col">@Translation.Get("xsltNRC")</th>
	<th scope="col">@Translation.Get("xsltMRC")</th>
}

Replace in line 69 with:



<!-- ko if: useNewQuoteEngine -->
<th scope="col">@Translation.Get("Configurator.NRC")</th>
<th scope="col">@Translation.Get("Configurator.MRC")</th>
<!-- /ko -->

<!-- ko if: !useNewQuoteEngine -->
<th scope="col">@Translation.Get("xsltNRC")</th>
<th scope="col">@Translation.Get("xsltMRC")</th>
<!-- /ko -->
Line 102: @if (AppParams["UseRecurringPriceAndCost"].AsBool)

Remove from line 102:



@if (AppParams["UseRecurringPriceAndCost"].AsBool)

Replace in line 102 with:



@if (UseRecurringPriceAndCost)
Line 113: @if (AppParams["UseRecurringPriceAndCost"].AsBool)

Remove from line 113:



@if (AppParams["UseRecurringPriceAndCost"].AsBool)

Replace in line 113 with:



@if (UseRecurringPriceAndCost)
Line 140: @if (AppParams["UseRecurringPriceAndCost"].AsBool)

Remove from line 140:



@if (AppParams["UseRecurringPriceAndCost"].AsBool)

Replace in line 140 with:



@if (UseRecurringPriceAndCost)
Line 157: @if (AppParams["UseRecurringPriceAndCost"].AsBool)

Remove from line 157:



@if (AppParams["UseRecurringPriceAndCost"].AsBool)

Replace in line 157 with:



@if (UseRecurringPriceAndCost)
Yes
No