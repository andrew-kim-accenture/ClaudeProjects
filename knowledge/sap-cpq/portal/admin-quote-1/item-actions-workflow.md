# Item Actions Workflow | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/caa72f17d7034a8ba38d3a5e90af4109.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration
	
User Administration
	
User Interface Design
	
Workflow-Approvals


	Setup Help

	
Statuses
	
Workflow Actions
	
Workflow
	
Workflow Permissions
	
Required Fields By Workflow Action
	
Item Actions Workflow
	
Email Lists
	
Notifications
	
Approval Rules
	
Approval Branch
	
Approval Auto-Reminder
	
Likelihood of Approval
	
Approving Quotes in One Click
	
Quote Revisions
	
Outbound SAP CPQ Emails
	
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
Item Actions Workflow

The following section describes the Item Actions workflow.

In addition to controlling the visibility of Quote Actions based on the Quote Status, administrators can now hide certain Quote Actions by using conditions (For example, text in a part number) without any need to customize the Quote user interface. Item Actions define which actions can be performed on individual items in the Quote depending on the status of the Quote. The functionality is managed in Setup  Workflow/Approval  Item Actions Workflow.

Quotes are organized in My Quotes, Waiting for Approval and Other Quotes sections to match the Quote organization on the user side in SAP CPQ. A table in each section has two columns:

Workflow Status - Quote Status in the workflow.

Item Actions - shortcuts for managing the visibility of actions. When actions are enabled for a status, their name is displayed above the shortcut icon.

Clicking Edit icon or + icon opens a page for managing visibility. For each status, you can manage the visibility of the following actions by selecting/unselecting the respective checkbox:

View - Assigns appropriate permissions to control which users can access the View mode. When you use the View item action on a product configuration, the configurator opens in read-only mode. All attributes, tabs, and selections are visible, but you can't make configuration, pricing, or rule changes. This ensures you can safely review configurations for validation, audit, and reference purposes. If viewing is disabled at the quote level, the configuration view isn't available, even if it's enabled at the item level.

Edit (available only for configurable products)

Copy

Delete

Refresh - Reconfigures a specific item (unlike the standard action Reconfigure which reconfigures all quote items). This action reloads the item and applies all the relevant rules.

Upgrade to new product version

Add SubItem - The Add SubItem action allows users to add a sub-item under a main item in a quote.

Move to Top/Bottom - Shifts the selected item to the top or bottom of the quote, regardless of its current position. System products will move as a complete list if a root item is shifted.

Move under Item/ Bring Selected Item - Opens an autocomplete field, allowing the user to place an item beneath a specific one. These actions maintain the nesting structure for parent-child products and keep configurable or simple products within their defined hierarchy.

The condition formula icon shows next to each action. Clicking it opens the formula builder for creating conditions for additional visibility restrictions. When a condition is created, a flag icon shows next to the formula builder icon. The conditions should be built on the following rules:

For the action to be hidden, the condition needs to evaluate to 0.

To make the action visible, the condition needs to evaluate to 1.

If the formula evaluates to anything other than 1, the action is not visible.

If there is no condition formula, the action is visible if selected for the Quote Status.

Example

To hide the Edit action for all Quote Items that have a part number SMB2, the following example formula could be used:

[NEQ](<*CTX( Quote.CurrentItem.PartNumber )*>,SMB2)

To hide the Edit action for the User Type Contract Management, you could use the following example formula:

[NEQ](<*CTX( Visitor.UserType.Name )*>,Contract Management)

Condition formulas additionally restrict the visibility of Item Actions enabled for each Quote Status. The condition cannot override Item Actions that are not allowed for the given status. On the user side, the item actions are available for each product in the Quote under the gear icon.

Yes
No