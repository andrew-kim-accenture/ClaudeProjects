# HomePage | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/5eaf7eaff1eb4b99b17abe84fc1b8da0.html?locale=en-US&state=PRODUCTION&version=2603
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
HomePage

If the responsive template HomePage is customized, you need to check the template notation for invalid Razor code lines and follow the instructions to correct it so that it passes the Razor validation.

Fixing Invalid Razor Code
Note

The line numbers refer to the default templates with no customization. If your template is customized, the line number for the invalid code might differ.

Line 10: @if (Webcom.Configurator.Core.AppParams.Current.BulkValidationShow)

Remove from line 10:



@if (Webcom.Configurator.Core.AppParams.Current.BulkValidationShow)

Replace in line 10 with:



@if (BulkValidationShow)
Yes
No