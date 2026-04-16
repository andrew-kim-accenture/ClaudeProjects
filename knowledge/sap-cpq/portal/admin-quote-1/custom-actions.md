# Custom Actions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/1f37f72b22e442d4894e6a7f43b20d2c.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Renewal Management
	
Customer Administration
	
Develop


	
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

Yes
No