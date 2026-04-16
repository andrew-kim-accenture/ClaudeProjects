# As of 2411: Change in the DealViewPage Template | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/a2a9adc4515a4679b0208af18702084c.html?version=2603
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


	
As of 2411: Removal of Setter for Property RolledUpQuoteItem on Scripting.Quote.IQuoteItem
	
As of 2411: Change in the DealViewPage Template
	
As of 2411: ChangeSet Improvement of Concerning ChangeStepId
	
SAP CPQ 2408 Breaking Changes and Announcements
	
SAP CPQ 2405 Breaking Changes and Announcements
	
SAP CPQ 2402 Breaking Changes and Announcements
	
SAP CPQ 2311 Breaking Changes and Announcements
	
SAP CPQ 2308 Breaking Changes and Announcements
	
Breaking Changes and Announcements up to the Release 2305
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering
	
Subscription Instructions
As of 2411: Change in the DealViewPage Template

Description

The DealViewPage responsive template has been updated and requires further action to be taken if you have customized the template.

Actions to Take
Note

The line numbers refer to the default templates with no customization. If your template is customized, the line number for the invalid code might differ.

After the line 26, press enter and add as a new line (at the line 27) the next code:



<input type="hidden" data-bind="value: $root.quoteId() || null" name="quoteId">


In lines 198 and 201, $root.quoteId variable now has to have open-closed brackets after it, the line must look like below:

Line 198:



<!-- ko component: { name: 'deal-view-total', params:

{ leadingColumnVisible: $root.enableSelection, label: 'Filtered Items Total', getTotal: $root.getTotal, filters: $root.filterQuery(), quoteId: $root.quoteId(), currencySign: $root.currencySign }
}-->

Line 201:


<!-- ko component: { name: 'deal-view-total', params:

{ leadingColumnVisible: $root.enableSelection, label: 'Total', getTotal: $root.getTotal, filters: [], quoteId: $root.quoteId(), currencySign: $root.currencySign }
}-->

On this page
Description
Actions to Take
Yes
No