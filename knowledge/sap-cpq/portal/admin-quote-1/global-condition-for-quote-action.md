# Global Condition for Quote Action | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/d00de8a5d89b42249a24bc991094ccbf.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Standard Workflow Actions
	
Action Details
	
Reprice, Reconfigure, and Conditional Reconfigure - Differences
	
Approval Reminder Action
	
Auto Quote Expiration
	
Global Condition for Quote Action
	
Images for Quote Actions
	
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
Global Condition for Quote Action

Administrators have the ability to define conditions for executing pre or post actions.

When admin edits an action from the Workflow/Approval  Actions list, he or she is able to see the following fields:

Name

Global Condition

This is visible for all actions; defines global condition for executing action.

Pre Action Condition

This is displayed only if action can be set up as pre action in the workflow.

Post Action Condition

This is displayed only if action can be set up as post action in the workflow.

When action is executed as pre or post action, SAP CPQ evaluates appropriate condition defined for this action.

If condition is empty or it is set to 1, action is being executed.

Note

If you’re not sure which action can be set as pre or post action, the best way to check this is to see what actions can be found in the list for pre or post action in the workflow.

Note

If any condition is maintained in the workflow for a particular combination of tab, start, and end status, the condition is evaluated instead of what is defined under the global condition for quote actions in Set up  Workflow/Approval  Actions  Action condition.

Yes
No