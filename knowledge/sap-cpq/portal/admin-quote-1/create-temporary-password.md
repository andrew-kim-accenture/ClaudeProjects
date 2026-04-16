# Create Temporary Password | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/5ea052f5dabb4d0985c405db442a5054.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Users


	
Create Temporary Password
	
Forgot Your Password
	
Change Password
	
User Types
	
Permission Groups
	
User Custom Fields
	
Companies
	
Guest User
	
Access Rights
	
Proxy Access
	
User Interface Design
	
Workflow-Approvals
	
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
Create Temporary Password

A temporary password gives users a possibility to log into SAP CPQ just to be able to create a new password which won’t be shared with the administrator.

Administrators and users with delegated authority can create temporary passwords for their underlying users in the General tab of the user creation process. Temporary passwords are useful in case users forget their passwords, their accounts are locked, or they have issues with resetting the existing password.

To enable creating temporary passwords, enable the toggle, Allow Temporary Password from the Password Policy page.

The application parameter Do not email login details to users created by admin defines whether the user will receive email notifications. Do not email login details to users created by admin can be found under Setup  General   Application Parameters   General Parameters. If the parameter is set to FALSE, the following occurs:

If a temporary password is set for a new user, the user receives one email with the username, and another email with the URL and the domain for which the temporary password was set.

If a temporary password is set for an existing user, the user receives only the email with the URL and the domain for which the temporary password was set.

In either case, you must communicate the temporary password to the user outside SAP CPQ (for exampe, via email). After the user logs in with the provided temporary password, they are redirected to set a new password.
Note

This feature is available only for regular SAP CPQ users, not for SSO users.

The temporary password can also be set up through other features for creating/updating users:

import of users via Excel

SOAP and REST users APIs

in User Menu by users with delegated authority.

Note

In SAP CPQ, both users and administrators have the ability to change their own passwords unless they are designated as SSO users. However, administrators are not able to change the passwords of other SAP CPQ users through user import/export, user management in the Setup, or API.

Related Information
Users
Application Parameters
Yes
No