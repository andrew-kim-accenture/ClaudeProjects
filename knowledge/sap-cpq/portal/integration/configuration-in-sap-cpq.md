# Configuration in SAP CPQ | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/041c6561808345a6ab8037a82c52e802.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Icertis Contract Intelligence Integration
	
DocuSign Integration


	
Configuration in DocuSign
	
Configuration in SAP CPQ


	
Available DocuSign Tags in SAP CPQ for Quote 2.0
	
DocuSign Integration for Quote 1.0
	
DocuSign Integration for Quote 2.0
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
Configuration in SAP CPQ

Using these instructions, you can configure the SAP CPQ - DocuSign integration in the SAP CPQ Setup. The instructions can be used with both quote engines, and differences specific to Quote 2.0 are highlighted as notes.

Go to Setup  Providers  Third-Party Integrations.

A page containing available providers appears.

Click DocuSign.

A page where you can set up DocuSign for your tenant displays.

Enable the toggle switch Enable DocuSign Integration.

Fill out the following fields in the Authentication Settings section

Base URL for Authentication – enter the URL which corresponds with your DocuSign account. The values that are allowed here are: https://account.docusign.com and https://account-d.docusign.com. You can refer to DocuSign documentation for instructions on how to log into your account.

Integration User ID – Copy the User ID from your DocuSign account. The User ID can be found in DocuSign under Settings  Apps and Keys  My Account Information.

Integration Key – Copy the integration key from your DocuSign account. The integration key can be found in DocuSign in Settings  Apps and Keys  Actions  Edit  General Info  Integration Key.

Environment URL – Specify the Environment URL for your DocuSign account. Use the following format: {baseURI}/restapi/v2.1/login_information. You can find {baseURI} in your DocuSign Admin account under the Apps and Keys section.

Note

In Quote 1.0, this is the URL of the DocuSign OAuth 2.0 API. In Quote 2.0, it is mandatory to use the 2.1 version of the DocuSign API for the integration to work.

Private Key – the key used for signing the JWT token during authentication with DocuSign. The RSA private key must be saved in the PEM format and must be at least 2048 bits long. The private key can be generated in your DocuSign account and copied to the corresponding field on your SAP CPQ provider page. Since it is also possible to obtain the private key from an RSA key generator different from DocuSign, if that solution is used, the private key should be saved in SAP CPQ, and the matching public key must also be entered in DocuSign. The private and public keypairs can be accessed in DocuSign in in Settings  Apps and Keys  Actions  Edit  Authentication  Service Integration  RSA Keypairs (ID).

On the DocuSign side, enter the Redirect URL in Settings  Apps and Keys  Actions  Edit  Additional Settings  Redirect URLs. The redirect URL should be in the following format: {baseUrl}/admin/DocuSignAuthentication.aspx, where the {baseUrl} is the URL of your SAP CPQ environment.

In SAP CPQ, click Save to save your changes.

Click Provide Consent, which will prompt you to log into your DocuSign account.

It is necessary to provide consent this way to be able to use the DocuSign integration. Once consent is provided and all parameters are populated, you can click Test Authentication Settings to check whether all the settings on this page are valid. If some of the settings are invalid, a message informs you which settings you need to correct. If all the information is correct, the integration is fully set up and operational.

Once you have successfully configured the authentication settings, you need to configure the remaining options:

In Email Settings, you need to define the default email subject and body for messages delivered to signers and countersigners. Using the Formula Builder, you can build a dynamic formula for the email body.

In Countersigners, you need to manually add and define the countersigners from your company, by filling out the fields Name, Email, Position, and Company. The countersigners defined here will be available for selection at the end of the document generation process.

Document Template Tags

DocuSign tags are used to indicate locations in the document where recipient needs to take action. Also, some tags are used to provide recipient with some information. Some tags are automatically filled with recipient's information.

If tags are added to the document, then the signer is required to sign the document at the exact location of the placeholder (where the predefined tag is placed). If tags aren't added to the document, or there are more signers than there are tags, then the signer is free to choose the place where they will put their signature. In this case, DocuSign will offer a list of all available tags (for example, Initials, Signature, Date, and so on), so the signer can decide where to place each piece of information.

For a list of tags, see Available DocuSign Tags in SAP CPQ for Quote 2.0.

