# As of 2405: Increasing the Minimum Character Length for Generating Secrets for JWT Token Signing Key | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/82bc326be16840218f22c840d8afd905.html?version=2603
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
As of 2405: Increasing the Minimum Character Length for Generating Secrets for JWT Token Signing Key

Description

From the 2405 SAP CPQ release onwards, the generation of JWT Token Signing Keys within the Trusted Applications administration is now 128 characters long, and the Secret field on the Credential Management page (for records of type Secret) now requires at least 32 characters. This is being done to ensure that the length of the JWT secret satisfies the minimum security requirements, which will be necessary for a security patch that is planned to be deployed in the near future. The security patch will update the library that generates JWT tokens and will require secrets to be at least 32 characters long.

Note

Changes with the security patch from SAP CPQ will be reflected in the 2505 release.

Actions to Take

In the Trusted Applications section of Setup, for all defined records with JWT Assertion Grant enabled and entries in the JWT Token Signing Key field less than 128 characters, regenerate the JWT Token Signing Key and update related applications with the new keys.

To verify that the scripts using defined records in the Credential Management section in Setup work correctly. If not, then regenerate the secrets on the external connected systems (with at least 32 characters long). Then, in the Credential Management section in Setup, update all records of type Secret to use the newly regenerated secret in the appropriate field - Secret.

Note

Actions must be completed by the end of November 2024.

On this page
Description
Actions to Take
Yes
No