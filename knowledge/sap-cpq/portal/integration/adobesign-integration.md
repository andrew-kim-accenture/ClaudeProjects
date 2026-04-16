# AdobeSign Integration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/65aa08781e504a5daef13bd50a3e8f5b.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions
	
Subscription to Events
	
Federated Single Sign-On
	
External Configurator Integration for Quote 2.0
	
AdobeSign Integration


	
AdobeSign Signing Process Example
	
Set Up Integration in SAP CPQ and AdobeSign
	
Icertis Contract Intelligence Integration
	
DocuSign Integration
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
AdobeSign Integration

AdobeSign integration enables users to easily sign electronic documents and contributes to a faster closing of deals by sales representatives.

The integration is enabled by administrators for the respective users. For the integration to be successful, the email address of an SAP CPQ user needs to match the one in AdobeSign. Otherwise, an error message displays.

The integration with AdobeSign is supported only for the Quote 1.0 engine.

Prerequisites
The following prerequisites need to be completed for this integration:

an AdobeSign account is created at AdobeSign portal.

Uncertified applications are enabled to access your AdobeSign account (applicable only for demo/development/sandbox environments). To enable the access, log into AdobeSign portal and access Account. Under Account Settings, open Security Settings. Select the following options under API: Allow Uncertified partner applications to access data from this account and Allow users who aren't account administrators to develop applications that use the Adobe Sign API.

Complete the steps in Set Up Integration in SAP CPQ and AdobeSign to set up the integration.
Document Template Tags
AdobeSign tags are used to indicate locations in the document where recipient needs to act. If tags are added to the document, then signer is forced to sign the document at the exact place in the document where the tag has been placed. If tags aren’t added to the document, then AdobeSign defines the place where the signer places their signature.
E-Signing Templates

To mark place in the document generation template where signer should put their signature, you must insert AdobeSign tag as a signature placeholder: {{Sig_es_:signer1:signature}}.

Integration Statuses
There are four quote statuses that are used during the signing process:

E-Sign Accepted

E-Sign Declined

E-Sign Rejected

Waiting for E-Signing

When the quote is sent to the representative for e-signing, the quote status is changed to Waiting for E-Signing. As soon as the document is signed, the quote status moves to E-Sign Accepted. On the other hand, if the signer refuses to sign the document, it’s moved to E-sign declined. If the document is revoked before it has been signed, the quote status changes to E-Sign Rejected.
Integration Actions
Transition between e-sign statuses is performed via the integration actions. For this purpose, four built-in actions are available:

Generate Document for E-Sign

This action is the only one from this group that is visible in quote layout and that can be triggered by the SAP CPQ user. This action isn’t supposed to change the quote status. In order to make this action visible in the quote layout, you must enable it by setting the workflow permission for it in Setup  Workflow/Approval  Workflow Permissions.

Change E-Sign Status

This action is automatically triggered after generating the document, when the user sends a document to AdobeSign. If the document processing is successful, the action is triggered and the quote moves to the following status.

E-Sign Accepted

E-Sign Declined

The actions E-Sign Accepted and E-Sign Declined are triggered by AdobeSign and aren’t visible in the quote layout. Based on user interaction through AdobeSign, one of the two actions is triggered. The workflow permissions must be set for these actions in Setup  Workflow/Approval  Workflow Permissions. Additionally, you must also set the workflow for these actions in Setup  Workflow/Approval  Workflow  My Quotes in the following way:

The Generate Document for E-Sign action isn’t supposed to change the quote status. After the quote is sent to AdobeSign using the email form that appears on the screen after the document is generated, the quote status is supposed to change from any status to Waiting for E-Signing.

The E-Sign Accepted action should change the status from Waiting for E-Signing to the E-Sign Accepted status.

The E-Sign Declined action is supposed to change the status from Waiting for E-Signing to the E-Sign Declined status.

Guest User
The AdobeSign process is performed by the SAP CPQ guest user. The guest user is set under Setup  Quotes  Email Customers / Quote Acceptance Settings  User used for Quote Acceptance. The user type that the guest user belongs to must have permissions for the AdobeSign Accepted and AdobeSign Declined actions.
Multisign Process

The SAP CPQ integration with AdobeSign supports signing by more than one signer. This process is called Multisign. This section provides you with the information what needs to be done on the SAP CPQ side to enable the multisign process.

The only setup activity needed to enable the multisign process is to add signature placeholders for all signers to the document generation template. If this step is omitted, the multisign process is still available and functional. The reason for that is the fact that AdobeSign automatically locates the placeholders at the bottom of the document template in case when no signature placeholders were found. However, the general recommendation is to insert placeholders into the template documents at the desired place in order to keep the document generation templates well-organized and properly formatted.

No workflow changes are supposed to occur since the quote moves to status “Waiting for E-Sign” upon being sent to signers and remains in that status until all signers sign or decline to sign the document. The placeholder that is used to mark where signers should sign is: {{Sig_es_:signer{r}:signature}}, where {r} should be the ordinal number of the signer (for example {{Sig_es_:signer3:signature}}). A detailed example is provided in AdobeSign Signing Process Example.

AdobeSign Document Revoke

SAP CPQ supports the Revoke Document feature, for users who want to void a document that has already been sent to signers, avoiding the need for signers to review an obsolete document. This action can be triggered from the quote since it has been developed as the standard quote action Void Document. Workflow should be modeled to move the quote back from Waiting for E-Signing to the previous status, after the Void Document action is triggered. Once the signer clicks on the link received via email, they are informed that the document has been revoked.

Add CC
To send a copy of the signed document to additional recipients for informational purposes, click Add CC and enter the email address of the additional recipient in the designated field. If there are multiple recipients in the Add CC field, separate their email addresses with a comma. The recipients entered into the Add CC field receive two emails:

The first email is received when the document is sent for signing.

The second email is received after all signers sign the document. This email contains a copy of the signed document.

Administrator Mode for Sending Documents to Adobe Sign
The Administrator mode enables you to send documents to Adobe Sign as the administrator, instead of having the currently logged-in user act on behalf of the administrator. To set up the integration in the administrator mode, follow the procedure:

Go to Setup  Providers  Adobe Sign

Set Use Admin Mode to TRUE.

The Impersonate Email field displays.

Enter a new email address that is visible to the signing party.

Click Save.

Every time a document is sent to Adobe Sign, regardless of the logged-in user, the document originates from the defined email address. However, if no email address has been set up, the document originates from the email address SAP CPQ administrator used to create the SAP CPQ account.
Example
Company B, a partner of company A, has access to SAP CPQ and needs to send SAP CPQ documents to Adobe Sign for signing. In this case, SAP CPQ sends documents to company A's Adobe Sign account on behalf of company B. If company B already has an account at Adobe Sign, company A won’t be able to send SAP CPQ documents to Adobe Sign because the same email address was used when acting on behalf of company B and when company B opened their own account. However, once company A sets the administrator mode for the Adobe Sign integration, they will be able to send SAP CPQ documents to Adobe Sign for signing on behalf of company B.


AdobeSign Signing Process Example

By following this procedure, you can test the signing process with the AdobeSign integration.
Set Up Integration in SAP CPQ and AdobeSign

The integration with AdobeSign needs to be set up both on the SAP CPQ and the AdobeSign side.
On this page
Prerequisites
Document Template Tags
Integration Statuses
Integration Actions
Guest User
Multisign Process
AdobeSign Document Revoke
Add CC
View all
Yes
No