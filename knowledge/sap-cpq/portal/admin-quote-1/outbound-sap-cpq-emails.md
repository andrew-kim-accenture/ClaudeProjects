# Outbound SAP CPQ Emails | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/93d0456e75c747d49300742657d185df.html#emails-which-are-sent-through-the-document-generation-email-form-(in-the-last-step-of-document-generation-process)
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
Outbound SAP CPQ Emails

Outbound emails are all emails sent from SAP CPQ to clients.

Note

If you've been registered in SAP CPQ before the deployment of the 2005 release occurred, you need to contact the SAP CPQ Support team who will assist you in implementing the listed email-related behaviors.

You can define Sender and From email address that display in outbound SAP CPQ emails by editing application parameters Sender Email Name, Sender Email Address, and From Email Address.

Note

If you're encountering any problems with receiving emails, you may need to allowlist the SAP CPQ SMTP server IP address.

The IP addresses of the SMTP server are:

Data Center

	

IP Addresses of SMTP Server




Europe Azure Data center

	

20.52.249.128/28

20.52.249.144/28

20.113.208.112/28

20.113.208.48/28




US Azure Data center

	

20.62.197.192/28

20.62.197.240/28

20.62.194.0/31

20.62.198.96/28

20.62.198.0/28

20.62.195.136/31




Singapore Azure Data center

	

172.188.36.64/28

172.188.35.216/29

20.2.60.96/28

20.2.224.208/29

These are the scenarios in which outbound emails are sent:

User management emails

Example: Emails sent after user creation

In the From Email Address application parameter enter the email that will be displayed in the From field of the received email.

The Sender address is taken from the Sender Email Address application parameter.

Sender name is defined in the Sender Email Name application parameter.

Note

If there's no Sender Email Address, it remains empty and there's no Sender Email Name either.

Emails sent after an action is triggered

Example: Approvals sent to approvers

In the From Email Address application parameter enter the email which will be displayed in the From field of the received email.

The name displayed in the From field of the received email is the full name of the user who triggered the action.

The reply-to address should be the email of the user who triggered the action.

The Sender address is taken from the Sender Email Address application parameter.

Sender name is defined in the Sender Email Name application parameter.

Note

If there's no Sender Email Address, it remains empty and there's no Sender Email Name either.

Emails sent when bulk import/export is finished

In the From Email Address application parameter enter the email which will be displayed in the From field of the received email.

Note

If you haven’t added an email to the From Email Address parameter, the email won’t be sent.

The Sender address is taken from the Sender Email Address application parameter.

Sender name is defined in the Sender Email Name application parameter.

Note

If there's no Sender Email Address, it remains empty and there's no Sender Email Name either.

Emails sent if the knowledgebase synchronization is unsuccessful (for Variant Configuration integration)

In the From Email Address application parameter enter the email which will be displayed in the From field of the received email.

Note

If you haven’t added an email to the From Email Address parameter, the email won’t be sent.

The Sender address is taken from the Sender Email Address application parameter.

Sender name is defined in the Sender Email Name application parameter.

Note

If there's no Sender Email Address, it remains empty and there's no Sender Email Name either.

Automatic reminders sent to approvers if they do not take action on quote approval requests

In the From Email Address application parameter enter the email which will be displayed in the From field of the received email.

Note

If you haven’t added an email to the From Email Address parameter, the email won’t be sent.

The Sender address is taken from the Sender Email Address application parameter.

Sender name is defined in the Sender Email Name application parameter.

Note

If there's no Sender Email Address, it remains empty and there's no Sender Email Name either.

Place order checkout

In the Place Order “From” Email Address application parameter, enter the email which will be displayed in the From field of the received email.

Note

If no email is added to the parameter, the From field will be populated with the email address of the currently logged-in user.

The Sender address is taken from the Sender Email Address application parameter.

Note

If the Sender Email Address isn’t defined in the parameter, the email address of the currently logged-in user will be used.

Emails which are sent through the document generation email form (in the last step of document generation process)

In the From Email Address application parameter enter the email which will be displayed in the From field of the received email.

Note

If an email isn’t added to the application parameter, the From field will be populated with the email address of the currently logged-in user.

The name displayed in the From field of the received email is the name used in the Name field in the document generation email form.

The Sender address is taken from the Sender Email Address application parameter.

Sender name is defined in the Sender Email Name application parameter.

Note

If there's no Sender Email Address, it remains empty and there's no Sender Email Name either.

The selected value on the Hide "From" Email Address and "Name" from the Generated Document Email Form application parameter determines whether the From and Name fields are visible in the document generation form.

On this page
User management emails
Emails sent after an action is triggered
Emails sent when bulk import/export is finished
Emails sent if the knowledgebase synchronization is unsuccessful (for Variant Configuration integration)
Automatic reminders sent to approvers if they do not take action on quote approval requests
Place order checkout
Emails which are sent through the document generation email form (in the last step of document generation process)
Yes
No