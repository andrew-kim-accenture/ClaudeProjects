# Document Generation Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/e8ecc7640d644715909a9982e1eef186.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration


	Setup Help

	
Document Generation


	
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
	
Example Templates
	
Document Generation Template
	
Supporting Custom Fonts for the Document Generation Process
	
Document Generation Libraries and Differences
	
Setup Administration
	
Manage Content Documents
	
Document Generation User Journey
	
Document Generation Tips and Tricks
	
Custom Quote Tabs
	
Quote Tables
	
Quote Custom Fields
	
Quote Tab Permissions
	
Quote Item Custom Fields
	
Key Attributes
	
Column Headings
	
Search Fields
	
Bulk Deletion
	
Quote Visibility
	
Cart Level Aggregates
	
Quote Acceptance Settings
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Alerting Users About Parallel Work on Quotes (Administrator Side)
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
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

Example Templates

You can download Microsoft Word and Microsoft Excel templates that contain several frequently used tags for document generation and CTX tags for retrieving specific data.
Yes
No