# As of 2402: Removal of the Label Field from the Quote Item Custom Fields | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/d8cb8918503a40e89ce9065171005ce0.html?version=2603
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


	
As of 2402: Add Asset Dialogue Redesigned for a Better User Experience
	
As of 2402: Removal of the Label Field from the Quote Item Custom Fields
	
As of 2402: Pricing Using Item Level Date is Now Possible When Using VCP Pricing Stateless Service
	
As of 2402: Item Price and Service Date Can Now Be Changed for Both Document and Stateless Pricing
	
As of 2402: Python Module 'sys' Is No Longer Supported Due to Security Reasons
	
As of 2402: RestClient.GetStream Method Returns Body As a Stream Object
	
As of 2402: A Scroll Has Been Added to the ItemsTable Template for Quote 1.0, Which Has No Paging Enabled
	
SAP CPQ 2311 Breaking Changes and Announcements
	
SAP CPQ 2308 Breaking Changes and Announcements
	
Breaking Changes and Announcements up to the Release 2305
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering
	
Subscription Instructions
As of 2402: Removal of the Label Field from the Quote Item Custom Fields

Description

Removing the Label field from the quote item custom field creation and edit screen.

The Label field has been removed from the below locations:

Quote   Fields, Calculations, Layout

Quote  Fields, Calculations, Layout  Add New Field

Quote  Quote Item Custom Fields  Edit field

Quote  Quote Item Custom Fields  Add New (Field)

Actions to Take

Clients using API where the Label field from the quote item custom field is being used (api/quote/v1/quoteItemCustomFields), must adjust data as the mentioned field will be removed from the API.

Note

For GET data, the user will not experience any difference, but for UPDATE, the API call will fail.

On this page
Description
Actions to Take
Yes
No