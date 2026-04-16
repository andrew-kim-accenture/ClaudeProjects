# Email Lists | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/f5eaf809dd084d6e8a8ac8b7687f0c93.html?locale=en-US&state=PRODUCTION&version=2603
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
Email Lists

The following section describes detailed function of Email lists.

Creating an email list is the first step in creating notifications (Notifications). Notifications allow custom emails to be sent to any user with the option of an attachment included. Email lists determine which users receive the email notifications. Email list administration can be accessed by clicking the link under the Workflow/Approval drop down menu.

Here all existing email lists are listed. User can create a new email list by clicking Add New. Specific users are added to email lists. All users an email list receive the notification sent with that email list. Email lists are well integrated with SAP CPQ and provide a high level of customization. All users and user groups added to the SAP CPQ database can be included in an email list. Custom emails not in the SAP CPQ database can also be entered. Dynamic tags can also be used to determine who gets a notification. Tags provide a way to send emails to users performing certain roles rather than specific predetermined users. Tags can be very useful for sending notifications for approval rule violations, supervision, and general updates. The tags are self explanatory and the user(s) fitting the selected tag gets the notification.

Four parameters are available to add email address to the email list: Users, User Groups, Emails, and Tags. All available parameters are displayed on the list boxes on the right, and the selected user/user groups/tags that would receive the email are displayed in the list boxes on the left. To move the appropriate item from the unselected section to the appropriate selected section, select the item and use the left-pointing navigation button to move it to the selected section on the left. It is possible to use the right-pointing navigation button to remove an item from the selected sections.

The Emails section allows entering a custom name and email. The name is optional, but a valid email address is required.

Note that moving an email address from the selected section to the unselected section in the Emails lists section deletes the email address.

The Tags area provides users with a dynamic method of sending emails. Selecting the appropriate tag determines which user will receive the email:

Cart Owner - The user that created the quote

User viewing the cart – The user that invokes the action requiring the email notification. This could be through the Other Quotes or Waiting for Approval tabs.

Responsible approvers – The user(s) assigned as the approver for the particular violation under Approval Rules.

Waiting approvers – The user(s) assigned as the approver for the particular violation under Approval Rules, who did not take any action yet - neither approve nor reject.

Approve Parent – The user assigned as the current user’s Approval Parent under Users.

Managing Parent – The user assigned as the current user’s Managing Parent under Users.

Ordering Parent – The user assigned as the current user’s Ordering Parent under Users.

Once all the users that should receive an email notification are entered or selected, clicking Save will save the email list. Now notification of that email list can be created.

When you use Responsible Approvers tag in email lists, there is an application parameter that will control if the approver is going to receive a notification per each violated rule or only one notification for all violated rules. The parameter name is Remove duplicate approvers and can be found under Setup  General  Application Parameters, tab Shopping Cart and Quotes. If this parameter is set to yes, only one email will be sent to the approver per notification.

Note

If dynamic tags are used to define recipients (for example, “Approve parent”) it is important to know that this user (for example, Approve parent) will get a notification only if they are marked as "active" in the administration.

Yes
No