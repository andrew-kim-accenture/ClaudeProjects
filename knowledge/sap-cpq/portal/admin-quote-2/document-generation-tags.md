# Document Generation Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/e8ecc7640d644715909a9982e1eef186.html?locale=en-US&state=PRODUCTION&version=2603
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

	
Fields, Calculations, Layout
	
Document Generation


	
Document Generation Template
	
Manage Content Documents
	
General Settings
	
Document Generation User Journey
	
Document Generation Tips and Tricks
	
Document Generation Tags


	
C Tags
	
Q Tags
	
Miscellaneous Tags
	
Special Tags
	
Custom Table Tags
	
Nested Products Tags
	
Container Tags
	
C2 Loop
	
Conditions
	
Quote Table Tags
	
SAP Subscription Billing Integration Tags
	
SECTIONS Loop
	
Involved Parties Tags
	
Tiered Pricing Tags
	
Usage Based Pricing Tags
	
Example Templates
	
Document Generation Libraries and Differences
	
Custom Quote Tabs
	
Quote Tables
	
Quote Fields
	
Quote Tab Permissions
	
Quote List Settings
	
Bulk Quote Deletion
	
Quote Visibility
	
Quote Acceptance Settings
	
Partner Functions
	
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
Document Generation Tags

Generated documents in SAP CPQ are populated via tags (you insert a dedicated tag into a template and when users generate documents, specific data is retrieved from the system and displayed in the document).

All available tags are grouped and described in these sections:



C Tags

C tags retrieve data for each item in a quote. The system processes C tags only if they are within C2 tags.
Q Tags

Q tags retrieve quote data (currency, user and owner data, etc.).
Miscellaneous Tags

This page lists various tags that don't belong to any of the categories.
Special Tags

Special tags begin with ST.
Custom Table Tags

These tags retrieve data from custom tables.
Nested Products Tags

To display parent/child product structure in generated documents, you should add MAIN tags for children products inside parent MAIN tags.
Container Tags

Use container tags to display data from a container in SAP CPQ in a generated document.
C2 Loop

You can use the C2 tags when you wish the system to iterate through all items in a quote.
Conditions

Standalone conditions and tag-dependent conditions let you restrict what data tags retrieve.
Quote Table Tags

SAP Subscription Billing Integration Tags

When SAP CPQ is integrated with SAP Subscription Billing, you can use these tags in the document generation template to retrieve elements specific to the integration.
SECTIONS Loop

The SECTIONS loop makes SAP CPQ iterate through all Solution Design sections and retrieve information such as their names, hierarchy Ids, ranks (the ordinal numbers of the sections’ rows), values from all their custom fields, and section totals.
Involved Parties Tags

INVOLVED_PARTIES tags retrieve details of business partners and partner functions.
Tiered Pricing Tags

Usage Based Pricing Tags

Example Templates

You can download Microsoft Word and Microsoft Excel templates that contain several frequently used tags for document generation and CTX tags for retrieving specific data.
Yes
No