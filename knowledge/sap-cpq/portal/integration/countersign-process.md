# Countersign process | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/268f736cb1ca4eb3a014a700d5f4f5ae.html?locale=en-US&state=PRODUCTION&version=2603
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
Countersign process

The countersign process is used by companies that want to use SAP CPQ to also put their own signatures on the document. To set up the process, signers must be defined through SAP CPQ administration first. In SAP CPQ terminology these signers are known as “countersigners”.

As an administrator you define a list of potential countersigners and then after generating the document users select which (if any) countersigners are needed for the particular document.

Countersigners are defined in Setup  Providers  Providers  DocuSign.

Other than the list of countersigners, the SAP CPQ administrator should modify the Document Generation Template by adding placeholders where countersigners will sign the document. The placeholder format is \countersign_{r}\ where {r} should be the ordinal number of the countersigner. Countersign placeholders, definitions, and signing processes are the same as described in the multisign section above.

Countersign process example

In the example, two placeholders are added to the document generation template where two countersigners should sign the document.

Since placeholders will not be replaced by DocuSign (the signatures will be put over them, the text color of placeholders was set to white, which made them invisible in the template document and in the signed document.

Clicking on the Generate Document for E-sign action and picking the particular Document Generation Template, a new email form for sending document to signers and countersigners appears.

The SAP CPQ user has the ability to control if the countersigners should sign the document before signers and if countersigners should sign the document in the defined order.

In addition, it is also possible to mark a countersigner as required. As shown in the image below, two countersigners are defined, and the Complete in Order toggle switch is not enabled. One countersigner is required, whereas the other one is optional.

When you click the Send to DocuSign button, an email with DocuSign link is sent to countersigners first. Since the Complete in Order toggle switch is not active, both countersigners will receive the email at the same time.

The required countersigner will have to sign (or decline) the document. The optional countersigner does not need to sign the document. However, the optional countersigner will have to open the received link and click the Finish button, so the process can continue. The image below shows the situation when the required signer has already signed the document and the optional countersigner clicks the button to complete the signing process for countersigners.

After countersigners complete the signing process, the link is sent to signers. The particular SAP CPQ quote is still in the Waiting for DocuSign status since the signing process has not yet been completed on the signers’ side.

The process is completed once the required signer signs the document and the optional signer either signs or clicks Finish. The quote moves to the DocuSign Accepted status.

Yes
No