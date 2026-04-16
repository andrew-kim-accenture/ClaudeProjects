# As of 2411: Removal of Setter for Property RolledUpQuoteItem on Scripting.Quote.IQuoteItem | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/61762147f1374d378a115a5e193f07c1.html?version=2603
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


	
As of 2411: Removal of Setter for Property RolledUpQuoteItem on Scripting.Quote.IQuoteItem
	
As of 2411: Change in the DealViewPage Template
	
As of 2411: ChangeSet Improvement of Concerning ChangeStepId
	
SAP CPQ 2408 Breaking Changes and Announcements
	
SAP CPQ 2405 Breaking Changes and Announcements
	
SAP CPQ 2402 Breaking Changes and Announcements
	
SAP CPQ 2311 Breaking Changes and Announcements
	
SAP CPQ 2308 Breaking Changes and Announcements
	
Breaking Changes and Announcements up to the Release 2305
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering
	
Subscription Instructions
As of 2411: Removal of Setter for Property RolledUpQuoteItem on Scripting.Quote.IQuoteItem

Note

The change has been postponed from the 2408 release to the 2411 release.

Description

The setter for the property "RolledUpQuoteItem" on Scripting.Quote.IQuoteItem will be removed.

Actions to Take

Adjust the scripts so that the mentioned setter is not used. This has been considered a bug, and it must not be possible to modify the rolled-up numbers of items via scripting. An error will be thrown while executing the script if the scripts are not adjusted.

On this page
Description
Actions to Take
Yes
No