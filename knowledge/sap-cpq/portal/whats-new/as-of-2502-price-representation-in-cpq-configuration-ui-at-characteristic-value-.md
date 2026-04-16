# As of 2502: Price Representation in CPQ Configuration UI at Characteristic Value Level in Square Brackets is Wrong | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/d1ebb78a51f04010be3b2304e94db5b9.html?version=2603
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


	
As of 2502: Price Representation in CPQ Configuration UI at Characteristic Value Level in Square Brackets is Wrong
	
As of 2502: Change in Responsive Templates
	
As of 2502: Item Type Quote 2.0
	
As of 2502: Removing Fields for Security Reasons
	
As of 2502: Using Involved Parties Through Scripting Will Not Trigger OnInvolvedPartiesChange
	
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
As of 2502: Price Representation in CPQ Configuration UI at Characteristic Value Level in Square Brackets is Wrong

Description

Statistical conditions are not considered in net price calculations.

Actions to Take

Impacted customers are those who previously saw prices displayed with square brackets in the SAP CPQ Configuration UI at the Characteristic Value level. This was inaccurate because it included Statistical condition types in the price calculation, which should not have been the case. Statistical condition types are not meant to be used for pricing. The change implemented now ensures that if a condition record is marked as statistical, it will not be included in the price calculations.

On this page
Description
Actions to Take
Yes
No