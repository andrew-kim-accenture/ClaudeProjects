# Proxy Access | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/5996e127f5de47da88db57f0328f6ed7.html?locale=en-US&state=PRODUCTION&version=2603
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
Proxy Access

The purpose of this topic is to provide details about two types of giving Proxy Access within the SAP CPQ system. There are two different types of Proxy Access::

Grant Logon Access: Describes how to provide proxy access to tenants.

Login as Proxy User: Describes how administrators provide access to user accounts from a certain tenant to resolve the issues.

Grant Logon Access

If you need help resolving a configuration issue, you can allow an administrator or an SAP support representative to log into your account, without you having to share your password.

Context

The procedure for granting logon access to the administrator or the support is almost identical. The only difference is that it’s necessary to enable the Grant Access to support toggle switch if you wish to allow the support team to log into your account, or Grant Access to your Company Admin toggle switch if you with to allow the administrator to log into your account. The Grant Access to support toggle is disabled for users whose password is locked. The same toggle is not disabled for SSO users as they can log in even though their password is locked.

Procedure

Below your name in the top-right corner, access the User Page.

In the User details tab:

Enable the Grant Access to your Company Admin toggle switch to give logon access to the administrator.

A date field displays

The password is disabled for users whose password is locked.

Enable the Grant Access to support toggle switch to give logon access to the support team.

A date and a ticket number fields display.

In the Ticket Number field, enter the number of the ticket for which you are specifically requesting assistance.

Set an expiration date to limit the logon access.

Manually input the date.

Choose the calendar icon to select the date.

Account access will be revoked after the specified date. To manually revoke account access to the administrator, you need to disable the Grant Access to your Company Admin switch and save your changes.

Accordingly, to cancel access to the support, deactivate the Grant Access to support toggle and save changes. When access to the support expires, the toggle switch will automatically be deactivated. Whether access to support is granted or revoked, all changes made on the User Page are reflected in the Setup and vice versa.

Choose the Save.

The page reloads.

Results
Note

After the 1902 release, any existing open grants currently set to an indefinite period of time will automatically become limited to two weeks. If users defined an expiration date for the access grant, and then revoked it before the 1902 release, the next time they open a grant following the 1902 release, the last expiration date used is preselected.

Once you grant access, the administrator can log into your account to help you resolve any issues. You can continue using your account without interruption when the administrator is logged in on your behalf.
Note

When an administrator logs in as a proxy user, the logon is logged in the User Actions tab of the Audit Trail (where both the admin and the proxy user are named). After the logon, all subsequent actions of the administrator are logged in the User Actions tab under the name of the proxy user.

Accordingly, all changes made to granting access to the support are logged in the Audit Trail (for example, granting and revoking access, duration of the granted access, ticket number, and so on). All activities performed by the support are recorded and clearly distinguished from actions carried out by the user. Furthermore, when a support representative logs in as a proxy user, there’s a record of the logon in the event log of the default domain.

Log In as a Proxy User

Support Member Logging In as a Proxy User

Enable the Grant Access to support toggle.

Under the User Actions tab of the Audit Trail section in the SAP CPQ Setup:

If Support member (example, John Smith) is logged from Client's default tenant on behalf of some User (example, David Jones), log must be written as (Proxy - John Smith) David Jones / djones.

If you have been granted access to another user’s account, you can log into SAP CPQ on their behalf to troubleshoot and resolve the issues they encountered.
Note

The visibility of the Login as Proxy User page in default SAP CPQ tenants is now assigned via the Access Rights feature. It can’t be accessed in other tenants regardless of the assigned access rights.

You can log in as a proxy user for both regular and SSO users.

Administrator Logging In as a Proxy User

Enable the Grant Access to your Company Admin toggle.

If you’re an administrator, you can only give the access to other user on admin's tenant.

To log in on tenant's behalf, you can follow these steps:

Go to Setup   Users   Users.

Find the user who granted you access to their account.

Click  next to the username and select Login as Proxy User.

The page reloads, and you’re automatically logged in as the user who granted you access. You remain logged in as a proxy user until you log out. Furthermore, your login is logged in the User Actions tab of the Audit Trail.

Under the User Actions tab of the Audit Trail section in the SAP CPQ Setup :

If Admin (example, John Smith) is logged from Setup on behalf of some User (example, David Jones), log should be written as (Admin - John Smith) David Jones / djones.

Related Information
User Administration
Users
User Registration
On this page
Grant Logon Access
Log In as a Proxy User
Related Information
Yes
No