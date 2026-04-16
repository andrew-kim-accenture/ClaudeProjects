# Multisign Process | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/369c784050a041619f7bcbb34089cbe8.html?locale=en-US&state=PRODUCTION&version=2603
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
Multisign Process

The SAP CPQ integration with DocuSign supports signing by more than one signer. This is called multisign process. The following section provides you with the information what should be done on SAP CPQ side to enable the multisign process.

The only setup activity needed to enable the multisign process is to add signature placeholders for all signers to the document generation template(s). Note that if this step is omitted, the multisign process will still be available and functional. That is because DocuSign enables users to put their signature anywhere in the document if no signature placeholder was found. However the general recommendation is to insert placeholders into template documents at the desired place in order to keep the document generation templates well organized and formatted.

No workflow changes should be performed since the quote moves to status Waiting for DocuSign upon being sent to signers and remains in that status until all signers sign or decline to sign the document. The placeholder that is used to mark where signers should sign is: \signhere_{r}\ where {r} should be the ordinal number of the signer. The detailed example is provided in the Examples section of this page.

Besides \signhere{r}\ tag, there are three more tags that can be placed into the document generation template which will provide more information about the signers and countersingers.

\signer_{r}_name\ - Inserts name of the signer

\signer_{r}_company\ - Inserts company of the signer

\signer_{r}_position\ - Inserts position of the signer

Multisign Process Example

In the example, two placeholders are added to the document generation template where two signers should sign the document.

Since placeholders will not be replaced by DocuSign (the signatures will be put over them, the text color of placeholders was set to white, which made them invisible in the template document and in the signed document.

Clicking on the Generate Document for E-sign action and picking the particular Document Generation Template, an email form for sending the document to signers gets displayed.

The form is used to define both the signers and countersigners.

The multisign feature also allows users to instruct SAP CPQ to request signers to sign in a defined order. If the Complete in Order toggle switch is enabled, an email with the DocuSign link is sent to signers successively, not at once. This means that the signer will receive the link only after all signers listed before them sign the document. Alternatively, if the toggle switch is not enabled, the DocuSign link will be sent to all signers at once.

It is also possible to mark a signer as required. The image below shows that two signers are defined and that the Complete in Order toggle switch is active. One signer is required, whereas the other is optional.

When you click Send to DocuSign, the designated signer gets the email with the link to DocuSign. Upon clicking the link, the user will be redirected to DocuSign. Clicking Next, DocuSign will position the cursor at the placeholder that was previously defined in the document template.

Once positioned, the user can sign the document by clicking the Sign button placed over the placeholder.

Users can then select whether to put their full name or initials into the signature.

Clicking Adopt and Sign places the signature over the placeholder. The last step is to click Finish. After the first signer has signed the document, an email will be sent to the next signer. Even though the second signer is not marked as required, the signer has to click the link received via email and then click Finish on the DocuSign side, whether he signed the document or not.

Once the second optional signer clicks the Finish button, the document obtians the DocuSign Accepted status, and the DocuSign process is completed.

Yes
No