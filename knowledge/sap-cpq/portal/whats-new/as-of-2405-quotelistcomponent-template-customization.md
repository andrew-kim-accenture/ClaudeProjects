# As of 2405: QuoteListComponent - Template Customization | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/8ee863e37e014dfd8f17f5c9f946d092.html?version=2603
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
As of 2405: QuoteListComponent - Template Customization

Description

In SAP CPQ's efforts to enhance efficiency within the QuoteListComponent, a streamlined approach has been implemented. Consequently, SAP CPQ has revised the executeCellAction method by consolidating three separate parameters into a single one, thereby simplifying the process.

The parameters that have been removed and are no longer supported are (list the parameters here):

row.CryptedQuoteId

row.CryptedOwnerId

row.ApproverId

Actions to Take

Update the template (QuoteListComponent) as per the example provided below. Make sure to adjust each call to executeCellAction accordingly.

Example: Current code


<a href="#" data-bind="text: cell.Value, click: function() { component.executeCellAction($data.row.CanEditQuote? 1 : 3, row.CryptedQuoteld, row.CryptedOwnerld, row.Approverld); }">07580051</a> 

Example: Adjusted code


<a href="#" data-bind="text: cell.Value, click: function(){ component.executeCellAction($data.row.Can EditQuote ? 1 : 3, $data.row); }">05020021</a>


Instead of row.CryptedQuoteId, row.CryptedOwnerId, row.ApproverId, client must use $data.row.

On this page
Description
Actions to Take
Yes
No