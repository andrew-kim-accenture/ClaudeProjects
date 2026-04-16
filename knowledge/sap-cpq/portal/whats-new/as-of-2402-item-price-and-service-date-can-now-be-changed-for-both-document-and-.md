# As of 2402: Item Price and Service Date Can Now Be Changed for Both Document and Stateless Pricing | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/251096e03f3046df817f941d419ca8ff.html?version=2603
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
As of 2402: Item Price and Service Date Can Now Be Changed for Both Document and Stateless Pricing

Description

Pricing attributes KOMK-PRSDT and KOMK-FBUDA used for defining item price and service date can now be changed for both product types, SAP Variant Configuration and Pricing products and Quote 2 stateless pricing products. Those two Pricing attributes were exposed in the view model for pricing procedure settings, Setup  Pricing/Calculations  Pricing Procedures  Settings, and now they are moved to Setup   Providers  SAP Integrations  General Attribute Mappings.

As those two fields were exposed in the view model for pricing procedure settings, are removed them from Pricing/Calculations  Pricing Procedures  Settings - but that model was also used for APIs which won’t have them either now.

Actions to Take

Customers using only view model are not affected and no need for any Action to take.

Customers using old APIs to set these Pricing attributes:

GET api/pricingProcedure/v1/procedures/settings

PUT api/pricingProcedure/v1/procedures/settings

Need to prepare and overcome the breaking change by starting using a new APIs:

GET api/providers/v1/generalAttributeMappings/quote

PUT api/providers/v1/generalAttributeMappings/quote

On this page
Description
Actions to Take
Yes
No