# Standard Workflow Actions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/43742061cc0a41d9be7e3c889410ead0.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Standard Workflow Actions

Standard Action

	

Description




Accept Proposal

	

After users access the proposal document from an email and review it, if no changes are needed, they can accept the proposal using this action.




Add Item

	

Opens the Catalog allowing users to browse through products and add them to quote.




Approval History

	

Opens an overview of the approval history of the quote (status changes, dates, approvers, rules, and so on).




Approval Reminder

	

The purpose of this action is for administrators to attach email notifications that are sent to approvers who haven't approved nor rejected a quote yet. This action is available in both quote engines.




Approve

	

Approves the quote that has been submitted for approval, allowing the user to break the defined approval rule.




Cancel Changes

	

Retracts all the changes made on the quote since the last time the quote was saved.




Change E-Sign Status

	

This action is automatically triggered when user sends a document to DocuSign. If document processing is successful, the action is triggered and quote moved to the next status. Otherwise, action isn’t triggered and quote status isn’t changed.




Change Status

	

Enables the dropdown list with statuses on the quote so users can select the status manually.




Conditional Reconfigure

	

Reloads the products in the quote, just like the Reconfigure action. However, products are reconfigured only if the product version has been changed after the product was added to the quote.




Copy

	

Creates a duplicate of the quote.




Create Assets

	

Records the items from the quote in the asset table.




Create Custom Object From Quote

	

Used in the Salesforce integration for creating custom objects in Salesforce.




Create Quote In CRM

	

Used in the Salesforce integration for creating quotes in Salesforce.




Create/Update Custom Object

	

Available in the Salesforce integration. It either creates a new custom object in Salesforce or updates it, if there is an existing custom object.




Create/Update Objects From Quote Items

	

Available in the Salesforce integration. It either creates objects in Salesforce from quote items in SAP CPQ, or updates them, if there are existing objects.




Create/Update Opportunity

	

Creates an opportunity from a quote or updates the opportunity if there’s an existing one. Used in the integration with Salesforce.




Delete

	

Deletes the quote.




Detach From Opportunity

	

Detaches the quote from the related opportunity. Used in the integration with Salesforce.




Edit

	

Enables the editing mode for the quote.




E-Sign Accepted

	

Triggered by AdobeSign and is not visible in the quote layout. Triggered when the document is signed.




E-Sign Declined

	

Triggered by AdobeSign and is not visible in the quote layout. Triggered when the signer refuses to sign the document.




Generate Document For E-Sign

	

Initiates the generation of documents that will be sent for e-sign to AdobeSign.




Generate Documents

	

Initiates the process of generating documents from the quote, using a predefined template.




History

	

Opens quote history details (performed actions, statuses, action dates, and so on).




Integration Change Quote Status

	

Changes the status of the quote from Order Confirmation Pending to Order Created with Errors, and from Order Created with Errors to Order Placed. This action should be used in integration flows for the quote-to-order process in the integration with SAP S/4HANA.




Make Primary

	

When there are multiple quotes assigned to an opportunity, this action marks one of them as primary. Used in the integration with SAP Sales Cloud.




Margin Health

	

Allows users to set the margin health on the quote after which the system recalculates the discount and eventually all other calculations are triggered according to the setup in Cart Fields Administration.




New Active Revision

	

Creates a new quote revision and sets it as active.




New Revision

	

Creates a new quote revision.




Order Status Update

	

Used in the SAP Sales Cloud integration solely for changing the quote status as defined in the Workflow (in the out-of-the-box scenario, from Order Confirmation Pending to Order Placed).




Place Order

	

Opens a page with a summary of the quote so users can review it and make any needed changes before actually placing the order.




Place order to ERP

	

Places an order for a product in SAP ERP.




Post Quote Notes Into Account Chatter

	

Sends quote comment to the account Chatter in Salesforce. One comment can only be sent either to the account or the opportunity Chatter.




Post Quote Notes Into Opportunity Chatter

	

