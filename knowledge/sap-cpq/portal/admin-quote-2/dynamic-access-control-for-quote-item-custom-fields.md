# Dynamic Access Control for Quote Item Custom Fields | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/bf8c647908fb41749c8988fc775def38.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Fields and Calculations
	
Quote Field Calculations
	
Quote Field Editability


	
Dynamic Access Control for Quote Item Custom Fields
	
Order of Calculations When Adding, Copying, or Deleting Quote Items
	
Order of Calculations when Changing Quote Field Values
	
Rolled-up and Reverse Calculations
	
Calculations for SAP Subscription Billing Integration
	
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
Dynamic Access Control for Quote Item Custom Fields

Accessing Quote Item Custom Fields via scripting lets you dynamically set permissions for these fields. You can control their editability, read-only status, and visibility. This feature enhances customization and security when managing quotes.

Here's an example script:

Example
from Scripting.Quote import QuoteFieldAccessLevel

for item in context.PagedItems:
    QuoteFieldAccessContext.SetAccessLevel(item, 'AttributeQICF', QuoteFieldAccessLevel.Hidden)
    QuoteFieldAccessContext.SetAccessLevel(item, 'TargetPrice', QuoteFieldAccessLevel.Editable)
    if item.ProductName == 'DEMO_Product_01':
        QuoteFieldAccessContext.SetAccessLevel(item, 'CurrencyQICF', QuoteFieldAccessLevel.Hidden)

QuoteFieldAccessContext.SetColumnAccessLevel ('NumberQICF', QuoteFieldAccessLevel.ReadOnly)
QuoteFieldAccessContext.SetAccessLevelForProductType(39, 'NumberQICF', QuoteFieldAccessLevel.Hidden)
QuoteFieldAccessContext.SetAccessLevelForSection('Test', 'DateQICF', QuoteFieldAccessLevel.Editable)
QuoteFieldAccessContext.SetAccessLevelForSection('Test1', 'DateQICF', QuoteFieldAccessLevel.Hidden)
QuoteFieldAccessContext.SetAccessLevelforCartTotal ('NumberQICF', QuoteFieldAccessLevel.Hidden)

Features:

Extended scripting to control access levels for Quote Item Custom Fields

Allows you to set fields as editable, hidden, or read-only dynamically at different levels:

Item (cell) level

Column level.

Additionally, access level settings for custom fields are introduced at:

Product type level

Totals level

Solution design level.

Implementation Overview:

Provides methods to set field access for:

Item cells: SetAccessLevel(item, field, level)

Columns: SetColumnAccessLevel(field, level)

Product types: SetAccessLevelForProductType(ProductTypeId, field, level)

Solution Design: SetAccessLevelForSection(sectionName, field, level)

Totals: SetAccessLevelForCartTotal(field, level).

Note

When you set a column's access level to hidden, the cell values are concealed. However, the column itself stays visible.

Yes
No