# AdobeSign Signing Process Example | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/332d51d680304ea4ad7d32a8fe91dfda.html?locale=en-US&state=PRODUCTION&version=2603
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
AdobeSign Signing Process Example

By following this procedure, you can test the signing process with the AdobeSign integration.

Procedure
Create a SAP CPQ quote and click Generate Document for E-Sign.
Choose a document generation template and click on it to generate the document.

Once the document is generated, the email form is displayed. The email form is used to send the document to the signers for signing.

Define the signers by clicking Add Signer and entering the signer's email, name, position, and company name.

Only email and name fields are mandatory. The Add Signer button allows you to select Bill to, Ship to, or End user role as the signer, provided that you have the role defined on the quote.

You’re able to define more than one signer. If you define at least two signers, you’re allowed to choose if they sign the document in a defined order or sequence, or not. If you select this option, the document link is sent to only one signer - the first in the list. As soon as they sign, the document link is sent to the next signer. If the first signer rejects to sign the document, the signing process is terminated, so the following signers don’t receive the link.

To send the document to signers, click Send agreement to AdobeSign.

The signer receives an email with the link to the document. Clicking the link leads signer to the AdobeSign service page where they can sign. If your document contained signer placeholders, then the signer is positioned at the appropriate placeholder to sign the document.

Click on the signing box (Click here to sign).

A pop-up window opens, where the signer can choose whether they want to type, draw or upload an image that contains a scanned signature.

Click Apply.

The pop-up window is closed.

Click Click to Sign.

After signing the document, the signer is offered to download a copy of the signed document.

Once the document is signed, you can see who signed it and when. To view who signed the document, return to quote and go to the Documents tab to locate the generated quote document. The Additional Info column displays the following information:

the date and time the document was sent for signing

the names and email addresses of the designated signers

the date and time of signing

the provider used to sign the document (AdobeSign)

the names and email addresses of the users who signed the document

If a signature request is declined, the column displays the date and time the request was declined, the name and email of the person who declined the request, and the reason for declining to sign.
Note

In order for the Additional Info column to be visible, the Additional Info Visibility application parameter must be set to TRUE.

Yes
No