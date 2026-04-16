# CartSummary | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/b3b18302318d46e6b4583fd5899c2dbc.html?locale=en-US&state=PRODUCTION&version=2603
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
CartSummary

If the responsive template CartSummary is customized, you need to check the template notation for invalid Razor code lines and follow the instructions to correct it so that it passes the Razor validation.

Fixing Invalid Razor Code
Note

The line numbers refer to the default templates with no customization. If your template is customized, the line number for the invalid code might differ.

Line 1: @using Webcom.Configurator

Remove from lines 1-3:



@using Webcom.Configurator
@using Webcom.Configurator.Crm.SalesForce
<li id="cartSummaryMenu" class="current-quote current-quote-and-favorites shellbar-navigation-item" data-bind="visible: isQuoteEnvironmentExists, css: { 'disabled': document.location.pathname == '/quotation/Cart.aspx' }" style="display: none;">



Replace in line 1 with:



<li id="cartSummaryMenu" class="current-quote current-quote-and-favorites shellbar-navigation-item hidden" data-bind="visible: isQuoteEnvironmentExists, css: { 'disabled': document.location.pathname == '/quotation/Cart.aspx', 'hidden':  shouldHideOptions || isElectronicallyGuestLoggedIn }" style="display: none;">


Line 46: @if (@Model && UserEnvironment.IsGuestUserLoggedIn)

Remove from lines 46-49:



@if (@Model && UserEnvironment.IsGuestUserLoggedIn)
{
	<li class="guest-user-login-button">

Replace in line 46 with:



<li class="guest-user-login-button hidden" data-bind="css: { hidden : !isGuestUserLoggedIn }">

Yes
No