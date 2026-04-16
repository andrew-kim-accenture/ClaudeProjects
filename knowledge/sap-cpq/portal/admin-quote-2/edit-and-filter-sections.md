# Edit and Filter Sections | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/f5ad802d78f34147b1f9e53586fed1fc.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Managing Section


	
Create Sections Using Excel
	
Create Sections using Section Builder
	
Edit and Filter Sections
	
Section Calculations
	
Add and Allocate Products to Sections
	
Section Distribution
	
Section Totals
	
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
Edit and Filter Sections

To edit the existing sections and add new ones, click  above the sections grid. To download sections in an Excel file, click . The downloaded file contains the sections’ hierarchy, sections’ names and the quote item custom columns.

The button allows users to update a single quote item custom field throughout multiple sections at once. The update can be applied to all field types, but only one field can be updated at a time. After a field value is updated, all calculations defined for that field are triggered as when changing the value manually.

Note

The button for bulk update is enabled when there is at least one editable column in sections and after a user has selected the sections in which the field is updated.

Filter Sections
Sections can be filtered by name (only the exact match returns results) and by the value of quote item custom fields that administrators have marked for filtering (Use column value to filter quote items is selected on the field in Setup). Also, users have the following options for filtering sections:

Show only my sections - displays only the sections assigned to the team the user belongs to.

Show Sections

Regular - displays the sections that aren’t distributed to other sections, and which weren’t created through distribution.

Distributed - displays the subsections that were created when a section was distributed to other sections.

Distribution - displays the sections that can be distributed.

When all three options are either selected or deselected, all results are displayed.

Hide product items - doesn’t display products in the filtered sections.

Only sections with items - displays only sections that contain product items.

The logic between filter options is AND. After a filter is applied, only the sections that match the entered criteria and their pertaining products are displayed. The applied filter is saved locally in the browser for a user and quote. If that user opens the quote in another browser or reassigns the quote, the filter won’t be applied. Also, different users on the same quote can apply different filters. The applied filters display in pills above sections in the Solution Design tab and users can easily remove them, which refreshes the display of sections. Excel download is available while filters are applied and, in that case, only the filtered sections are downloaded.

Yes
No