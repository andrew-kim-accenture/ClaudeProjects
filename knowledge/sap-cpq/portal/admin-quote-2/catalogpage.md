# CatalogPage | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/d51335ebf2bf4918bf1ad2fdfc69866c.html?locale=en-US&state=PRODUCTION&version=2603
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
CatalogPage

If the responsive template CatalogPage is customized, you need to check the template notation for invalid Razor code lines and follow the instructions to correct it so that it passes the Razor validation.

Fixing Invalid Razor Code
Note

The line numbers refer to the default templates with no customization. If your template is customized, the line number for the invalid code might differ.

Line 1: @using Webcom.API.RD.Catalog

Remove from line 1:



@using Webcom.API.RD.Catalog

No replacement code.

Line 2: @using CatalogController = Webcom.API.RD.Catalog.CatalogController

Remove from line 2:



@using CatalogController = Webcom.API.RD.Catalog.CatalogController

No replacement code.

Line 20: @if (AppParams["DISPLAY_PRODUCTS_FIRST"].AsBool)

Remove from line 20:



@if (AppParams["DISPLAY_PRODUCTS_FIRST"].AsBool)

Add to line 22:



<!-- ko if: displayProductFirst -->

Add to line 30:



<!-- /ko -->
Line 32: @if (!AppParams["HIDE_CATEGORIES_WITHIN_CATALOG"].AsBool && !AppParams["DISPLAY_PRODUCTS_FIRST"].AsBool)

Remove from lines 32-34:



@if  (!AppParams["HIDE_CATEGORIES_WITHIN_CATALOG"].AsBool && !AppParams["DISPLAY_PRODUCTS_FIRST"].AsBool)
<h3 class="catalog-page-heading">@Translation.Get("xmlCategories")</h3>


Replace in line 32 with:



<h3 class="catalog-page-heading hidden" data-bind="css: { hidden : hideCategoriesWithinCatalog || displayProductFirst}">@Translation.Get("xmlCategories")</h3>

Line 38-40: @if (!AppParams["HIDE_CATEGORIES_WITHIN_CATALOG"].AsBool && !AppParams["DISPLAY_PRODUCTS_FIRST"].AsBool)

Remove from lines 38-40:



@if  (!AppParams["HIDE_CATEGORIES_WITHIN_CATALOG"].AsBool && !AppParams["DISPLAY_PRODUCTS_FIRST"].AsBool)
<h3 class="catalog-page-heading">@Translation.Get("xmlCategories")</h3>


Replace in line 38 with:



<h3 class="catalog-page-heading hidden" data-bind="css: { hidden : hideCategoriesWithinCatalog || displayProductFirst}">@Translation.Get("xmlCategories")</h3>

Line 260: @if (!AppParams["HIDE_CATEGORIES_WITHIN_CATALOG"].AsBool && !AppParams["DISPLAY_PRODUCTS_FIRST"].AsBool)

Remove from line 260:



@if (!AppParams["HIDE_CATEGORIES_WITHIN_CATALOG"].AsBool && !AppParams["DISPLAY_PRODUCTS_FIRST"].AsBool)


Replace in line 260 with:



<!-- ko if: !hideCategoriesWithinCatalog && !displayProductFirst -->

And add to line 267:



<!-- /ko -->
Line 270: @if (!AppParams["DISPLAY_PRODUCTS_FIRST"].AsBool)

Remove from lines 270-272:



@if (!AppParams["DISPLAY_PRODUCTS_FIRST"].AsBool)
<h3 class="catalog-page-heading">@Translation.Get("xmlProducts")</h3>

Replace in line 270 with:



<h3 class="catalog-page-heading hidden" data-bind="css: { hidden : displayProductFirst }">@Translation.Get("xmlProducts")</h3>

Line 316: @if (!AppParams["HIDE_CATEGORIES_WITHIN_CATALOG"].AsBool && !AppParams["DISPLAY_PRODUCTS_FIRST"].AsBool)