Sends quote comment to the opportunity Chatter in Salesforce. One comment can only be sent either to the account or the opportunity Chatter.




Preview

	

Opens a read-only preview of the quote.




Propose Changes

	

After users access the proposal document from an email and review it, they can enter comments into the quote and propose changes to the document using this action.




Quote Expiration

	

This is a scheduled action that is triggered once a day at midnight and it automatically pushes all quotes that are due to expire to the desired status.




Quote Lost

	

Changes the status of the quote to Lost. Available in the list of quotes and allows easy change of status.




Quote Won

	

Changes the status of the quote to Won. Available in the list of quotes and allows easy change of status.




Reapply Taxes

	

Refreshes the country/region and the state tax selection.




Reassign

	

Reassigns the quote to another user.




Reconfigure

	

Recalculates all items in the quote and considers all the changes that affect the values on the quote (for example, if list price is calculated based on an amount in a custom table, you should trigger the Reconfigure action after changing the value in the custom table so that the list price is recalculated in the quote).




Refresh Market and Currency

	

The market and currency selection on the quote are refreshed and in case the selection is different from the default market and currency, those selected on the quote are applied.




Reject

	

Quote approvers use it to reject the quote sent for approval.




Reject Proposal

	

After users access the proposal document from an email and review it, if they don't accept the proposal, they can reject it using this action.




Release Quote And Proposal to SAP Commerce

	

Sends the quote with the generated document to SAP Commerce Cloud.




Release Quote To SAP Commerce

	

Sends the quote, without any documents if any are generated, to SAP Commerce Cloud.




Replace Items

	

If this action is enabled and the item part number is editable, users can search for other items based on their part number in the list of items in the quote.




Reprice

	

Recalculates only the items whose values are changed in a quote, but only when the changes are made in the quote (for example, when a user changes the value of a quote item custom field).




Request Approval

	

When an approval rule is broken on the quote, this action leads to a new page where all approval rules for that quote are listed and users can further submit the quote for approval.




Retract Approval Process

	

Once a quote is sent for approval, this action can retract the quote and no approval is any longer needed.




When quote needs approval, users can only preview documents

	

Sets the application parameter indicating if a user can only preview documents if the quote needs approval. When enabled, document generation is blocked if the quote is in a state where approval is required and execution of eventual pre actionss is determined by the toggle When quote needs approval, allow execution of Pre actions.




When quote needs approval, allow execution of Pre actions

	

Enables users with appropriate authorizations to execute pre-actions if the quote requires approval. This toggle is only available if the toggle, When quote needs approval, users can only preview documents is enabled.

The default setting for this toggle is Disabled, meaning that pre actions if they are set, will not be executed. If the toggle is enabled, pre actions can be executed.




Save Quote

	

Saves the changes made on the quote since the last time the quote was saved.




Send Document to CRM

	

Sends the generated document to Salesforce.




Send Email

	

Sends the email with information on the generated document. This action is available only in Quote 1.0.




Send Quote XML

	

Sends quote XML to a URL or an FTP address.




Set Active

	

Sets a quote revision as active.




Submit for Approval

	

Sends the quote for approval when an approval rule is violated.




Update Sales Quote

	

Updates the related sales quote in SAP Sales Cloud.




Update SAP Opportunity

	

Updates the related opportunity in SAP Sales Cloud.




Upgrade to New Product Version

	

Upgrades the product to a Product Version.




View

	

Opens the quote in the read-only mode.




View Proposal

	

When this action is enabled, an email with the generated document is sent to the destination address with the link for accessing the proposal document in SAP CPQ. This action allows users to open the proposal.




Void Document

	

Revokes the document that has already been sent to signers in the DocuSign integration, avoiding the need for signers to review an obsolete document.

Standard Workflow Action Translations

You can translate each standard action by clicking  and selecting the language you wish to translate to in the Translate to dropdown list.

Related Information
Workflow
Statuses
Action Details
Reprice, Reconfigure, and Conditional Reconfigure - Differences
Yes
No