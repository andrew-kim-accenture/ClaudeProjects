# As of 2405: Support Sub-Procedures in the Pricing Procedure Mappings Page | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/06876d05ab34496aae56da3136a40817.html?version=2603
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
As of 2405: Support Sub-Procedures in the Pricing Procedure Mappings Page

Description

From the 2305 release, the CPS API supports the sub-procedures feature from the backend. This feature was introduced due to the large pricing procedures on the backend, which were not readable and maintainable. For the 2305 release, the CPS team has introduced a new endpoint for retrieving the flattened pricing procedure. This endpoint allows for the retrieval of the root pricing procedure with all sub-procedures, as well as the expansion of the pricing procedure with pricing condition details using $expand=conditionTypeDetails.

Actions to Take

Affected customers are all the customers that are using following API functions:



/api/v1/customizing/procedures/ZPRCPQ?$expand=conditionTypeDetails

To replace with:



/api/v1/customizing/procedures/ZPRCPQ/listView?$expand=conditionTypeDetails{}

On this page
Description
Actions to Take
Yes
No