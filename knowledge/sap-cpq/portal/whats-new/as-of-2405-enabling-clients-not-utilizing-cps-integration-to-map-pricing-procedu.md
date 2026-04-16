# As of 2405: Enabling Clients Not Utilizing CPS Integration to Map Pricing Procedures in Integration with ERP | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/37b70dc44804437fa363bdac1a652b58.html?version=2603
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


	
As of 2405: HaSi Script Workbench Incorporating Microsoft Library Usage
	
As of 2405: Enabling Clients Not Utilizing CPS Integration to Map Pricing Procedures in Integration with ERP
	
As of 2405: Increasing the Minimum Character Length for Generating Secrets for JWT Token Signing Key
	
As of 2405: QuoteListComponent - Template Customization
	
As of 2405: Workflow Bulk API
	
As of 2405: Support Sub-Procedures in the Pricing Procedure Mappings Page
	
As of 2405: Improved Logging Capabilities for RestClient
	
As of 2405: Validation of CSRF Token
	
SAP CPQ 2402 Breaking Changes and Announcements
	
SAP CPQ 2311 Breaking Changes and Announcements
	
SAP CPQ 2308 Breaking Changes and Announcements
	
Breaking Changes and Announcements up to the Release 2305
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering
	
Subscription Instructions
As of 2405: Enabling Clients Not Utilizing CPS Integration to Map Pricing Procedures in Integration with ERP

Description

SAP CPQ has made changes in setup and visibility fields to enable clients without CPS integration to map pricing procedures in integration with SAP backend systems. Parameters determining the pricing procedure are now located in the Pricing Procedures  Settings section. This section is now accessible for clients using Quote 1.0, provided they establish a connection with SAP backend systems.

To achieve these changes, need to make a few adjustments to the API as well. So, if anyone was using the following APIs to save parameters related to the pricing procedure name:

-api/providers/v1/generalAttributeMappings/quote [GET]

-api/providers/v1/generalAttributeMappings/quote [PUT]

-api/providers/v1/generalAttributeMappings/noquote [GET]

-api/providers/v1/generalAttributeMappings/noquote [PUT]

Actions to Take

The affected customers are all those using the following API functions:

-api/providers/v1/generalAttributeMappings/quote [GET]

-api/providers/v1/generalAttributeMappings/quote [PUT]

-api/providers/v1/generalAttributeMappings/noquote [GET]

-api/providers/v1/generalAttributeMappings/noquote [PUT]

To replace with:

-api/pricingProcedure/v1/procedures/settings [GET]

-api/pricingProcedure/v1/procedures/settings [PUT]

On this page
Description
Actions to Take
Yes
No