# As of 2402: Pricing Using Item Level Date is Now Possible When Using VCP Pricing Stateless Service | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/217f19e99f174af5a0fab4def68e08bf.html?version=2603
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
As of 2402: Pricing Using Item Level Date is Now Possible When Using VCP Pricing Stateless Service

Description

This breaking change is relevant for customers using document pricing with VCP integration only. Previously it was possible to set mappings for item level pricing attributes KOMK-PRSDT and KOMK-FBUDA under Setup  Pricing/Calculations  Pricing Procedures  Settings, and now they are moved to Setup  Providers SAP Integrations General Attribute Mappings.

Previously it was possible to use only quote effective date for pricing with VCP pricing stateless service so customers using this pricing service have no actions to take.

Actions to Take
Customers that were using API to maintain those settings in SAP CPQ:

PUT api/pricingProcedure/v1/procedures/settings

Need to switch to:

PUT api/providers/v1/generalAttributeMappings/quote

On this page
Description
Actions to Take
Yes
No