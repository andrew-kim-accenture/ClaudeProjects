# Razor Validation in Responsive Templates | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f21989f09f494ce1a537942ae2523dc6/63497a49978945ceab59d744c3738ab0.html?locale=en-US&state=PRODUCTION&version=2603
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
Razor Validation in Responsive Templates

Razor code is validated in custom responsive templates. You can learn the allowed syntax and find instructions about how to correct invalid code in your environment.

Details

When you make changes to a custom responsive template and save it, the razor code is checked for invalid lines. Razor validation ensures that no custom C# code is used, as this code could lead to security and stability issues.

Currently, you can still save changes to a custom template that contains invalid code. A warning appears pointing to the line number that must be fixed. From the SAP CPQ 2311 release onwards, you will only be able to save the template after the code is fixed. This page explains which razor syntax is allowed, which isn't and how to correct it.

To learn more about razor code, see Razor in W3Schools.

Valid Razor Syntax

You can see the allowed razor syntax for responsive templates when you create or edit a customized template. You do this under Setup  UI Design  Responsive Templates, for details see Customize Templates. The template notation under the Default template section contains only valid razor syntax.

Inline Expressions

In all customized templates, the following inline expressions are valid:

@Html.Partial

@Translation

Other inline expressions, such as @UserEnvironment, are valid only in specific templates. For template-specific syntax, you see in the default template which expressions are allowed.

No restrictions apply to standard Razor expressions such as @DateTime.

Invalid Razor Syntax

Razor syntax that is reserved for internal use in the SAP CPQ core code is no longer allowed in custom templates.

To see if your custom template contains invalid Razor syntax, just open the template details and choose Save. Upon saving, the Razor validation is run and a warning message informs you about any invalid lines found.

Inline Expressions

In most of the affected templates, the following inline expressions are invalid:

@using: All lines with this expression must be removed from the affected templates, no alternative code is available. The template instructions specify for which templates this applies.

@if: If statements are replaced with knockout variables. You find the exact replacement code for each statement in the template instructions

Example

The statement @if (CatalogController.FavoritesEnabled) has been replaced with the new knockout variable enableProductFavourites, which you can access like this: $parent.enableProductFavourites.

Fixing Invalid Code
Procedure

If you have customized a template from the list of affected templates, you need to manually correct the code of the custom template as follows:

Go to Setup  UI Design  Responsive Templates.

Edit the corresponding custom template.

Under Content  New template, make the necessary adjustments.

You find the instructions for each template in Affected Templates.

Save your changes.

If the custom template still contains invalid code, a warning appears pointing to the line number that must be fixed.

Notes

In your custom template, you might find custom invalid code that isn't mentioned in the instructions. The instructions are based on the default templates and only consider internal Razor code that was still allowed for responsive templates before the introduction of Razor validation with the 2308 release. We recommend that you use the instructions as a reference to learn how to detect and fix problematic lines.

Razor validation doesn't impact frozen templates.

Apart from deleting or replacing problematic custom code, you can also consider implementing workarounds through scripting and knockout. For more information, see Fetching Additional Data from Server.

You also need to remove the following code elements:

Any occurrences of .NET custom code.

Special characters and the enclosed logic that are part of the invalid Razor blocks or statements.

For example, opening and closing curly brackets { }, or else and else if blocks.

If special characters are kept in a customized template, the template still works. However, the special characters would be rendered as regular text on the user interface and be visible to users. Any logic enclosed by the special characters, such as HTML elements, would be broken and therefore visible as text too.

Limitations of the Razor validation:

The validation is run only for Razor code. Errors in code blocks of other syntaxes aren't detected.

For example, @foreach blocks aren't validated, only @if statements.

Blocks of else {} and else if {} conditions are validated only if they start with a @ symbol.

The validation does not check parts of the namespace.

For example, if a template requires the expression @UserEnvironment.Domain, then any property of the UserEnvironment object is allowed in the template.

Use of "@" sign with combination of any restricted Razor key words is forbidden.

For example: @Url.Content("additionalfiles/") + "SAPfile.pdf" is not allowed. In order to resolve this issue, follow these recommendations:

Break the line after @Url.MTContent("additionalfiles/"), just before the + sign

Replace existing line of code containing whole <a> element with the code below:

@{

string mtContent = @Url.MTContent("additionalfiles/");

mtContent = mtContent + "Cheat Sheet/SAPCPQCatalogueCheatSheetJan2023Ver5.pdf";

<a id = "idQuoteCheatSheet" data-bind="style: { 'display': !isASAQuote_forCheatSheetCatalog($data) ? 'initial' : 'none' }" href="@mtContent" target="_blank" ><span class="sap-icon" >tetsdtds</span></a>

}

Replace existing line of code containing whole <a> element with the code below:

<a id = "idQuoteCheatSheet" data-bind="style: { 'display': !isASAQuote_forCheatSheetCatalog($data) ? 'initial' : 'none' },attr: {href: 'mt/(PLACE_YOUR_TENANT_NAME_HERE)/additionalfiles/")' + 'Cheat Sheet/SAPCPQCatalogueCheatSheetJan2023Ver5.pdf' }" target="_blank"><span class="sap-icon" >&#xe1c3;</span></a>

Rename the pdf file if possible not to contain SAP or do not write SAP in capital letters.

Example

The following screenshots show an example on how to fix invalid code, in this case for the CartListPage template. You can see that we not only remove the inline expressions, but also opening and closing curly brackets { }, and an else block.

Before and After for Lines 1-3
Before and After for Lines 100-104
Affected Templates

This list contains the templates that have been modified due to the Razor validation. Any customization of the affected templates that was created before the introduction of Razor validation in 2308 might contain invalid code lines that must be fixed. All other templates have not been changed. Nevertheless, the Razor validation is applied to all templates.

Open the instructions for each template to learn how to detect and fix invalid Razor code:

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

On this page
Details
Valid Razor Syntax
Invalid Razor Syntax
Fixing Invalid Code
Affected Templates
Yes
No