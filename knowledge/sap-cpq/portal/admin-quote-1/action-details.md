# Action Details | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/b1a848b5d0994b3e86671bb1fb3947d8.html#send-email
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


	
Standard Workflow Actions
	
Action Details
	
Reprice, Reconfigure, and Conditional Reconfigure - Differences
	
Approval Reminder Action
	
Auto Quote Expiration
	
Global Condition for Quote Action
	
Images for Quote Actions
	
Workflow
	
Workflow Permissions
	
Required Fields By Workflow Action
	
Item Actions Workflow
	
Email Lists
	
Notifications
	
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
Action Details

The following section describes the detailed function of different actions.

Note

The modification date updates immediately when you trigger an action. This marks the start of the process. This feature lets you track the initiation of changes promptly. Meanwhile, the cart history logs the completion. This ensures clarity in process timelines.

Send Quote XML

The purpose of this functionality is to enable users to send SAP CPQ Quote XML explicitly (by invoking the appropriate action on the quote), or implicitly (by setting this action to be a pre or post action for some other quote action).

The action can send Quote XML to:

URL address (by using Http Post Method)

FTP address

Workflow Setup - The action Send Quote XML should be set up in the workflow. This means that appropriate user groups need to have privileges to execute this action, and that this action should be put in workflow. Send Quote XML can also be defined as a pre or post action to some other action (for example to Place Order).

Send XML to Http Address - If administrator wants the action to send XML to a Http Address , under Setup  General  Application Parameters, on the Shopping Cart and Quote tab there is a parameter: When action 'Send Quote Xml' is executed, send xml to Http Address:. For more information on this parameter and the following parameters, see Application Parameters. This parameter is required for Http sending, and it should be filled with appropriate Http Address.

Send XML to FTP Address - If the administrator wants the action to send XML to an FTP Address, the following parameters should be adjusted under Setup  General Application  Parameters:

When action 'Send Quote Xml' is executed, send xml to FTP Address: This parameter is required for FTP sending and it should be filled with the appropriate FTP Address.

Action 'Send Quote Xml' sends quote xml under the name:This parameter should be filled with the template for XML document name that will be sent to FTP server. Example: Quote <*CTX(Quote.CartCompositeNumber)*> will create XML document that will contain the quotation number in its name (for example – Quote00010024.xml).

Ftp Path: This parameter should be filled with the local folder path of the FTP server, where the file will be saved.

Ftp Username: This parameter should be filled with the FTP server username.

Ftp Password: This parameter should be filled with the FTP server password.

Action execution - Users can execute the action explicitly by invoking it from the quote, or implicitly by invoking some other action, that will activate "Send Quote XML" as its pre or post action.

Send BOM XML

The purpose of this functionality is to enable users to send SAP CPQ BOM XML explicitly (by invoking the appropriate action on the quote), or implicitly (by setting this action to be a pre or post action for some other quote action).

The action can send BOM XML to:

URL address (by using Http Post Method)

FTP address

Workflow Setup - The action Send BOM XML should be set up in the workflow. This means that appropriate user groups need to have privileges to execute this action, and that this action should be put in workflow. Send BOM XML can also be defined as a pre or post action to some other action (for example to Place Order).

Send XML to Http Address - If administrator wants the action to send XML to a Http Address , under Setup  General  Application Parameters, on the Shopping Cart and Quote tab there is a parameter: When action 'Send BOM Xml' is executed, send xml to Http Address:. This parameter is required for Http sending, and it should be filled with appropriate Http Address.

Send XML to FTP Address - If the administrator wants the action to send XML to an FTP Address, the following parameters should be adjusted under Setup  General  Application Parameters:

When action 'Send Quote Xml' is executed, send xml to FTP Address: This parameter is required for FTP sending and it should be filled with the appropriate FTP Address.

Action 'Send Quote Xml' sends quote xml under the name:This parameter should be filled with the template for XML document name that will be sent to FTP server. Example: Quote <*CTX(Quote.CartCompositeNumber)*> will create XML document that will contain the quotation number in its name (for example – Quote00010024.xml).

BOM Ftp Path: This parameter should be filled with the local folder path of the FTP server, where the file will be saved.

BOM Ftp Username: This parameter should be filled with the FTP server username.

BOM Ftp Password: This parameter should be filled with the FTP server password.

Action execution - Users can execute the action explicitly by invoking it from the quote, or implicitly by invoking some other action, that will activate "Send BOM XML" as its pre or post action.

Detach Quote From Opportunity

Action Detach Quote From Opportunity will enable users to break the link in SAP CPQ between CRM opportunity and SAP CPQ quote. After a user has detached the quote from one opportunity, he will be able to attach it to another opportunity, or to create a new opportunity from the quote.

If the CRM system is Salesforce, the SAP CPQ quote will be removed from the list of opportunity related quotes in Salesforce.

Reapply Taxes

Action Reapply Taxes allows users to refresh country/region and state tax. This action does not have a big impact on the performance unless the formulas for Country/Region Sales Tax (Country/Region Sales Tax) or State Sales Tax (State Sales Tax) are complex.

Send Email

Action Send Email is tied in with Generate Quote action. When Generate Quote action is completed, user is presented with a button to create Email and download the document. When a user creates an email and clicks Send Email, Send Email action will be executed.

Currently Send Email allows for an Activity to be added to Salesforce.com opportunity. To set it up:

In Setup:

In Setup  Quotes  Email Customers / Quote Acceptance Settings section, set Update Opportunity activity in Salesforce after sending Email to Customer to TRUE.

Make sure that Send Email action in added to the workflow

Make sure user groups have permissions set for Send Email action under Workflow  Workflow Permissions.

On user side:

User has to come from Salesforce.com.

Generate a quote.

Click on Create Email.

Send the email.

Activity will be added to the opportunity Activity History.

On this page
Send Quote XML
Send BOM XML
Detach Quote From Opportunity
Reapply Taxes
Send Email
Yes
No