# Custom Actions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/41a40129ee824e4c837c91d64719eb63.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop


	
Scripting for Quote 2.0
	
Create a Script
	
Global Script Events
	
Custom Actions
	
Custom Calculations
	
Script Workbench
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Custom Actions

SAP CPQ offers flexible way to meet custom demands for various functionalities that are not part of the standard software version. This is achieved by implementing custom actions – parts of code that contain processing logic for appropriate functionalities.

Custom actions can be used in the quote workflow as any other standard quote action, they can be set up as pre or post action. Also email notifications can be attached to them.

Typically , these actions are used for integration with other external systems – like ERP system. For example, one custom action could contain code that would send relevant quote information to the product manufacturer and/or distributor software, after the order is placed on that quote in SAP CPQ.

Administration for custom actions can be found under SAP CPQ Setup  Workflow/Approvals  Actions. When user clicks on sub-menu Custom actions, table with all custom actions developed by the admin is displayed. Admin is able to translate action names by clicking on the ‘Translate’ icon, edit action by clicking on the ‘Edit’ action button, delete action by clicking on ‘Delete’ action button and create new action by clicking on the ‘Add New’ button.

No standard SAP CPQ actions is displayed on this page. Custom actions defined by the admin are not displayed in SAP CPQ Setup  Workflow/Approvals  Actions.

Admin is able to use these actions in SAP CPQ Setup  Workflow/Approvals  Workflow and to define permissions for the action in SAP CPQ Setup  Workflow/Approvals  Workflow Permissions.

Note

When defining Workflow transition for some custom action, in order to change quote status that action as last row should include WorkflowContext.ChangeQuoteStatus = True.

When admin adds new/edits custom action, page is displayed where admin is able to:

Define action name (required)

Order within quote

Whether it is a primary action or not (selected by default)

Image for the action

Global condition for action (empty by default)

Pre-action condition (empty by default)

Post-action condition (empty by default)

Script engine type (currently only Python)

Script

Action is always set up so that it can be set as pre or post action. Placement is set to the quote (Cart) automatically, and admin is able to change that.

Note

If a custom action causes and error, the system stops the workflow execution.

Executing Custom Quote Actions via Scripting

You can execute custom quote actions in Quote 2.0 within the Workflow context through scripting.

The SAP CPQ system checks all the permissions and conditions defined in the Workflow for these actions to ensure that only available custom quote actions are executed. For each available action, the system performs pre-actions and post-actions and sends notifications. The list of available custom quote actions is also returned in scripting.

Here's an example script:

Example
customQuoteactionAvailable = WorkflowExecutor.IsActionAvailableForQuote(3102, context.Quote.Id)
WorkflowExecutor.ExecuteActionOnQuote(3102, context.Quote.Id)

The first line checks if a custom action with the specified action ID can be executed on a quote with the given quote ID. The first parameter is the custom action ID, and the second is the quote ID. It returns true if the custom action can be executed or false if it cannot.

The second line executes a custom action with the specified action ID on a quote with the given quote ID. If either the action or the quote is not available, you receive an exception.

For more information about the method explained, refer to the SAP CPQ Scripting Documentation.

Yes
No