Creating Templates for DocuSigning
To mark place in the document generation template where signer should put their signature, you must insert the appropriate DocuSign tag.
Note

In Quote 1.0, the format of the DocuSign tag used for defining where the signer places their signature is \signhere_1\. Likewise, all DocuSign tags in Quote 1.0 are surrounded by \ characters.

In Quote 2.0, the format of the DocuSign tag used for defining where the signer places their signature is <<signhere_1>>, similar to the tags used in Document Generation. Likewise, all DocuSign tags in Quote 2.0 are surrounded by the characters << and >> (such as: <<signer_1_name>>, <<signer_1_position>>, <<signer_1_company>>, <<countersign_1>>, <<countersigner_1_name>>, <<countersigner_1_position>>, <<countersigner_1_company>>).

Since placeholders will not be replaced by DocuSign (the signatures will be put over them), the text color of placeholders should be set to white (or any other background color that the document has), which will make them invisible in the template document and in the signed document.

Integration Statuses

When integrating SAP CPQ and DocuSign, you must define three new statuses. These statuses will be used in DocuSign process, as starting and ending statuses of DocuSign integration actions. The statuses are listed with their default names, but you can rename them:

E-Sign Accepted

E-Sign Declined

Waiting for E-Signing

Integration Actions

With the DocuSign integration enabled, the following actions are available in the SAP CPQ Setup by default.

Generate Document for E-Sign

This action is visible on the quote and can be triggered by the user. Note that this action should not change the quote status. In order to make this action visible on the quote, you must enable it by setting a Workflow Permission. To do so, go to Setup  Workflow/Approval  Workflow Permissions and assign permission for this action to the particular user type.

Void Document

This action is visible on the quote and can be triggered by the user. After the document has already been generated and sent to signers and countersigners, the user can execute Void Document on the quote to terminate the signing process. You need to set up the Workflow so that the quote is moved from Waiting for E-Signing back to the previous status once Void Document is triggered. If the signer clicks the link received through an email, they will be informed that the document has been revoked.

Change E-Sign Status

This action is automatically triggered after generating the document, the moment the user sends a document to DocuSign. If document processing is successful, the action is triggered and the quote is moved to the next status. Otherwise, the action isn't triggered and the status isn't changed. You need to set this action in the Workflow as the action which changes the status of the quote from the default status to the Waiting for E-Signing status.

E-Sign Accepted and E-Sign Declined

These actions are triggered by DocuSign and aren't visible on the quote. Based on user interaction through DocuSign, one or the other action will be triggered. You should set permission for these two actions too, as described earlier. Also you must set workflow for these actions. To do this, go to Setup  Workflow/Approval  Workflow, and under the My Quotes tab, set the workflow as explained in the next section

Send Reminder
Note

This action is available only in Quote 2.0.

This action is visible on the quote and can be triggered by the user. It does not result in a status change. Instead, if the user has been waiting too long and wishes to remind the signer about the document, they can click Send Reminder in order to send the email once again to the specific signer that they are waiting for.

Set Up Workflow to Support the DocuSign Process

Generate Document For E-Sign shouldn't change the quote status. After the quote is sent to DocuSign using the email form that appears on the screen after the document is generated, the quote status should change to Waiting for E-Signing.

E-Sign Accepted should change the status from Waiting for E-Signing to E-Sign Accepted.

E-Sign Declined should change the status from Waiting for E-Signing to E-Sign Declined.

Void Document should change the status from Waiting for E-Signing back to the previous status.

Guest User

A guest user should be configured in Setup  Quotes  Email Customers/Quote Acceptance Settings. The user should be selected in Electronic Quote Acceptance Parameters  User used for Quote Acceptance .

The guest user should have permissions for the E-Sign Accepted, E-Sign Declined, and Void Document actions. In addition, the guest user should be active and the password must not be expired.

Note

Make sure that the parameter Hide Send Email Form after document generation in Setup  Quotes  Email Customers / Quote Acceptance Settings is set to FALSE to be able to send a document for e-signing.

Related Information
DocuSign Integration for Quote 1.0
DocuSign Integration for Quote 2.0
On this page
Document Template Tags
Creating Templates for DocuSigning
Integration Statuses
Integration Actions
Set Up Workflow to Support the DocuSign Process
Guest User
Related Information
Yes
No