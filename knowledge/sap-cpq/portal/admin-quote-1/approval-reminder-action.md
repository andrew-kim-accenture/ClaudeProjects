# Approval Reminder Action | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/7c2057190f0b4e29a00aa7577a30f9b6.html?locale=en-US&state=PRODUCTION&version=2603
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
Approval Reminder Action

Action Approval Reminder can be used in both quote engines to remind approvers that there is a quote waiting for them to approve or reject it.

Once quote is submitted for the approval, and approver does not take any actions, quote owner has no way to request or remind approver to take action.

When action is executed, the system will verify who are all the approvers for that quote, and will send email notification (same one as used for approval notification) to ALL approvers who have not take any actions (approve or reject) for that quote.

Action Approval Reminder will not do anything by itself, it's just a transition in the action workflow where a user can attach arbitrary notifications. These notifications should be addressed to the email lists with "WaitingApprovers".

Email list with special tag "WaitingApprovers" will address all approvers of a quote that have not been approved or rejected.

User can put any notification body to these approval reminders. They could be the same as initial submit for approval notification, or you can make a new one specific for reminder purposes.

Yes
No