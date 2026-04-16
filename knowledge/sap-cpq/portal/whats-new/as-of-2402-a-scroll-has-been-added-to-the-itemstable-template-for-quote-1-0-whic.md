# As of 2402: A Scroll Has Been Added to the ItemsTable Template for Quote 1.0, Which Has No Paging Enabled | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/2232b618dba24d2587f60fc8a02d1edb.html?version=2603
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
As of 2402: A Scroll Has Been Added to the ItemsTable Template for Quote 1.0, Which Has No Paging Enabled

Customers who use Quote 1.0, have the Page items parameter set to False (only for Responsive Design), and also have a customized Sections/ItemsTable template, need to make the following change to avoid issues with loading items.

The following block of code needs to be moved just under the </table> tag which can be found on the line 56 in the default template:

<div data-bind="if: !areItemsPaged() && items.renderCount() <

items.mainItems().length">

<div id="itemsLoadingIndicator" class="loader"></div>

<div class="center"><small>@Translation.Get("Controls.LoadingIndicator.Loading")

</small></div>

</div>

In the Sections/Items Table template, the next <div> element, which can be found on line 6 in the default template, having an id="no-more-tables", needs to be updated to contain the class "fiori3-items-table". The updated element will look like this:

<div id="no-more-tables" class="table-responsive cpq-scroll fiori3-items-table fiori3-items-table-sticky" data-bind="css: { 'fiori3-quote2-table': $root.useNewQuoteEngine, 'no-reorder': !$root.allowReorderingItems, 'no-delete': !canDeleteAnyItems() && !canCopyAnyItems(), 'reorder-no-delete': $root.allowReorderingItems && !canDeleteAnyItems() && !canCopyAnyItems()}">

Yes
No