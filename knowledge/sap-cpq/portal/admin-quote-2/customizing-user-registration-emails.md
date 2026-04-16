# Customizing User Registration Emails | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/e2897daa57f84d06a416f9e10c7e8a65.html?locale=en-US&state=PRODUCTION&version=2603
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
Customizing User Registration Emails

When you create users, they receive an email notification, which you can customize, containing their account information, such as username, password, first name, and so on.

The information displayed represents user field values that are accessed in Dictionaries. For each value, there’s a corresponding tag that pulls the value from the dictionary when a new user is created. By using value-tag pairs, you can customize the email notification that the newly created users and self-registered users receive.

Customizing the Email Sent to New Users
To customize the email notification that the newly registered users receive:

Go to Setup  General  Dictionaries.

Find your default custom dictionary.

Click  next to the dictionary to view its values.

A page with key/value pair displays.

In the Key column, find the WS.Notification.SendUserRegistrationNotification.Body key.

Enter the key in the search field and either click Search or press Enter.

Values of the key and their corresponding tags are displayed in the Value column.

Click  next to the key to customize the value-tag pairs.

A pop-up displays.

When adding value-tag pairs to the Value field, use values and tags displayed in the table in the following format: Value:{{Tag}}.

Click Save.

The following table displays supported user field tags and the corresponding values the tags pull when new users are created.
Values	Tags


Username

	

{{Username}}




Password

	

{{Password}}




First name

	

{{FirstName}}




Last name

	

{{LastName}}




Email

	

{{Email}}




User type

	

{{UserGroup}}




Address1

	

{{Address1}}




Address2

	

{{Address2}}




URL

	

{{URL}}




Domain

	

{{Domain}}




City

	

{{City}}




Province

	

{{Province}}




Zip code

	

{{ZipCode}}




Country/Region

	

{{Country}}




State

	

{{State}}




Phone

	

{{Phone}}




Fax

	

{{Fax}}




Title

	

{{Title}}




Territory

	

{{Territory}}




ID code

	

{{IDCode}}




Company name

	

{{CompanyName}}




Brand

	

{{Brand}}

Customizing the Email Sent to Self-Registered Users
Customizing the email notification for self-registered users is done in the same way as for the newly created users, the only difference being the key used - UserRegistration.NotificationUser.Body. The following table displays supported user field tags and the corresponding values the tags pull when users self-register an account.
Values	Tags


Username

	

{{Username}}




Password

	

{{Password}}




First name

	

{{FirstName}}




Requested company

	

{{RequestedCompany}}




Last name

	

{{LastName}}




Email

	

{{Email}}




Address

	

{{Address}}




Address1

	

{{Address1}}




Address2

	

{{Address2}}




URL

	

{{URL}}




Domain

	

{{Domain}}




City

	

{{City}}




Province

	

{{Province}}




Zip code

	

{{ZipCode}}




Country/Region

	

{{Country}}




State

	

{{State}}




Phone

	

{{Phone}}




ID code

	

{{IDCode}}

In addition, values and tags that are supported for self-registered users, Password being the exception, can also be applied to the email notification administrators receive when users self-register. In this case, the UserRegistration.NotificationAdmin.Body key is used.
Related Information
User Registration
On this page
Customizing the Email Sent to New Users
Customizing the Email Sent to Self-Registered Users
Related Information
Yes
No