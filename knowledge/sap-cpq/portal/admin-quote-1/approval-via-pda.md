# Approval via PDA | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/5a15e14c3e51462db1a46a691b21d8da.html?locale=en-US&state=PRODUCTION&version=2603
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
Approval via PDA

The following section describes the approval via PDA.

Note

This feature will be deprecated with the 2511 release.

The tag (<* PDAAPPROVAL *>) is used for notifications. Approval Email will contain both links, standard QUOTELINK, and new PDAAPPROVAL. This PDA link will automatically log in user and redirect him to separate page for approval via PDA. Here, he’ll be able to approve or reject quote and see cart summary info. For security reasons, only ApprovalPDA.aspx will be accessible via PDA link. After the quote has been approved or rejected, no other action will be available.
Note

For PDA link generation, the receiver must be a SAP CPQ user and the user must be the approver of the quote. If the approver is not a valid SAP CPQ user, an info log will be created.

SSO authentication is introduced in PDA approvals. To use this authentication feature please enable application parameter, Enable Single Sign-On link generation for PDA approval. Follow the path Setup -> General -> Application Parameters page in the Shopping Cart and Quotes tab.

Note

It is recommend to enable the Enable Single Sign-On link generation for PDA approval application parameter for more secured approval links.

Once this authentication is enabled and if the non approved links are present, then these links need to be regenerated as the old links will not have SSO authentication. To generate new SSO approval link then can use Approval Reminder action in the quote page.

Following are the behavior of the SSO generated approval link:

Approver with SSO enabled.

	

User can access the link and approve or reject the quote.




SSO user (who is not an approver) tries to access the link.

	

It will prompt The user doesn't have ownership rights for this link" error.




Approver with SSO not enabled.

	

Link will be redirected to the IDP's login page for authentication.

Yes
No