# Email Settings | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/4bdd31b5c71148ddbfe099d5f011815c.html?locale=en-US&state=PRODUCTION&version=2603
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


	Setup Help

	
Application Parameters
	
Deploy / Send Changes
	
Report Module
	
Countries/Regions, States and Territories
	
Dictionaries
	
Manage Generated Documents
	
File Management
	
Email Settings
	
Time Zones
	
Custom Tabs
	
Recurring Background Jobs Executed on Tenants
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Email Settings

Within SAP CPQ setup, the Email Settings page is now enabled for configuration of all settings for sending emails outside of the SAP CPQ. With this, clients are provided with a better level of security and confidentiality. These settings can be configured by the client on each client tenant.

On this Setup page, clients have the ability to individually configure email sending settings for different types of emails generated outside the SAP CPQ system:

Settings for Users (like emails for Forgot password, and so on).

Settings for Document Generation (emails for outgoing emails with generated document).

Settings for Admin Notifications (like KB sync, and so on).

Settings for Workflow Notifications (such as all workflow actions notifications).

Settings for Approval Auto-Reminder notifications.

Settings for Quote Expiration Workflow action notification.

Settings for DocuSign integration for only Quote 1.0 engine (this isn't available on Quote 2.0).

In each type of settings, the Admin can select from three primary types of SMTP settings. Each type of email setting described above can have a different type of SMTP settings configured:

SAP SMTP service (default): This SMTP setting, ensures that all SAP CPQ emails will be sent exclusively from the official SAP CPQ email address: no-reply-cpq@notifications.sap.com

In the Email Properties, the Custom Email Address will always default to the email source, and the From email address will always be no-reply-cpq@notifications.sap.com. You can also customize the From display name to be the user's full name or a custom name, as well as the Reply-to email address to be the user's email address or another custom email address.

Note

In addition to the mandatory From email address no-reply-cpq@notifications.sap.com, no-reply-cpq+0724@notifications.sap.com is used as an alternative when using the Microsoft Outlook email client. This adjustment is necessary due to an issue with the Outlook email client affecting the display of the From display name.

Custom SMTP service: Another option to consider is using this type of SMTP setting as the foundation for integrating the customer's SMTP server with SAP CPQ. It is mandatory to enable authentication and is highly recommended. Admins are able to:

Enter the SMTP address – IP or DNS address of SMTP your service. Mandatory data.

SMTP Port – it represents the PORT number which SMTP service is using. It is possible to choose between port numbers 25, 465 and 587, or enter custom Port number.

Set the SMTP Authentication Type – From the SMTP Authentication Type drop down menu, you can select the OAuth 2.0 authentication type or Username and Password authentication in which you define the username and password.

Within Email Properties, the user has the ability to choose the From email address, the display name for the sender, the sender's email address, and the reply-to destination. This allows for customization such as using the user's full name or a custom name, as well as using the user's email address or a different custom email address.

CPQ Legacy SMTP service: It is recommended to use one of the first two SMTP types in SAP CPQ as the current state option enables emails to be sent with any desired from email address from SAP CPQ. However, there is a potential risk of some emails being blocked by external email clients such as Google, Yahoo, or certain company domains due to security and authentication issues.

Note

It's crucial to note that this type of SMTP is not recommended, as there is a possibility that outgoing emails may not reach their intended recipients and it may be phased out in future updates.

Note

SAP CPQ uses the default email sending protocol, which is determined by the port configured on the Email Settings page. For example, if a client's port is 587 which requires TLS protocol, SAP CPQ will use that protocol for sending emails.

For each type of setting and for every SMTP type:

Reset to Default Settings: will reset all settings to default values:

SMTP Type -> SAP SMTP service (default)

Reply-To Email Source -> None

From and Sender related fields will be reset to default values for SAP SMTP service (default)

Test: Used to send a test email using the configured Email Settings. By choosing this button, users can verify the sending and receiving of emails with the defined visible email settings.

Note

New email settings cannot be used and configured through scripting.

Yes
No