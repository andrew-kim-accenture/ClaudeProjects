# Notifications | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/158a2ac68ad742ff8cc55cb764034382.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Notification Implementation
	
Approval via PDA
	
One-click Approval HTML Email Template
	
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
Notifications

The following section describes detailed function of notifications.

If email lists can be compared to the email recipients, notifications would be the rest of the email. Notifications define the subject of the email and the body. Notifications can contain any number of messages, and each message can have different content and email lists. Notifications can then be attached to any workflow action. This makes it quick and easy to notify the necessary people of users’ actions. Once email lists have been created, notifications can then be made to include them. To manage notifications, follow the steps below:

click the Notifications link under the Workflow/Approval drop down menu. All existing notifications are listed.

To create a new notification, click Add New.

Enter an appropriate Notification Name and click Save. The option to add messages is then displayed.

All that is required when creating a notification is the name. This name is then used when assigning the notification to a workflow action. Click Save to save the name. Once the name has been saved, the message administration for that notification becomes available. Click Add New Message to add a new message to the current notification.

Note

Clicking Go Back will only cancel the notification add or edit. This will not undo any message adds or alterations.

Companies who have SSO users to whom they wish to send email notifications attached to actions (for example, notifications for quote approval or quote rejection) need to update the SAP CPQ URL which will be sent as a part of the emails. For example, if the URL was http://yourdomain.cpq.cloud.sap/Login.aspx, it should now consist of the user's IdP like this: https://yourdomain.cpq.cloud.sap/fed/domainName/Login.aspx?quote=CFCECFCACFCFC7CA.

Creating a message is much like creating an email. The Subject, To addressee, and Text must all be entered to create the message. The To addressee in this case, though, is an email list, or email lists. Users included in the selected email list(s) will receive the message.

The email can be sent as HTML or plain text. Sending emails in HTML allows you to create a better looking and more interesting emails. Two pictures below show an example of HTML notification formatting in SAP CPQ and rendering in mail client.

Dynamic text can be entered in the subject, message text, and condition sections through tags using the syntax builder. The syntax builder for the sections can be accessed through the  symbol next to each section.

A condition can also be entered in the Condition section that has to be met to in order to send the notification. Enter 1 in the Condition section to always send the notification.

Common tags that can be used to create dynamic texts include:

<* SYSTEMQUOTATIONNUMBER *> - The quote number of the quote

<* QUOTELINK *> or <*FederationQuoteLink(idpEntityId)*> that is intended for Federated Single Sign-On - A URL that links directly to the quote

Note

In the tag FederationQuoteLink, the IpdEntityId argument is optional. In case it is omitted, the first EntityId for which Single Sign-On is enabled is chosen.

<* TOTALLISTPRICE *> - The total price of the quote before discounts

<* TOTALNETPRICE *> - The final price of the quote

The full list of the available tags can be accessed by clicking the Syntax builder for the "Message Text".

Some tags are used with parameters like:

<* CO_INFO(NAME) *> - The name of the Cart Owner

<* BT_INFO (CUSTOMER_FIRST_NAME) *> - The first name of the Bill To Customer

<* CO_STINFO(SHIP_ZIP_CODE) *> - Zip Code of the Ship To Customer

<* CU_INFO(USERNAME)*> - The user name of the current user

These tags with parameters have a list of available parameters, and a parameter must be chosen to use the tag.

For example, assuming a notification is set up as follows:

When a quote requires approval, an email notification is sent to the approver that looks like this:

Attachments can also be included with the email message. Only DOCX, DOC, XLS, XLSX, and TXT files can be used as attachments. Existing attachments can be managed by selecting the file from the list and clicking Delete or Download. New files can be uploaded into the system by clicking the Upload button.

To add an attachment to the message, transfer the file from the Available Attachments box to either the Non-Parsable Attachments box or the Parsable Attachments box. Which box an attachment is transferred to determines how that file is handled when the email message is sent.

Files added to the Parsable box will be compiled by SAP CPQ when the email is sent. This means that any Word Quote tag used in the file to include Quote, Customer, or User information will be replaced by the information of the quote that initiated the notification. Any files added to the Non-Parsable box will not be compiled by SAP CPQ.

Note

For more information on word quote tags and creating documents that contain them, see Document Generation Template.

When finished entering the information for the message, click the Save button to add the message to the notification

Note

You can track the status of email notifications in the log. Every sent email notification is logged in a record with the title Email Notification. The log contains the following data: Notification name, Notification Content ID, Timestamp, Cart ID, Owner ID, Notification subject, Notifier name, Notifier email and a record indicating that the notification is successfully sent.

Email notifications that are not sent are also logged in a record with the title Email Notification. In this case, the log states that the notification condition is not fulfilled and contains the following data: Notification name, Notification Content ID, Timestamp, Cart ID, Owner ID and Notification subject.

You can enable email notification logging via General  Application Parameters  Shopping Cart and Quotes  Use Additional Logging For Email Notification.

Yes
No