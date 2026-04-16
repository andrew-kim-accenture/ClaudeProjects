# Quote Table Actions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/2dc33894c76f4aeca96f41d591862ed2.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Custom Quote Tabs
	
Quote Tables


	
Create Quote Table
	
Quote Table Columns
	
Manage Quote Table Column Groups
	
Quote Table Actions


	
Persisting AccessLevel of Quote Table with Custom Actions
	
Import via Excel
	
Quote Table Translation
	
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
Quote Table Actions

Add row, Delete row, and Copy row are standard actions available on Quote Tables. On the Administration side, you can activate/deactivate actions, choose permission groups that can see them and define actions that are executed before and after the standard actions. In addition to managing the table and row actions, you can also activate/deactivate the On Cell Changed event on the same page.

Only those actions that have the Active checkbox selected are visible to users when interacting with Quote Tables. To further control the visibility, click Permissions and select the groups to which the actions are visible.

The Pre Script and Post Script buttons provide access to a Script Editor where you can define actions that are executed before and after the standard action, respectively. The blue flags on Permissions, Pre Script, and Post Script buttons denote that permission groups are selected and/or scripts are defined.

Below are the available contexts for the scripts that can be attached to Quote Table events:

Copying rows

Available argument: EventArgs.

EventArgs contains Table(IQuoteTable), SourceRow(IQuoteTableRow), and NewRow(IQuoteTableRow) properties.

Table represents the quote table on which the action has been triggered.

SourceRow represents the quote table row that is copied .

NewRow represents a new quote table row copied from the source row.

Adding new rows (Pre Script)

Available Argument: EventArgs.

EventArgs contains Table(IQuoteTable), Row(IQuoteTableRow), and Cancel(Boolean) properties.

Table represents the quote table on which the action has been triggered.

Row represents a newly created quote table row that will be added to the quote table.

Cancel is a boolean variable that allows the script to cancel adding a row to the quote.

In order to cancel adding a row to the quote, you need to set the Cancel property to True.

This event can be used to validate something or prepopulate a row.

Adding new rows (Post Script)

Available Argument: EventArgs.

EventArgs contains Table(IQuoteTable) and Row(IQuoteTableRow) properties.

Table represents the quote table on which the action has been triggered.

Row represents a newly created quote table row that has been added to the quote table.

Deleting rows (Pre Script)

Available Argument: EventArgs.

EventArgs contains Table(IQuoteTable), Row(IQuoteTableRow) and Cancel(Boolean) properties.

Table represents the quote table on which the action has been triggered.

Row represents a newly created quote table row that will be deleted from the quote table.

Cancel is a boolean variable that allows the script to cancel deletion.

In order to cancel deleting a row, you need to set the Cancel property to True.

Deleting rows (Post Script)

Available Argument: EventArgs.

EventArgs contains Table(IQuoteTable) and Row(IQuoteTableRow) properties.

Table represents the quote table on which the action has been triggered.

Row represents the table row that has been deleted from the quote table.

On Cell Changed

In the Cell Events section, you activate the On Cell Changed event and attach a script that will be executed after users make a change in a quote table cell. To use this event, you need the following context information:

Available Argument: EventArgs.

EventArgs contains Table(IQuoteTable), Cells(List<IQuoteTableCell>) and OldValues(List<object>) properties.

Note: OldValues list contains cell values, not display values.

As the system automatically saves every change made in a quote table cell, the list of changed cells and old values will have only one element. An example code snippet below demonstrates how to access the changed cell and log its current and previous values:



i = 0
while i < len(EventArgs.Cells):
cell = EventArgs.Cells[i]
Trace.Write('Column: {0}, value: {1}, display value: {2}, old value: {3}'.format(cell.ColumnName,
cell.Value, cell.DisplayValue, EventArgs.OldValues[i]))
i += 1


The list of changed cells and the list of old values are sorted so that related entries have a matching index (position) on both lists.

Custom Actions on Quote Tables

Administrators create custom actions so their users could manage specific tasks on quote tables. In the example scenario detailed in Quote Tables, the custom action Populate Milestones creates as many rows as there are milestones defined in Total Milestones.

To create an action that isn’t standard on Quote Tables, click Add Custom Action. In the Script Editor, define the action's name and the script that will be executed upon clicking the action button. The custom action buttons appear above Quote Tables and their labels in the default language can be translated in the Actions section in the Translations tab.

Scripts acting as Custom actions on Quote Tables have the following variables available in their context:

Available Argument: EventArgs.

EventArgs contains Table(IQuoteTable).

Note

Scripts attached to standard table and row actions and cell events don’t run when you interact with rows via scripts. They only run when a user interacts with a Quote Table through the user interface.

Quote Table events can also be accessed via Iron Python Scripts. New rows can be added, data can be read from them, permissions can be set, etc. The interfaces to do this are described in SAP CPQ Scripting Documentation.

Yes
No