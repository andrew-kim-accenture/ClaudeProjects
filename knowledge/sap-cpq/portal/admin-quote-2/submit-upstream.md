# Submit Upstream | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/a22dc2508cc74c7fb950abe8ca30ee42.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Parallel Approval
	
Approval Process Administration
	
Approval Rules
	
Submit Upstream
	
Approval Branch
	
Approval Auto-Reminder
	
Likelihood of Approval
	
Approving Quotes in One Click
	
Quote Revisions
	
Outbound SAP CPQ Emails
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Submit Upstream

Sometimes the approver is not allowed to approve a quote because the discount level is above what he/she can approve. However, this does not happen often and when it does, the approver gets confused. This is because it is simply not explained to the user what happened.

User Side

When approver is approving a quote and the approval rules are taking away the submit action we need to make it very clear, both visually and textually, what happened.

Instead of just not showing the approve action, the following message displays: This approval request is above your authorized approval level. You can either reject a quote, or submit it upstream for approval.

If the approver does not have an Approve Quote button, because based on modeling it was not intended for this button to be shown to the approver, this messages will not show up and the Approve Quote button, since it was not supposed to be there, will not show up at all.

This feature is enabled for mobile and PDA.

Yes
No