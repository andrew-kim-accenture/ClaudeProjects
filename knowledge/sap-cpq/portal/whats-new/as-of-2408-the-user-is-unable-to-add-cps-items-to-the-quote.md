# As of 2408: The User Is Unable to Add CPS Items to the Quote | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/a2edc0428c2a4bf6a43ae225c50bc77b.html?version=2603
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
As of 2408: The User Is Unable to Add CPS Items to the Quote

Description

Bug in the pricing procedure mappings is causing an issue when adding an item to the quote. The client will not be able to add CPS items into the quote.

The issue occurs when Environment has:

Quote 2.0.

CPS Document Pricing turned on.

Settings that total prices are calculated by the backend.

Mappings in pricing procedure that are mapping header level condition RATES into anySAP CPQ field.

Actions to Take

Change mappings of header-level conditions (those that do not have pricing conditions) from Rate to Value, or remove them.

Note

The fix is planned to be delivered in the SAP CPQ 2408.0.1 release.

On this page
Description
Actions to Take
Yes
No