# Approval Auto-Reminder | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/13e79e50e3304335963918d28c32160e.html?locale=en-US&state=PRODUCTION&version=2603
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
Approval Auto-Reminder

The Approval Auto-Reminder feature enables you to schedule automatic reminder emails that are sent to approvers if they do not take action on quote approval requests for a predefined number of days. As a result, the number of quotes awaiting approval is reduced and the approval process is streamlined.

Note

Approval Reminders will not be sent for Expired Quotes.

Example

Sales representatives are often on the road and have no time to log in to SAP CPQ to check which quotes are not yet approved. To prevent quotes from getting stuck in the Waiting for Approval status for too long, you can set an approval auto-reminder that notifies designated approvers to act on quote approval requests.

Set an Approval Auto-Reminder

The feature can be accessed in Setup  Workflow/Approval  Approval Auto-Reminder.

To set an approval auto-reminder, take the following steps:

In Name (Required), enter a name for the approval reminder.

Turn on the Active toggle switch to enable the reminder.

Select your time zone from the Time zone drop-down list.

Select when the reminder is sent:

Starts:

Instantly: the reminder immediately starts the countdown to the days/time period defined in Approval reminder will be sent.

Specific date: the reminder starts from the selected date.

Stops:

Never: the reminder is sent until disabled or until a specific end date is determined.

Specific date: the last reminder is sent on the selected date.

Under Approval reminder will be sent if, select the conditions that trigger the reminder. You can enable any of the following by turning the toggle switch ON

when the number of quotes awaiting approval is greater than the number you enter;

when quotes are awaiting approval for more than the number of days you enter;

when quotes are awaiting approval for less than the number of days you enter;

If both More than (days) and Less than (days) are ON, the reminder is triggered only when both conditions are satisfied. If only one of these conditions is ON, the reminder is triggered based on that single condition and not considered as a range.

Condition Logic: You can apply AND/OR logic between the following conditions:

number of quotes waiting for approval is greater than, and

quotes are waiting for approval for more than (days), less than (days), or within the range defined by the two day-based conditions.

Note

Condition Logic is not applied if number of quotes waiting for approval is greater than is OFF, or if both day-based conditions are OFF.

Note

If quotes are waiting for approval for more than (days) is OFF, then the system applies Condition Logic between number of quotes waiting for approval is greater than and quotes are waiting for approval for less than (days).

Define the reminder frequency under Approval reminder will be sent:

every day

on specific days

periodically on the defined number of days

Please note that a change in frequency options affects how a time interval is calculated. For example, if the selected time period is initially set to five days but gets changed to seven after some time, the logic assumes seven days from the day the change was made.

Choose the exact time when the reminder will be sent.

(Optional) Select Include backup approvers.

The reminder will be triggered for backup approvers in the same way it is triggered for the original approver.

Click Save.

Once the approval auto-reminder is set, the system searches through all quotes in the Waiting for Approval status that fulfil the previously defined conditions and triggers the execution of the reminder after the specified time period. Designated approvers receive an email reminding them that certain quotes are awaiting approval.

The email displays the following information in a table-like format:

quotes that are waiting for approval

the total amount of each quote

the total discount for each quote

the name of the account each quote is linked to

the number of days each quote has been waiting for approval

To go to a specific quote from the email, approvers need to click on the quote in question. When logged in to SAP CPQ, approvers are taken straight to the quote. However, if approvers are not logged in to SAP CPQ, or if the session expires, approvers are redirected to the login page.

Yes
No