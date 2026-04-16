# Password Policy | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/250b9aa8caec428e99a0df3dd9fc6d5c.html?locale=en-US&state=PRODUCTION&version=2603
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
Password Policy

On the Password Policy page the Administrator can configure password rules for User password creation.

Following section describes the fields:

Minimum Length - controls minimum password length. Minimum allowed value is 8. In order to change this limitation, contact SAP CPQ Support.

Maximum Length - controls maximum password length. Maximum allowed value is 50. In order to change this limitation, contact SAP CPQ Support.

Number of Passwords in History to check - Controls how many passwords stored in the password history. You cannot use previously used passwords. Minimum allowed value is 5 and maximum allowed value is 20. In order to change this limitation, contact SAP CPQ Support.

Include Lower Case - indicates that at least one lower case letter is required in the password.

Include Upper Case - indicates that at least one upper case letter is required in the password.

Include Number - indicates that at least one number (0-9) is required in the password.

Include Special Character- indicates that at least one special character ($, @, !, %, *, #, ?, &, _, ~, (, ), ., -, `) is required in password.

Maximum Number of Login Attempts - controls maximum number of failed login attempts. After the maximum attempts reached, User will be blocked.

Password Creation Token Validity Period - controls validity period in hours of Password creation token received in an email by the new User.

Password Expiration in Days - controls password expiration period in days, after which password is expired. Moved old Password Validity Period parameter from the old Setup page (General   Application Parameters).

Password Expiration Warning Period - controls period in days before password expiration when User will see warning message after successful login.

Allow Temporary Password - indicates if it is allowed to Administrators to create User’s temporary passwords, which won’t be shared with the same Administrators. If TRUE, temporary passwords can be set through the Setup, via API and import/export functionalities. It's recommended to leave this parameter to FALSE to avoid potential security breaches.

Allow Mail Notification on Password change - indicates will Users receive emails after password is changed.

All configurations made under the Password Policy page in the Setup will be reflected to all Password Rules labels at all places in the SAP CPQ where they exist.

Yes
No