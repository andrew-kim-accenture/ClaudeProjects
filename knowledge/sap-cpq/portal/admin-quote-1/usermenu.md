# UserMenu | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/65dc6dbdfca445b9a9f02bdc1b91f65b.html?locale=en-US&state=PRODUCTION&version=2603
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
UserMenu

If the responsive template UserMenu is customized, you need to check the template notation for invalid Razor code lines and follow the instructions to correct it so that it passes the Razor validation.

Fixing Invalid Razor Code
Note

The line numbers refer to the default templates with no customization. If your template is customized, the line number for the invalid code might differ.

Line 1: @using Webcom.Configurator

Remove from lines 1-4:



@using Webcom.Configurator
@using Webcom.Configurator.Crm.SalesForce
<li id="userMenu" class="@(SFEnvironment.UserCameFromSF ? "userdrop" : "hide-userdrop fix-color") shellbar-navigation-item">


Replace in line 1 with:



<li id="userMenu" data-bind="css: { 'userdrop': userCameFromSF, 'hide-userdrop fix-color': !userCameFromSF, 'hidden': (isGuestUserLoggedIn || isElectronicallyGuestLoggedIn || shouldHideOptions) }" class="shellbar-navigation-item hidden">


Line 12: @HttpUtility.JavaScriptStringEncode(UserEnvironment.Current.User.Name)

Remove from lines 12-16:



<span class="initials" data-bind="text: getUserInitials('@HttpUtility.JavaScriptStringEncode(UserEnvironment.Current.User.Name)')"></span>
<div class="user-info">
	<span class="user-name">@UserEnvironment.Current.User.Name</span>
	<span class="user-position">@UserEnvironment.Current.User.UserType.Name</span>
</div>


Replace in lines 12-16 with:



<span class="initials" data-bind="text: getUserInitials(fullName)"></span>
<div class="user-info">
	<span class="user-name" data-bind="text: fullName"></span>
	<span class="user-position" data-bind="text: userType"></span>
</div>

Line 19: @if (UserEnvironment.CanBulkReassignQuotes)

Remove from lines 19-64:



@if (UserEnvironment.CanBulkReassignQuotes)
{
	<li><a href="/multiusers/BulkQuoteReassign.aspx">@Translation.Get("Multiusers.master.BulkQuoteReassign")</a></li>
}
@if (UserEnvironment.CanManageCompaniesLocaly)
{
	<li><a href="/multiusers/UserAdministerCompaniesList.aspx">@Translation.Get("Multiusers.master.AdministerCompanies")</a></li>
}
@if (UserEnvironment.CanManageGlobalTemplates)
{
	<li><a href="/multiusers/DocumentGenerationGlobalTemplateList.aspx">@Translation.Get("DocumentGenerationTemplates.ManageGlobalDocumentTemplates")</a></li>
}
@if (UserEnvironment.CanManageDocumentTemplates)
{
	<li><a href="/multiusers/DocumentGenerationContentList.aspx">@Translation.Get("DocumentGenerationTemplates.ManageContentDocuments")</a></li>
}
@if (!AppParams.IsBusinessPartnersEnabled)
{
	<li><a href="/multiusers/UserManageCustomer.aspx">@Translation.Get("Multiusers.master.ManageCustomers")</a></li>
}
@if (UserEnvironment.CanManageDocumentTemplates)
{
	<li><a href="/multiusers/DocumentGenerationTemplateList.aspx">@Translation.Get("DocumentGenerationTemplates.ManageDocumentTemplates")</a></li>
}
<li><a href="/multiusers/ManageGeneratedQuotes.aspx">@Translation.Get("Multiusers.master.ManageGeneratedQuotes")</a></li>
@if (!AppParams["HideDelagationOfAuthorityForPricebooks"].AsBool && UserEnvironment.CanManagePricebooks)
{
	<li><a href="/multiusers/PricebookTableList.aspx">@Translation.Get("PricebookTableList.ManagePricebooks")</a></li>
}
@if (UserEnvironment.CanManageProducts)
{
	<li><a href="/multiusers/ProductList.aspx">@Translation.Get("multiusers.ManageProducts")</a></li>
}
@if (UserEnvironment.CanManageCustomTables)
{
	<li><a href="/multiusers/CustomTablesList.aspx">@Translation.Get("multiusers.CustomTablesList.Title")</a></li>
}
@if (UserEnvironment.CanManageUsersLocaly)
{
	<li><a href="/multiusers/UserAdministerUsersList.aspx">@Translation.Get("Multiusers.master.AdministerUsers")</a></li>
}
<li><a href="/multiusers/QuoteLayout.aspx">@Translation.Get("multiusers.QuoteLayout")</a></li>
@if (UserEnvironment.CanUseReportModule)
{
	<li><a href="/stats/ReportModule.aspx">@Translation.Get("Multiusers.master.Reports")</a></li>
}


Replace in line 19 with:



<li><a href="/multiusers/UserPersonalizationPage.aspx">@Translation.Get("Default.master.UserPage")</a></li>
<li class="hidden" data-bind="css: { hidden : !canBulkReassignQuotes }"><a href="/multiusers/BulkQuoteReassign.aspx">@Translation.Get("Multiusers.master.BulkQuoteReassign")</a></li>
<li class="hidden" data-bind="css: { hidden : !canManageCompaniesLocaly }"><a href="/multiusers/UserAdministerCompaniesList.aspx">@Translation.Get("Multiusers.master.AdministerCompanies")</a></li>
<li class="hidden" data-bind="css: { hidden : !canManageGlobalTemplates }"><a href="/multiusers/DocumentGenerationGlobalTemplateList.aspx">@Translation.Get("DocumentGenerationTemplates.ManageGlobalDocumentTemplates")</a></li>
<li class="hidden" data-bind="css: { hidden : !canManageDocumentTemplates }"><a href="/multiusers/DocumentGenerationContentList.aspx">@Translation.Get("DocumentGenerationTemplates.ManageContentDocuments")</a></li>
<li class="hidden" data-bind="css: { hidden : isBusinessPartnersEnabled }"><a href="/multiusers/UserManageCustomer.aspx">@Translation.Get("Multiusers.master.ManageCustomers")</a></li>
<li class="hidden" data-bind="css: { hidden : !canManageDocumentTemplates }"><a href="/multiusers/DocumentGenerationTemplateList.aspx">@Translation.Get("DocumentGenerationTemplates.ManageDocumentTemplates")</a></li>
<li><a href="/multiusers/ManageGeneratedQuotes.aspx">@Translation.Get("Multiusers.master.ManageGeneratedQuotes")</a></li>        
<li class="hidden" data-bind="css: { hidden : !canManageProducts }"><a href="/multiusers/ProductList.aspx">@Translation.Get("multiusers.ManageProducts")</a></li>
<li class="hidden" data-bind="css: { hidden : !canManageCustomTables }"><a href="/multiusers/CustomTablesList.aspx">@Translation.Get("multiusers.CustomTablesList.Title")</a></li>
<li class="hidden" data-bind="css: { hidden : !canManageUsersLocaly }"><a href="/multiusers/UserAdministerUsersList.aspx">@Translation.Get("Multiusers.master.AdministerUsers")</a></li>
<li><a href="/multiusers/QuoteLayout.aspx">@Translation.Get("multiusers.QuoteLayout")</a></li>
<li class="hidden" data-bind="css: { hidden : !canUseReportModule }"><a href="/stats/ReportModule.aspx">@Translation.Get("Multiusers.master.Reports")</a></li>


Yes
No