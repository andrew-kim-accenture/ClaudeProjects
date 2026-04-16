# Filtering Items in Quote | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/c6370139eea24f069230f0dd07f12e00.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration


	Setup Help
	
Solution Design
	
Quote Teams
	
Filtering Items in Quote
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Filtering Items in Quote

Quote Filtering allows users to filter out quote items by specific values in quote item custom fields and in some standard SAP CPQ fields (Part Number, Product Type and Product Name).

After you allow filtering for a quote item custom field and users select or enter a value in that field on the quote, the system can filter out only the items that have a specific value in the quote item custom field. To enable this, users need to enter the field value as a filter criterion in Filter Items.
Note

You can search for quotes using multiple statuses in the filter.

Setup
To enable filtering per quote item custom fields, you need to make the following adjustments in the Setup:

Create a quote item custom field and select Use column value to filter quote items. Filtering is supported for all field types.

Select the quote item custom field in Quote Layout.

Make the quote item custom field visible to users in Quote Layout Permissions.

User Side

The Filter Items button opens the Filters pop-up with the filtering criteria. All quote item custom fields that are enabled for filtering are displayed in the pop-up. Depending on the type of the quote item custom field, users can enter, pick a value, or set a range of minimum and maximum values. The logic between multiple filters is AND.

Users should follow the search logic described below when entering search criteria in standard SAP CPQ fields:

Part Number - enter the exact value or use % to expand the search (for example, AB23% filters all quote items whose part number starts with AB23).

Product Type - start typing and the system will offer matching types.

Product Name - enter the exact product name or expand the search with % (for example, Manuf% filters all quotes whose product type starts with Manuf).

Show only selected items: Shows all selected items no matter the page where they are selected in items table.

A filter remains applied on a quote as long as it’s opened in the same browser. The first time the user opens it in a different browser, the filter is refreshed. The filter is visible on the quote only to the user who applied it.

If a filter is applied, the filtering criteria is visible above the list of items and the total number of filtered items is displayed on the right.

The Show Hierarchy is a new item action that can now be added to the item action workflow, giving administrators the ability to configure when this action appears to users. The Show Hierarchy action allows users to view the parent hierarchy of a line item when a filter is applied, making it easier to understand relationships between line items and their root items without navigating away from the filtered results. Importantly, this action is not available for root items and only appears when filter is applied. This improvement enhances navigation, especially in complex quotes, and streamlines the user experience.

If users manage sections in the Solution Design tab, they’ll have the following two checkboxes available:

Show Only Unallocated Products - filters only the items that aren’t allocated to any sections.

Show only products assigned to my sections - filters the items that are allocated to the section to which the user has rights.

Additional Restrictions

Even if you enable filtering for a quote item custom field, if the field isn’t visible for a user, they can’t apply the field’s values as filters on the quote.

When a quote with applied filter is copied and a new revision is created, the filter isn’t applied.

Filters are available on quotes in the view mode, when the user has no rights to perform any actions on the quote.

On this page
Setup
User Side
Additional Restrictions
Yes
No