Remove from line 316:



@if (!AppParams["HIDE_CATEGORIES_WITHIN_CATALOG"].AsBool && !AppParams["DISPLAY_PRODUCTS_FIRST"].AsBool)


Replace in line 316 with:



<!-- ko if: !hideCategoriesWithinCatalog && displayProductFirst -->

Add to line 324:



<!-- /ko -->
Line 333: @if (AppParams["ALLOW_CATALOGUE_COMPARING"].AsBool && (CatalogViewDetailsSettings)AppParams["CATALOGUE_ALLOW_VIEW_DETAIL"].AsInt == CatalogViewDetailsSettings.InModalPopup)

Remove from line 333:



@if (AppParams["ALLOW_CATALOGUE_COMPARING"].AsBool && (CatalogViewDetailsSettings)AppParams["CATALOGUE_ALLOW_VIEW_DETAIL"].AsInt == CatalogViewDetailsSettings.InModalPopup)


Replace in line 333 with:



<!-- ko if: allowCatalogueComparing && catalogAllowViewDetails == 1 -->


Add to line 356:



<!-- /ko -->
Line 371: @if (AppParams["ALLOW_CATALOGUE_COMPARING"].AsBool)

Remove from line 371:



@if (AppParams["ALLOW_CATALOGUE_COMPARING"].AsBool)

Replace in line 371 with:



<!-- ko if: allowCatalogueComparing -->

Add to line 374:



<!-- /ko -->
Line 393: @if (CatalogController.FavoritesEnabled)

Remove from line 393:



@if (CatalogController.FavoritesEnabled)

Replace in line 393 with:



<!-- ko if: $parent.enableProductFavorites -->

Add to line 400:



<!-- /ko -->
Line 415: @if (AppParams["UseNewQuoteEngine"].AsBool)

Remove from lines 415-424:



@if (AppParams["UseNewQuoteEngine"].AsBool)
{
	<div class="sb-prices-section"><div data-bind="text:oneTimePrice"></div><div tabindex="0" 		  class="sb-price-tag-label">@Translation.Get("SB.Catalog.OneTimeLabel")</div></div>
	<div class="sb-prices-section"><div data-bind="text:totalRecurringPrice"></div><div tabindex="0" class="sb-price-tag-label">@Translation.Get("SB.Catalog.RecurringLabel")</div></div>
}
else
{
	<div class="sb-prices-section"><div data-bind="text:oneTimePrice"></div><div tabindex="0" class="sb-price-tag-label">@Translation.Get("xsltNRC")</div></div>
	<div class="sb-prices-section"><div data-bind="text:totalRecurringPrice"></div><div tabindex="0" class="sb-price-tag-label">@Translation.Get("xsltMRC")</div></div>
}


Replace in line 415 with:



<div class="sb-prices-section">
	<div data-bind="text:oneTimePrice"></div>
	<div tabindex="0" class="sb-price-tag-label" data-bind="text: $parent.useNewQuoteEngine ? '@Translation.Get("SB.Catalog.OneTimeLabel")' : '@Translation.Get("xsltNRC")' "></div>
</div>
<div class="sb-prices-section">
	<div data-bind="text:totalRecurringPrice"></div>
	<div tabindex="0" class="sb-price-tag-label" data-bind="text: $parent.useNewQuoteEngine ? '@Translation.Get("SB.Catalog.RecurringLabel")' : '@Translation.Get("xsltMRC")' "></div>
</div>

Line 483: @if (AppParams["ALLOW_CATALOGUE_COMPARING"].AsBool)

Remove from line 483:



@if (AppParams["ALLOW_CATALOGUE_COMPARING"].AsBool)

Replace in line 483 with:



<!-- ko if: allowCatalogueComparing -->

And add to line 491:



<!-- /ko -->
Line 510: @if (CatalogController.FavoritesEnabled)

Remove from line 510:



@if (CatalogController.FavoritesEnabled)

