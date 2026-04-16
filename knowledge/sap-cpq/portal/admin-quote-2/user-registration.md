# User Registration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/c3168c3ee10e449e97f6fc5d20cb3192.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Users
	
User Types
	
Permission Groups
	
User Custom Fields
	
Companies
	
Guest User


	
User Registration


	
Customizing User Registration Emails
	
Setting Up an Anonymous User
	
Access Rights
	
Proxy Access
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
User Registration

User Registration allows users to create an account if you haven't previously created one for them.

Administrator Side

To allow users to register from the login page, activate the Allow User Registration toggle switch. If the toggle switch isn't active, users can't register in the User Registration page and they are prompted to contact their administrator.

Default User Settings for Self-Registered Users
This tab is for defining the settings that apply to every user that registers on their own, without an approval from the administrator. To access the tab, go to Setup  Users  Guest User and Default User Settings  Guest User Settings.

In Custom Message, enter a message that appears on the User Registration page.

You can use HTML tags.

Activate the Allow User Registration toggle swich if you wish to allow users to self-register in the environment.

Activate the Make New Self-registered Users Active toggle switch if you wish to allow new self-registered users to be immediately active followiing their registration.

Note

The toggle switch is by default turned off, which means that newly registered users are inactive until administrators make them active. If you wish to allow users to self-register in their environments (via the Allow User Registration toggle switch), but not to be active by default, they need to select at least one administrator who will receive self-registration email notifications and activate new users.

In Default User Type, select a user type that is assigned to all self-registered users (see User Types).

In Default Password Expiration Period in Days for Self-Registered Users, define the number of days before a password expires.

To prevent users from self-registering to SAP CPQ, enter -1 in this field.

In Default Ordering Parent and Default Managing Parent, select the users that will be assigned as the ordering and managing parents, respectively, to self-registered users.

The field offers autocomplete suggestions as you type in characters.

In the Optional Fields list, select the fields that the user can optionally fill out during registration on the User Registration page. The unselected fields are mandatory. Additionally, all fields that users must fill out are listed in the dedicated list. All user custom fields display in the registration page and they are listed in this page as well.

Click Save.

The settings for the User Registration page are now set up.

Choose which administrators from the Available Administrators will oversee self-registered users and approve their registrations. The Selected Administrators will be notified via emails whenever new users register in their environment and will then be able to approve them.



Customizing User Registration Emails

When you create users, they receive an email notification, which you can customize, containing their account information, such as username, password, first name, and so on.
Yes
No