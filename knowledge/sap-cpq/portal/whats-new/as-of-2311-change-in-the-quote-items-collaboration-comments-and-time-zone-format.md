# As of 2311: Change in the Quote Items Collaboration Comments and Time Zone Format | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/4a9ea24b4ab34a25821a0a3b5dae8ad6.html?version=2603
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


	
As of 2311: CLR Module Import No Longer Supported
	
As of 2311: Custom CPQ Razor Code Invalid in Responsive Templates
	
As of 2311: Restricted File Types for Uploading into SAP CPQ
	
As of 2311: Change in the Quote Items Collaboration Comments and Time Zone Format
	
SAP CPQ 2308 Breaking Changes and Announcements
	
Breaking Changes and Announcements up to the Release 2305
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering
	
Subscription Instructions
As of 2311: Change in the Quote Items Collaboration Comments and Time Zone Format

Description
Quote items collaboration comments are now in UTC format when retrieved from API (/api/v1/quotes/{quoteId}/items/{itemId}/comments). Before change, date was retrieved in timezone of a user.
Actions to Take

If the client was using item comments on the quote from Quotes API, data needs to be modified as the /api/v1/quotes/{quoteId}/items/{itemId}/comments is now returning comments in the UTC format.

On this page
Description
Actions to Take
Yes
No