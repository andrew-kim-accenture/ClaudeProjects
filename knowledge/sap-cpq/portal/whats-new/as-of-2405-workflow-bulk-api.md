# As of 2405: Workflow Bulk API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/e4e40a877e9146b89e0f87e7e46ba4c4.html?version=2603
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
As of 2405: Workflow Bulk API

Related Feature (if Exists)

The API is published: https://api.sap.com/api/SAPCPQWorkflow/path/Workflow_BulkUpdateWorkflowActions

Description

Bulk API changes up to the 2402 release: When workflow settings are being pushed from one tenant to another using the bulk API (API/workflow/v1/workflow/bulk), only the new changes are moved to the target tenant, without modifying the existing entries.

Bulk API changes from the 2405 release: When workflow settings are pushed from one tenant to another using the bulk API - API/workflow/v1/workflow/bulk - the entries in the target tenant will be cleared, and the data from the source state will be inserted into the target tenant.

Actions to Take

Be aware of these changes when pushing the workflow data by using this bulk API API/workflow/v1/workflow/bulk.

On this page
Related Feature (if Exists)
Description
Actions to Take
Yes
No