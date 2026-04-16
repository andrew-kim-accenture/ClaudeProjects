# Example and Use Cases for Signing Process | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/28c4110645b842a0a337b75a3cae0e57.html?locale=en-US&state=PRODUCTION&version=2603
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
	
DocuSign Integration for Quote 1.0


	
Example and Use Cases for Signing Process
	
Multisign Process
	
Countersign process
	
DocuSign Document Revoke
	
DocuSign Integration for Quote 2.0
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
Example and Use Cases for Signing Process

To test DocuSign process, create new SAP CPQ quote and click on the Generate Document for E-Sign action. The document sending form will be displayed as the result.

Clicking the Send to DocuSign button, email with link to document for signing is sent. Make sure that you send this email only to one recipient, because the link can be used only by one recipient during DocuSign process. As soon as document is signed (DocuSign process completed), link expires and becomes invalid. Success message is displayed at the top of the form. Quote status changes to Waiting for DocuSigning.

Click the link to access DocuSign. You are redirected to the DocuSign page where you should agree to use electronic records and signatures and decide which action to undertake. There are a few actions available:

Sign the document

Decline to sign the document

Sign on paper and upload or fax the document back

Finish signing process later

Use case 1 - You choose to accept to sign the document

If you did not put signature placeholders in your document earlier, you can choose a place in the document where to sign. Click Signature on the left side and drag and position your signature. You can also choose to put your initials or name instead. There are a few more options that can be added (date, email address, company name, and so on).

When you are done, click the Finish button. This way, the process is complete.

The generated and signed document appears in the Documents tab on the quote. Quote status is updated to DocuSign Accepted.

The Additional Info column in the Documents tab displays the following information:

The date and time the document was sent for signing

The name and email address of the designated signer

The date and time of signing

The provider used to sign the document (DocuSign)

The name and email address of the user who signed the document

Note

The visibility of the Additional Info column depends on the Additional Info Visibility application parameter, which has to be set to TRUE. The parameter can be accessed in Setup  General  Application Parameters  Shopping Cart and Quotes.

Use case 2 - You choose to decline to sign the document

If you don't want to sign the document, select the appropriate action from the action list.

Clicking on the Decline to sign action, you are prompted to choose whether you want to decline the document immediately or finish later. If you click the Continue button, a new prompt is displayed where you can enter your comment (comment is not required).

Clicking the Decline to sign button, the quote status changes to the DocuSign Declined status. In addition, the Additional Info column displays the date and time the request was declined, the name and email of the person who declined the request as well as the reason for declining to sign the document.

Use case 3 - You choose to sign the document manually

If you prefer to sign the document manually, click the Print & Sign button.

Once you click the button, a new prompt displays, where you should choose how you are going to return the document - whether by uploading or sending the document by fax. Moreover, you can also download, and then upload the document back.

On this page
Use case 1 - You choose to accept to sign the document
Use case 2 - You choose to decline to sign the document
Use case 3 - You choose to sign the document manually
Yes
No