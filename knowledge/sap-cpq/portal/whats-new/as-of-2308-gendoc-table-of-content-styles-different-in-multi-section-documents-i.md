# As of 2308: GenDoc - Table of Content Styles Different in Multi-section Documents if Predefined TOC Styles Different Among sections | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/a788952128134bf5821d6beaaef87056.html?version=2603
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
	
SAP CPQ 2405 Breaking Changes and Announcements
	
SAP CPQ 2402 Breaking Changes and Announcements
	
SAP CPQ 2311 Breaking Changes and Announcements
	
SAP CPQ 2308 Breaking Changes and Announcements


	
As of 2308: SAP CPQ Tenant URL Change Adoption End - Risk of Production Down
	
As of 2308: OR Logic for Permission Groups in Quote Visibility Rules
	
As of 2308: GenDoc Preprocessor Breaking Changes
	
As of 2308: GenDoc – Excel Spreadsheet Templates With C2 Tag
	
As of 2308: GenDoc - Table of Content Styles Different in Multi-section Documents if Predefined TOC Styles Different Among sections
	
As of 2308: Removal of REST API Salesforce Integration (Version 21-30) with SAP CPQ
	
As of 2308: Data Center Transition to Microsoft Azure
	
Breaking Changes and Announcements up to the Release 2305
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering
	
Subscription Instructions
As of 2308: GenDoc - Table of Content Styles Different in Multi-section Documents if Predefined TOC Styles Different Among sections

Description

This breaking change is caused by transferring from the old engine for Document Templates Processing to the new engine for Document Templates Processing.

Table of content styles can be different in multi-section documents if predefined TOC styles (such as TOC 1, TOC 2, and TOC Heading) are different in sections documents.

Actions to Take

To avoid this, make sure that the base TOC styles are the same across all sections. If they are altered, they can be imported/exported across documents to unify them.

If they are not different, the new engine for import format mode parameter value Use Destination styles will behave the same way as the old engine.

On this page
Description
Actions to Take
Yes
No