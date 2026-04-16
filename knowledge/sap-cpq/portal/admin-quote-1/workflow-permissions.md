# Workflow Permissions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/4776340d6aa74875bffd39388e48098d.html?locale=en-US&state=PRODUCTION&version=2603
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
Workflow Permissions

The Workflow Permissions section is used to control which user groups can perform which actions.

This administrative section is important because users will be unable to use any of the actions defined in the Workflow administrative section unless they have been given permission to use the action(s) here.

Defining these permissions can be done in two ways, through Actions Permissions or User Group Permissions. The default is the Actions Permissions. Under Actions Permissions, each individual action is displayed and the user groups that are allowed to perform each action are displayed in the User Groups column.

Choose the edit symbol by each item to add/modify the user groups that are allowed to perform that action. On the next screen, select the user groups that are allowed to perform each action, and uncheck the user groups that are not allowed to perform the particular action and click Save.

The other way to set Workflow Permissions is through User Group Permissions. User Group Permissions can be accessed by clicking the by User Group button by List Permissions: at the top of the Workflow Permissions screen.

Under User Group Permissions, each individual user group is displayed and the actions that the user groups are allowed to perform are displayed under the User Groups column.

User Groups Permissions

Choose the edit symbol to add/modify the actions that the particular user group (on the left) is allowed to perform. On the next screen select all the actions that the particular user group will be allowed to perform and click Save.

With the following Workflow Actions set:

So even though Workflow Actions may be customized based on the status of the quote, workflow actions can still be further customized using Workflow Permissions and conditions.

If in the new quote status, the user doesn’t have the right to either view or edit a quote, they are redirected to the Load Existing Project/Quotation page.

Yes
No