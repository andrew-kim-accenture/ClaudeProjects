# As of 2408: Approvals Page Template Customization Update | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/4f94f5e9d9024329844d4a8ae82704db.html?version=2603
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
As of 2408: Approvals Page Template Customization Update

Description

Due to the security update of the select2 library, the ApprovalsPage responsive template has been updated and requires that the following actions be taken if you have customized this template.

Actions to Take

ApprovalsPage Template:

Remove from the line 99: id="multiselectApproverDropdown" and add new attr binding in data-bind attr: { id: 'multiselectApproverDropdown_' + $index() },

Your updated <select> element must appear as:

<select multiple class="form-control" data-bind="select2: selectedValues, options: approvers, optionsValue: 'id', optionsText: 'displayValue', validateInput: { val: selectedApprovers, event: 'change blur' }, attr: { id: 'multiselectApproverDropdown_' + $index() }, css: { 'validation-error': selectedApprovers.isValid && !selectedApprovers.isValid(), 'validation-initial': !document.dirtyList.has('multiselectApproverDropdown') }, disable: $root.areRulesExpired()" style="display: block; width: 100%;"> </select>

Similar to the above, remove from the line 107: id="selectApproverDropdown" and add new attr binding in data-bind attr: { id: 'selectApproverDropdown_' + $index() },

Note

The line numbers provided are based on the default templates and may vary if your template has been customized. If your template has been modified, the line number containing the invalid code may be different.

On this page
Description
Actions to Take
Yes
No