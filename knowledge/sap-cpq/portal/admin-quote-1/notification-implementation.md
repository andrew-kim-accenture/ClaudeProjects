# Notification Implementation | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/baeb48275a85431881bc470e3ac9bedf.html#approval-notifications
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


	
Notification Implementation
	
Approval via PDA
	
One-click Approval HTML Email Template
	
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
Notification Implementation

Once a notification and message have been created, it can be associated with a workflow action.

This is done in the Workflow Actions administration section. For any workflow event/intersection, click the  button to open the Status Administration page.

On this page, click the Edit button under the Notifications column of the appropriate action (make sure it’s selected).

Note

For more information on the Workflow, see the chapter Action page in Workflow.

In the resulting pop-up window, all notifications are listed. Click the checkbox of each notification that will be associated with that action. Click Update to save the selection(s) and Close to cancel the selection. Click Save on the status administration page. When a user initiates this action, the notification is triggered and any messages added will be sent. The information from the quote that the user performed this action on will be used for any attachments using word quote tags. Email messages will include all information included on the message definition page (as discussed earlier).

You can choose the email address to be displayed in the From field of emails received from SAP CPQ. This can be done by entering the desired email as the value of the following application parameters.

From Email Address for the following types of notifications:

user management notifications (user creation, password reset, password update, and so on)

notifications attached to actions, sent in emails when actions are triggered

notifications sent after bulk import is performed

notifications sent if the knowledgebase synchronization is unsuccessful

automatic reminders sent to approvers if they do not take action on quote approval requests

email form in the last step of document generation process

Place Order “From” Email Address for this notification:

place order checkout

Place Order Notification

SAP CPQ default "Place Order" Email is sent when user clicks on Place Order. In order to control the From Address of this Email, we can use application parameter Place order “From” email address found in SAP CPQ Setup  General  Application Parameters  Shopping Cart and Quotes. If this app parameter is not defined, user's Email is used as the From address.

Selecting Place Order on a complete quote that does not require approval. The Order Confirmation screen displays.

Additional email addresses can be entered in the additional e-mails textbox. Clicking Confirm/Send Order confirms that the Order has been placed and notifications are sent to the Bill To or Ship To email address if checked and any other additional e-mail addresses entered. Although this is a hardcoded notification, it can be changed by changing the visual style for Place Order page. For more information on Visual Styles, see Users.

Approval Notifications

Your SAP CPQ installation comes with 3 predefined notifications for Approval Process:

Approval Request Notification

Quote Approved Notification

Quote Rejection Notification

Adjustments for these 3 notifications can be made easily with edit  action.

On this page
Place Order Notification
Approval Notifications
Yes
No