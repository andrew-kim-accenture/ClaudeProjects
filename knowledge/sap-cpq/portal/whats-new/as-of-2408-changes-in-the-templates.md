# As of 2408: Changes in the Templates | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/7c438e89e6a74b5489d47ea254893207.html?version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ What's NewVersion: 2603English
Provide feedback on our search

	
What's New Library
	
Breaking Changes and Announcements


	
Latest Breaking Changes and Announcements
	
Archive of Breaking Changes and Announcements


	
SAP CPQ 2602 Breaking Changes and Announcements
	
SAP CPQ 2511 Breaking Changes and Announcements
	
SAP CPQ 2508 Breaking Changes and Announcements
	
SAP CPQ 2505 Breaking Changes and Announcements
	
SAP CPQ 2502 Breaking Changes and Announcements
	
SAP CPQ 2411 Breaking Changes and Announcements
	
SAP CPQ 2408 Breaking Changes and Announcements


	
As of 2408: Deprecation of Property Label on Scripting.Quote.IQuoteItemCustomField
	
As of 2408: Introduction of AND / OR Logic in Branching
	
As of 2408: Approvals Page Template Customization Update
	
As of 2408: The User Is Unable to Add CPS Items to the Quote
	
As of 2408: Changes in the Templates
	
As of 2408: Monthly Fields Relocated to General Settings Page from BRIM Set Up Page
	
As of 2408: Customization of UserDetailsPage
	
SAP CPQ 2405 Breaking Changes and Announcements
	
SAP CPQ 2402 Breaking Changes and Announcements
	
SAP CPQ 2311 Breaking Changes and Announcements
	
SAP CPQ 2308 Breaking Changes and Announcements
	
Breaking Changes and Announcements up to the Release 2305
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering
	
Subscription Instructions
As of 2408: Changes in the Templates

Description

The RecentlyVisitedObjects responsive template has been updated and requires further action to be taken if you have customized the template.

The MainMenu responsive template from shared pages has been updated and requires further action if you have customized the template.

The UserMenu responsive template from shared pages has been updated and requires further action if you have customized the template.

Actions to Take
Note

The line numbers refer to the default templates with no customization. If your template is customized, the line number for the invalid code might differ.

MainMenu Template

Remove from line 4: Part of the data-bind attribute referring to CSS classes dependent on the userCameFromSF parameter: "'sf-header fiori3-sf-header':userCameFromSF,"

Remove from lines 180-183: Entire <div id="headerContainer"> element:



@*if hiding menu but came from SF*@
<div id="headerContainer" class="inline-cart-summary clearfix hidden" data-bind="css: { hidden : !userCameFromSF }">
 @Html.PartialWithNameAsComment("CartSummary", false) @*don't show user menu*@
</div>


UserMenu Template

Remove from line 1: Part of the data-bind attribute referring to CSS classes dependent on the userCameFromSF parameter: 'userdrop': userCameFromSF, 'hide-userdrop fix-color': !userCameFromSF,

Add to line 1: The class attribute should now include these classes: class="shellbar-navigation-item hide-userdrop fix-color hidden"

RecentlyVisitedObjects Template

Remove from line 1: @using Webcom.Configurator.Crm.Salesforce

On this page
Description
Actions to Take
Yes
No