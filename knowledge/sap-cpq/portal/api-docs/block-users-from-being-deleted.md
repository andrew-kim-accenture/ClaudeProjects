# Block Users from Being Deleted | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/b8399ee96f9c42289d55fc245a7604e3.html?locale=en-US&state=PRODUCTION&version=2603
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
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security


	Setup Help

	
DKIM Support for Outbound Emails
	
Automatic Data Deletion


	
Blocked Data


	
Block Customers from Being Deleted
	
Block Quotes from Being Deleted
	
Block Users from Being Deleted
	
Block Business Partners from Being Deleted
	
General Deletion
	
Audit Trail Deletion
	
Personally Identifiable Information
	
Personal Data Log
	
WSDL and Certificate Management
	
Credential Management
	
Trusted Applications
	
Password Policy
	
Content Security Policy in SAP CPQ
	
Multi-factor Authentication
	
Security Recommendations
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Block Users from Being Deleted

You can prevent users from being deleted.

To prevent users from being deleted:

Go to Setup  Security  Data Deletion.

A new page displays.

In Blocked Data  Blocked Users, enter either the first name, last name, username, or email address of the user you want to block from deletion.

The field offers autocomplete suggestions as you start typing a search query. Users matching the input are displayed as suggestions. Alternatively, you can select a user from the dropdown list.

Click Save.

A confirmation message displays.

The blocked user’s status is considered for SAP CPQ licenses. The user can be either active or inactive, and this status is displayed in the Active column on the Users page. If the blocked user is active, the user counts as a license user. On the other hand, if the blocked user is inactive, the user doesn’t count as a license user.

Restrictions for Blocked Users

When you block a user:

The user can’t log into the system.

The user details can’t be edited.

You can only view the details, as the Save button is disabled. The user’s blocked status is displayed in the Active column.

The user can’t be deleted manually or via the API.

The user can’t be updated via the API.

The user’s blocked status is displayed on the Manage Users page, and no action is available.

The user can be selected in permission groups.

When selected, the user’s blocked status is also displayed. If the blocked user is the only selection, the Save button is disabled.

The user can’t be set as a guest user.

When the blocked user is selected as a guest user, a message displays, and the Save button is disabled.

The user can’t be set as an approval parent, managing parent or ordering parent.

When the blocked user is selected as an approval parent, managing parent or ordering parent, a message displays, and the Save button is disabled.

The user, who previously granted you or a support representative access to their account, isn’t displayed due to their blocked status.

This means you can’t log in as a proxy user when the user is blocked.

The user can’t be exported.

The user can’t be updated through user import or bulk import.

The user can’t be deleted on the Bulk Deletion page.

The user's blocked status is displayed next to their name.

Additionally, when selecting a user whose customers you want to delete, the blocked user isn’t displayed in the list.

The user can’t be set as a backup approver.

When selecting backup approvers, the blocked user doesn’t appear in autocomplete suggestions. However, if the user was selected prior to becoming blocked, the user’s blocked status is displayed, and the Save button is disabled.

The user can’t be set as an approver for approval rules.

When selecting approvers, the blocked user doesn’t appear in the user list. However, if the user was selected prior to becoming blocked, the user’s blocked status is displayed, and the Save button is disabled. Additionally, when a quote is submitted for approval, and one of the designated approvers is blocked, the approver’s blocked status is displayed and a message notifies the user that the approval process might not succeed because of the blocked approver. Moreover, the approver’s blocked status is also displayed in the Approval History.

The user can’t be added to email lists.

When selecting users, the blocked user doesn’t appear in the user list. However, if the user was selected prior to becoming blocked, the user’s blocked status is displayed, and the Save button is disabled. This means that the blocked user doesn’t receive email messages or notifications.

The user’s status (active or inactive) remains the same as it was before the user was blocked.

If the user was inactive before being blocked, the blocked period also counts as inactivity.

The user can’t be selected when setting up cart visibility.

The user can’t be added to the list of users who can edit multipliers and discounts.

The user can’t be selected when setting up market visibility.

The user can’t be selected when setting up the total amount limit.

The user can’t be selected when setting up a margin health indicator.

The user can’t be selected when setting up promotions/special pricing.

The user can’t be selected when defining which users have to submit quotes for approval on the Approval Rules page.

The user can’t be selected when setting up user mappings for CRM integrations.

When you unblock a user:

The user’s status (active or inactive) remains the same as it was before the user was blocked.

The user will get deleted if the deletion criteria is met based on the inactivity period or last login time.

Yes
No