Replace in line 510 with:



<!-- ko if: $parent.enableProductFavorites -->

Add to line 517:



<!-- /ko -->
Line 539: @if (AppParams["UseNewQuoteEngine"].AsBool)

Remove lines 539-548:



@if (AppParams["UseNewQuoteEngine"].AsBool)
	{
	<div class="sb-prices-section"><div data-bind="text:oneTimePrice"></div><div tabindex="0" 		  class="sb-price-tag-label">@Translation.Get("SB.Catalog.OneTimeLabel")</div></div>
	<div class="sb-prices-section"><div data-bind="text:totalRecurringPrice"></div><div tabindex="0" class="sb-price-tag-label">@Translation.Get("SB.Catalog.RecurringLabel")</div></div>
	}
	else
	{
	<div class="sb-prices-section"><div data-bind="text:oneTimePrice"></div><div tabindex="0" class="sb-price-tag-label">@Translation.Get("xsltNRC")</div></div>
	<div class="sb-prices-section"><div data-bind="text:totalRecurringPrice"></div><div tabindex="0" class="sb-price-tag-label">@Translation.Get("xsltMRC")</div></div>
	}


Replace in line 539 with:



<div class="sb-prices-section">
		<div data-bind="text:oneTimePrice"></div>
		<div tabindex="0" class="sb-price-tag-label" data-bind="text: $parent.useNewQuoteEngine ? '@Translation.Get("SB.Catalog.OneTimeLabel")' : '@Translation.Get("xsltNRC")' "></div>
		</div>
	<div class="sb-prices-section">
	<div data-bind="text:totalRecurringPrice"></div>
	<div tabindex="0" class="sb-price-tag-label" data-bind="text: $parent.useNewQuoteEngine ? '@Translation.Get("SB.Catalog.RecurringLabel")' : '@Translation.Get("xsltMRC")' "></div>
	</div>

Line 635: @if (AppParams["UseNewQuoteEngine"].AsBool)

Remove lines 635-644:



@if (AppParams["UseNewQuoteEngine"].AsBool)
		{
		<div class="sb-prices-section"><div data-bind="text:oneTimePrice"></div><div tabindex="0" 		  class="sb-price-tag-label">@Translation.Get("SB.Catalog.OneTimeLabel")</div></div>
		<div class="sb-prices-section"><div data-bind="text:totalRecurringPrice"></div><div tabindex="0" class="sb-price-tag-label">@Translation.Get("SB.Catalog.RecurringLabel")</div></div>
		}
		else
		{
		<div class="sb-prices-section"><div data-bind="text:oneTimePrice"></div><div tabindex="0" class="sb-price-tag-label">@Translation.Get("xsltNRC")</div></div>
		<div class="sb-prices-section"><div data-bind="text:totalRecurringPrice"></div><div tabindex="0" class="sb-price-tag-label">@Translation.Get("xsltMRC")</div></div>
		}


Replace in line 635 with:



<div class="sb-prices-section">
		<div data-bind="text:oneTimePrice"></div>
		<div tabindex="0" class="sb-price-tag-label" data-bind="text: $parent.useNewQuoteEngine ? '@Translation.Get("SB.Catalog.OneTimeLabel")' : '@Translation.Get("xsltNRC")' "></div>
		</div>
		<div class="sb-prices-section">
		<div data-bind="text:totalRecurringPrice"></div>
		<div tabindex="0" class="sb-price-tag-label" data-bind="text: $parent.useNewQuoteEngine ? '@Translation.Get("SB.Catalog.RecurringLabel")' : '@Translation.Get("xsltMRC")' "></div>
		</div>

Line 778: @if (CatalogController.FavoritesEnabled)

Remove from line 778:



@if (CatalogController.FavoritesEnabled)

Replace in line 778 with:



<!-- ko if: $parent.enableProductFavorites -->

Add to line 785:



<!-- /ko -->
Yes
No