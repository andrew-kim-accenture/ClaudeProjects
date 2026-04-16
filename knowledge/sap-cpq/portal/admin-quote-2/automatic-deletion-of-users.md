# Automatic Deletion of Users | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/8b7f239c1ffa4bc98f9edef2dc58e43c.html?locale=en-US&state=PRODUCTION&version=2603
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
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security


	Setup Help

	
DKIM Support for Outbound Emails
	
Automatic Data Deletion


	
Blocked Data
	
General Deletion


	
Automatic Deletion of Customers
	
Automatic Deletion of Quotes
	
Automatic Deletion of Users
	
Automatic Deletion of Business Partners
	
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
Automatic Deletion of Users

When deleting users, you can either delete inactive users or users who don’t log into the system during the specified deletion period.

Automatic Deletion of Inactive Users
A user becomes inactive when you:

disable the Active toggle switch in Setup  Users  Users  General, or

Update the user's active status via the API or through user import.

To delete inactive users:

Go to Setup  Security  Data Deletion.

A new page displays.

In General Deletion  Users, enable the Delete Inactive Users toggle switch.

Time period selector displays.

Define a period after which inactive users will get deleted.

The period can be set in either months or years.

Click Save.

A confirmation message displays.

The system calculates the deletion period from the date the administrator marked the user as inactive, starting from the 2018.4 release date. If the user was inactive before the 2018.4 release, that period isn’t taken into account when calculating the deletion period.

Example
Example: You want to delete inactive users from the system, so you enable the Delete Inactive Users toggle switch and set the deletion period to 3 months. In this case, the system will take into account only those users who became inactive after the 2018.4 release date (November 17, 2018). This means that if a user becomes inactive on November 20, 2018, the system will delete the user on February 20, 2019. On the other hand, if the user became inactive on October 10, 2018, the system won’t take the deletion period set for this user into consideration. As a result, the user won’t get deleted.
Automatic Deletion of Nonlogged in Users

To delete users who don’t log into the system during the specified period:

Go to Setup  Security  Data Deletion.

A new page displays.

In General Deletion  Users, enable the Delete Non-logged in Usersw toggle switch.

Time period selector displays.

Define a period during which users who don’t log into the system will get deleted.

The period can be set in either months or years.

Click Save.

A confirmation message displays.

The system calculates the deletion period from the last login date, starting from the 2018.4 release date. If the user didn’t log into the system before the 2018.4 release, that period isn’t taken into account when calculating the deletion period.

Example
You want to delete non-logged in users from the system, so you enable the Delete Non-logged in Users toggle switch and set the deletion period to 3 months. In this case, the system will take into account only those users who logged in after the 2018.4 release date (November 17, 2018). This means that if a user’s last login was on November 20, 2018, the system will delete the user on February 20, 2019. On the other hand, if the user’s last login was on October 10, 2018, the system won’t take the deletion period set for this user into consideration. As a result, the user won’t get deleted.
Deletion Limitations for Users

Since users are linked to other SAP CPQ entities, deleting a user isn’t possible in the following cases:

The user is the designated approver for approval rules.

The user has performed actions on existing quotes.

The user is in charge of a forum or a topic or has posts published.

The user needs to either approve or reject the quotes assigned.

The user created existing quotes.

The user created customers.

Users that can’t be deleted due to the above-mentioned reasons will be marked for deletion, and the system will keep trying to delete users on a daily basis. Users will get deleted once the condition that prevented them from being deleted the first time is no longer valid.

On the other hand, during the scheduled daily job when the system is trying to delete a user who couldn’t be deleted due to the above-mentioned reasons, if the user no longer meets the deletion criteria (the user logged in or became active), the system will stop trying to delete the user.

Marked for Deletion

In the users table within SAP CPQ Setup, there's a column labeled Marked for Deletion. Users with a Yes value in this column are either inactive or non-logged users, and are scheduled for deletion based on the Data Deletion settings in SAP CPQ Setup. These users have at least one associated entity that needs to be removed or deleted beforehand (refer to the action Check if User is in use) to ensure successful deletion according to the criteria outlined in the Data Deletion settings. Users marked with No either do not fall under the criteria specified in the Data Deletion settings or those criteria have not been defined.

Note

The deletion process for users marked with Yes can be halted if the user becomes active or logs in to SAP CPQ. In such cases, the users status in this column will change to No.

Logging Deleted Users

Each deleted user is recorded in Setup  Audit Trail  Admin Actions. Additionally, the user ID of the deleted user is displayed in the Action column in the following format: GDPR - delete user - user ID.

Note

Users that are marked for deletion are automatically deleted from the system once all associated entities have been removed or deleted. In this case, a System User is recorded for the user who performed the action in the column User.

On this page
Automatic Deletion of Inactive Users
Example
Automatic Deletion of Nonlogged in Users
Example
Deletion Limitations for Users
Marked for Deletion
Logging Deleted Users
Yes
No