# As of 2602: Deprecation of IronPython Eval() Statement | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/87370c469ba043388d2bd57305357ba0.html?version=2603
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


	
As of 2602: Custom Tables APIs Authentication
	
As of 2602: Removal of the Option to Switch to the Old UI Design
	
As of 2602: Deprecation of IronPython Eval() Statement
	
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
	
Breaking Changes and Announcements up to the Release 2305
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering
	
Subscription Instructions
As of 2602: Deprecation of IronPython Eval() Statement

Description

Starting with the 2602 release, the IronPython eval() statement will be deprecated to enhance security and application stability. Existing scripts that use the eval() statement will continue to function without changes. However, you won't be able to modify them unless you remove the eval() method.

Note

This breaking change affects only the IronPython eval() statement used in scripting. The formula tag <*EVAL()*> remains available for use in rules, triggers, document generation, or evaluation through scripting.

Actions to Take

To ensure future modifications, consider removing the IronPython eval() statement before the 2602 release.

On this page
Description
Actions to Take
Yes
No