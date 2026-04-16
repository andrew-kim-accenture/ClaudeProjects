# Quote Field Editability | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/59da7261357c42da9cfbb95d6ad54473.html?locale=en-US&state=PRODUCTION&version=2603
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
Quote Field Editability

In the Field Editability tab, you can select the quote fields that are editable, the permission groups that are able to edit them and the status of the quotes in which the fields are editable. Unlike in the old quote engine, in Quote 2.0, the editability is set per column. This means that if a column is editable, all fields in that column, for all items, are editable. By default, all fields on quotes are read-only until their editability is defined.

Note

Access level permissions on Quote Item Custom Fields can now be dynamically set through scripting in Quote 2.0. This feature allows users to control the editability, read-only status, and visibility of fields, enhancing customization and security in managing quotes. For more information, refer to the Dynamic Access Control for Quote Item Custom Fields topic.

When you access the Field Editability tab, only permission groups are displayed in the Select Permission Group column. After selecting a permission group, quote statuses display in the Select Quote Status column. Similarly, once a status is selected, fields show up in the Select Fields column. The selected fields are automatically moved to the Selected Items section. To deselect an item, either click on it or click  in the column title.

Multiple selection of permission groups and quote statuses isn’t enabled so you have to define field editability for each permission group/status separately. Clicking Default Settings in a respective column applies the selection to all permission groups or statuses.

If you want the same fields that are editable for a permission group/quote status pair to be editable for another permission group/status pair, click Apply field selections from. A pop-up displays enabling you to search the permission group and the quote status.

Note

The logic between multiple permission groups is OR (if a user belongs to multiple permission groups, and if editing a field is enabled for only one of the groups, the user has the right to edit that field).

Default Settings
Default editing settings allow administrators to select fields that are editable for all permission group/status pairs by default until administrators select other fields. The purpose of the default settings is to cover the scenarios in which the administrator hasn’t defined what fields are editable for a permission group or a status, or both.
Define Default Settings

The procedure provides step-by-step instructions on how to define default settings for all permission groups and all quote statuses.

Access the Field Editability tab.

In the Select Permission Group column, click Default Settings.

New is added to the column title.

In the Select Quote Status column, select Default Settings.

New is added to the column title.

Select the fields that are editable.

The fields are automatically moved to the Selected Items section.

Click Save.

The selected fields are now editable to all users for all quotes.

After defining default settings that all permission group/status pairs inherit, selecting a pair and clicking Save breaks the link between the default settings and the respective pair. All future changes made to the default settings won’t apply to the respective pair.

Tip

Default settings apply to permission group/status pairs only before any other change is made. For example, if default fields are selected for a pair and you deselect one of the fields and select two others fields, you can’t apply the default settings again. You can only select fields manually.

To decide what quote fields are editable for a user, the system first looks for the fields that are selected in Fields, Calculations, Layout > Field Editability for that permission group and the status of the current quote. If no fields are selected, the system looks for fields that are selected for that permission group and all quote statuses. Similarly, if no fields are selected for the permission group, the system looks which fields are selected for that quote status. Consequently, if no fields are selected neither for the permission group nor the status, the default fields are editable to the user.

The system follows this workflow after default settings have been applied and before any other change on the selected fields has been made for a permission group/status.

Yes
No