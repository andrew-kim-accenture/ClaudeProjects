# MainMenu | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/b330e688dfab4777a6d83e5478768fd5.html?locale=en-US&state=PRODUCTION&version=2603
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
MainMenu

If the responsive template MainMenu is customized, you need to check the template notation for invalid Razor code lines and follow the instructions to correct it so that it passes the Razor validation.

Fixing Invalid Razor Code
Note

The line numbers refer to the default templates with no customization. If your template is customized, the line number for the invalid code might differ.

Line 1: @using Webcom.Common.Util

Remove from lines 1-5:



@using Webcom.Common.Util
@using Webcom.Configurator
@using Webcom.Configurator.Crm.SalesForce
@using WebSite.Controllers
@using Webcom.Configurator.Core

Replace in line 1 with:



@using WebSite.Controllers
Line 8: @if (!UserEnvironment.ShouldHideMenu)

Remove from lines 8-11:



@if (!UserEnvironment.ShouldHideMenu)
<header class="@(SFEnvironment.UserCameFromSF ? "sf-header fiori3-sf-header" : "")">
	<div id="headerContainer" class="row cald_header_bar @(!UserEnvironment.LandedFromC4C ? "" : "wrap-when-landing-C4C")">


Replace in line 8 with:



<header>
	<div id="headerContainer" class="row cald_header_bar hidden" data-bind="css: {'sf-header fiori3-sf-header': userCameFromSF, 'hidden': shouldHideMenu, 'wrap-when-landing-C4C': !landedFromC4C }">


Line 19: @if (!UserEnvironment.IsElectronicallyGuestLoggedIn)

Remove from lines 19-21:



