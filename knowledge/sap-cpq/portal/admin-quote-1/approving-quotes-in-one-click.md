# Approving Quotes in One Click | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/34ffc895820740158a85625949ade93a.html#email-template-tags
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
Approving Quotes in One Click

The One-click Approval feature streamlines the approval process by enabling approvers to accept or reject quotes directly from the email, without logging into SAP CPQ.

When quotes are submitted for approval, they can be approved/rejected by one or multiple approvers, as previously defined in the chapter on Approval Rules. If a user violates certain rules, approvers receive an approval request email. The email contains all the information the approvers asked for. Typically, the email includes the quote number, the description of the violated rule(s) and customer information. approvers can approve or reject quotes directly from the email by clicking the Accept or Reject buttons.
Note

For One-click approval link generation, the approver's name and the email coming from the email list is verified. The approver's name and the email must be present in the SAP CPQ user and the user must be an active user. If the approver's name or email is not found, an info log is created, if the approver is not a recognized user in SAP CPQ.

Example

Once a product is configured and added to quote, a user can modify the discount. If the resulting discount exceeds the defined discount limit, the quote is submitted for approval and an approval request email is sent to the approver(s).

You can use a SAP CPQ-provided One-click Approval HTML Email Template to create your own One-click Approval template.

Note

Administrators can modify CSS properties to suit their needs.

Alternatively, you can set up the fields you want to display in the approval request email by following the steps outlined below.

SSO authentication is introduced in one click approval. To use this authentication feature please enable application parameters Enable Single Sign-On link generation for One Click approval. Please follow the path on Setup -> General -> Application Parameters page in the Shopping Cart and Quotes tab.

Note

It is recommend to enable Enable Single Sign-On link generation for One Click approval for more secured approval links.

Once this authentication is enabled and if the non-approved links are present, then these links need to be regenerated as the old links will not have SSO authentication. To generate new SSO approval link then can use Approval Reminder action in the quote page.

Following are the behavior of the SSO generated approval link:

Approver with SSO enabled.

	

User can access the link and approve or reject the quote.




SSO user (who is not an approver) tries to access the link.

	

It will prompt error. " The user doesn't have ownership rights for this link."




Approver with SSO not enabled.

	

The link will be redirected to IDP’s login page for authentication.

Create a One-click Approval Template

The following procedure illustrates how to create an example template for One-click Approvals.

Prerequisites:

Define Approval Rules. For details, see Approval Rules.

Create Email Lists. For details, see Email Lists.

Set up the Workflow. For details, see

Approval Process Administration.

Go to Setup  Workflow/Approval  Notifications.

Click Add New to create a notification.

Enter the notification name (Notification to Approver).

Click Save. Once the name is successfully saved, an additional window designated for the notification message appears.

Click Add New to create your accompanying message.

Click  to create the subject line (Approval Request for <* SYSTEMQUOTATIONNUMBER *>).

Add your previously created email list to the notification.

Paste the SAP CPQ-provided One-click Approval HTML Email Template into the Message Text box. Alternatively, if you do not want to use the ready-made HTML template, you can create one. To add CTX tags and formulas you want to apply to your email template, click  next to the message box. The most frequently used tags are outlined in the Email Template Tags section below.

Select HTML as email type to ensure your email is rendered properly. Alternatively, if you have decided not to use HTML for formatting, choose Plain text.

If applicable, enter a condition and add attachments.

Click Save.

When a user changes the field value affected by a predefined rule, the designated tags check whether Approval Rules are violated. If one or more rules are violated, the approval request email is automatically sent to the approver(s).

When clicking Accept or Reject, the approver is automatically redirected to SAP CPQ where the corresponding message Quote is accepted. or Quote is rejected is displayed, respectively.

If there are multiple approvers, the approval process depends on the AND/OR logic defined in the Approval Requirements field in the Approval Rules section. In a scenario where the AND logic is applied, the quote is approved if all approvers approve it. However, if one of them rejects it, the quote is rejected. If the OR logic is applied, the quote is approved if any approver from the list approves it. The quote is rejected if a single approver rejects it.

Email Template Tags

The following is a list of tags that pull values from SAP CPQ fields.

You can add as many fields to your One-click Approval template as you need.

<* CO_INFO(NAME) *>: pulls the name of the User who has submitted a quote for approval.

<* SYSTEMQUOTATIONNUMBER *>: pulls the quote number.

[IF]([EQ](<*CTX( Quote.Approvals.ApprovalRule(Name).IsViolated )*>,True)){<*CTX( Quote.Approvals.ApprovalRule(Name).Description )*>}{}[ENDIF]: checks whether a rule is violated and pulls its description.

<*CTX( Quote.Customer(BillTo).Company )*>: pulls the Bill-to Customer’s company name.

<*CTX( Quote.Customer(BillTo).Country )*>: pulls the Bill-to Customer’s country/region name.

<*CTX( Quote.Customer(BillTo).Email )*>: pulls the Bill-to Customer’s email address.

<*CTX( Quote.Total.TotalAmount.MarketDisplay )*>: pulls the total amount of the quote.

Note

The description of the violated rule is pulled only if the CTX.Quote.Approvals.ApprovalRule(Name).isViolated tag is evaluated as true.

A tag must be created for each rule that might be violated in the quote process.

On this page
Create a One-click Approval Template
Email Template Tags
Yes
No