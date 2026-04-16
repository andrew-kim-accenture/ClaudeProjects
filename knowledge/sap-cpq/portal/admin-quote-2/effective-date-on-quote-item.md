# Effective Date on Quote Item | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/d3aa067c2bd94bc7a7387b60efd6cbbd.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Quote 2.0 Calculations
	
Quote Custom Sections
	
Quote Layout
	
Quote Layout Permissions
	
Item Types
	
Shipping
	
Effective Date on Quote Item
	
Document Generation
	
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
Effective Date on Quote Item

Administrators can configure how the Item Effective Date field is displayed, controlled, and used in logic within Quote 2.0.

To configure the Item Effective Date field, use the standard options available under Fields, Calculations, and Layout to manage its behavior and presentation.

As an administrator, you can configure the following:

Visibility of the Item Effective Date on quote items

User permissions for viewing or editing the field

Placement of the field within the quote and item layout.

Note

Field visibility is configured on the Fields and Calculations tab, while the layout of those fields is managed under Quote Layout.

These settings determine how and where the Item Effective Date appears in the user interface.

The item effective date can be referenced in calculations, scripts, and integrations.

Administrators can use the following CTX tag to access the item-level effective date:

<CTX(Quote.CurrentItem.EffectiveDate)>

This allows item-level effective dates to be evaluated in custom logic, formulas, and integration scenarios.

Yes
No