if (!UserEnvironment.IsElectronicallyGuestLoggedIn)
{
	<li class="shellbar-navigation-item"><a aria-label="@Translation.GetJS("quotation.ProposalMain.NewProject")" href="#" data-bind="click: createNewCart, tooltip: { title: '@Translation.GetJS("quotation.ProposalMain.NewProject")', placement: 'left', viewport: 'header' }" class="fiori3-create-new-quote-icon create-new-quote-icon nav-menu-icon">&#xe12b;</a></li>



Replace in line 19 with:



<li class="shellbar-navigation-item hidden" data-bind="css: { hidden : isElectronicallyGuestLoggedIn }"><a aria-label="@Translation.GetJS("quotation.ProposalMain.NewProject")" href="#" data-bind="click: createNewCart, tooltip: { title: '@Translation.GetJS("quotation.ProposalMain.NewProject")', placement: 'left', viewport: 'header' }" class="fiori3-create-new-quote-icon create-new-quote-icon nav-menu-icon">&#xe12b;</a></li>


Line 24: @if (!UserEnvironment.ShouldHideOptions && !UserEnvironment.IsElectronicallyGuestLoggedIn)

Remove from line 24:



@if (!UserEnvironment.ShouldHideOptions && !UserEnvironment.IsElectronicallyGuestLoggedIn)


No further action required. The new code was moved to line 1 in the RecentlyVisitedObjects template.

Line 30: @if (!UserEnvironment.IsGuestUserLoggedIn && !UserEnvironment.IsElectronicallyGuestLoggedIn && !UserEnvironment.ShouldHideOptions)

Remove from line 30:



@if (!UserEnvironment.IsGuestUserLoggedIn && !UserEnvironment.IsElectronicallyGuestLoggedIn && !UserEnvironment.ShouldHideOptions)


No further action required. The new code was moved to line 1 in the CartSummary template.

Line 51: @(UserEnvironment.LandedFromC4C

Remove from line 51:



<div id="topMenuC4C" class="@(UserEnvironment.LandedFromC4C ? "" : "d-none")">


Replace in line 51 with:



<div id="topMenuC4C" data-bind="css: (landedFromC4C ? '' : 'd-none')">

Line 53: @if (!UserEnvironment.LandedFromC4C || CartController.IsQuoteLoaded)

Remove from lines 53-55:



@if (!UserEnvironment.LandedFromC4C || CartController.IsQuoteLoaded)
{
	<li class="main-list-item @(@ViewBag.CurrentPage == "Catalog" ? "active" : "")">


Replace in line 53 with:



<li class="main-list-item hidden @(@ViewBag.CurrentPage == "Catalog" ? "active" : "")" data-bind="css: {'hidden': landedFromC4C && !isQuoteLoaded}">

Line 61: @if (AppParams.Current.BulkValidationShow && !AppParams.Current.UseNewQuoteEngine)

Remove from lines 61-63:



@if (AppParams.Current.BulkValidationShow && !AppParams.Current.UseNewQuoteEngine)
{
	<li class="main-list-item" data-bind="css: { active: document.location.pathname == '/quotation/BulkValidation.aspx' }">


Replace in line 61 with:



<li class="main-list-item" data-bind="css: { active: document.location.pathname == '/quotation/BulkValidation.aspx', 'hidden': !bulkValidationShow || useNewQuoteEngine }">

Line 75: @if (UserEnvironment.TryIsAdmin)

Remove from lines 75-77:



@if (UserEnvironment.TryIsAdmin)
{
	<li data-bind="if: setupLinksVisibility.isSetupLinkVisible()">


Replace in lines 75:



<li class="hidden" data-bind="if: setupLinksVisibility.isSetupLinkVisible(), css: { hidden : !tryIsAdmin }">

Line 82: <li data-bind="if: setupLinksVisibility.isDevelopConsoleLinkVisible()">

Remove from line 82:



<li data-bind="if: setupLinksVisibility.isDevelopConsoleLinkVisible()">


Replace in line 82 with:



<li class="hidden" data-bind="if: setupLinksVisibility.isDevelopConsoleLinkVisible(), css: { hidden : !tryIsAdmin }">

Line 87: @Translation.Get("Default.master.UserPage")

Remove from line 87:



<li><a href="/multiusers/UserPersonalizationPage.aspx">@Translation.Get("Default.master.UserPage")</a></li>


Replace in line 87 with:



<li class="hidden" data-bind="css: { hidden : !tryIsAdmin }"><a href="/multiusers/UserPersonalizationPage.aspx">@Translation.Get("Default.master.UserPage")</a></li>

Line 88: @Translation.Get("multiusers.QuoteLayout")

Remove from line 88:



<li><a href="/multiusers/QuoteLayout.aspx">@Translation.Get("multiusers.QuoteLayout")</a></li>


Replace in line 88 with:



<li class="hidden" data-bind="css: { hidden : !tryIsAdmin }"><a href="/multiusers/QuoteLayout.aspx">@Translation.Get("multiusers.QuoteLayout")</a></li>

Line 89: <li data-bind="if: setupLinksVisibility.isEventLogLinkVisible()">

Remove from line 89:



<li data-bind="if: setupLinksVisibility.isEventLogLinkVisible()">

Replace in line 89 with:



<li class="hidden" data-bind="if: setupLinksVisibility.isEventLogLinkVisible(), css: { hidden : !tryIsAdmin }">

Line 105: @if (!UserEnvironment.IsGuestUserLoggedIn && !UserEnvironment.IsElectronicallyGuestLoggedIn && !UserEnvironment.ShouldHideOptions)

Remove from lines 104-108:



<div id="sideMenuContainer" data-bind="visible: isInitialized" style="display: none" class="@(!UserEnvironment.LandedFromC4C ? "" : "d-none")">
	@if (!UserEnvironment.IsGuestUserLoggedIn && !UserEnvironment.IsElectronicallyGuestLoggedIn && !UserEnvironment.ShouldHideOptions)
	{
	 <div class="nav" role="navigation">


Replace in line 104 with:



<div id="sideMenuContainer" data-bind="visible: isInitialized, css: (!landedFromC4C ? '' : 'd-none')" style="display: none">
    <div class="nav hidden" role="navigation" data-bind="css: { hidden : isGuestUserLoggedIn || isElectronicallyGuestLoggedIn || shouldHideOptions }">


Line 118: @if (AppParams.Current.BulkValidationShow && !AppParams.Current.UseNewQuoteEngine)

Remove from lines 118-120:



@if (AppParams.Current.BulkValidationShow && !AppParams.Current.UseNewQuoteEngine)
{
	<li class="side-menu-main-icon clearfix full-width bulk-validation-side-menu-main-icon" data-bind="css: { active: document.location.pathname == '/quotation/BulkValidation.aspx' }">



Replace in line 118 with:



<li class="side-menu-main-icon clearfix full-width bulk-validation-side-menu-main-icon hidden" data-bind="css: { active: document.location.pathname == '/quotation/BulkValidation.aspx', 'hidden' : !bulkValidationShow || useNewQuoteEngine }">


Line 129: @if (AssetsController.HasVisibleColumns() && !AppParams.Current.UseNewQuoteEngine)

Remove from lines 129-131:



@if (AssetsController.HasVisibleColumns() && !AppParams.Current.UseNewQuoteEngine)
{
	<li class="side-menu-main-icon clearfix full-width" data-bind="css: { active: document.location.pathname == '/Assets' }">



Replace in line 129 with:



<li class="side-menu-main-icon clearfix full-width hidden" data-bind="css: { active: document.location.pathname == '/Assets', hidden : !hasVisibleColumns || useNewQuoteEngine }">


Line 148: @if (@ApprovalsController.GetParsedCPQTagValue(AppParams["ApproveQuotes_VisibilCond"].AsString))

Remove from lines 148-150:



@if (@ApprovalsController.GetParsedCPQTagValue(AppParams["ApproveQuotes_VisibilCond"].AsString))
{
	<li class="side-menu-main-icon clearfix full-width @(@ViewBag.CurrentPage == "Approvals" ? "active" : "")">



Replace in line 148 with:



<li class="side-menu-main-icon clearfix full-width hidden @(@ViewBag.CurrentPage == "Approvals" ? "active" : "")" data-bind="css: { hidden: !parsedCPQTagValue() }">


Line 159: @if (UserEnvironment.TryIsAdmin)

Remove from line 159:



@if (UserEnvironment.TryIsAdmin)

No replacement code.

Line 165: <li id="setupMenu" class="side-menu-main-icon">

Remove from line 165:



<li id="setupMenu" class="side-menu-main-icon">

Replace in line 165 with:



<li id="setupMenu" class="side-menu-main-icon hidden" data-bind="css: { hidden : !tryIsAdmin }">

Line 196: else if (UserEnvironment.TryIsImpersonated)

Remove from lines 196-198:



else if (UserEnvironment.TryIsImpersonated)
{
	<li id="setupMenu" class="side-menu-main-icon">

Replace in line 196 with:



<li id="setupMenu" class="side-menu-main-icon hidden" data-bind="css: { hidden : !tryIsImpersonated }">

Line 219: else if (SFEnvironment.UserCameFromSF)

Remove from lines 219-222:



else if (SFEnvironment.UserCameFromSF)
{
    <div id="headerContainer" class="inline-cart-summary clearfix">

Replace in line 219 with:



<div id="headerContainer" class="inline-cart-summary clearfix hidden" data-bind="css: { hidden : !userCameFromSF }">

Yes
No