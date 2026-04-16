# DocuSign Document Revoke | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/11f4429562ff4b04bff38a96125fbaa8.html?locale=en-US&state=PRODUCTION&version=2603
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
DocuSign Document Revoke

SAP CPQ supports the Revoke Document feature, for users who want to void a document that has already been sent to signers, avoiding the need for signers to review an obsolete document. This action can be triggered from the Quote page since it has been developed as standard SAP CPQ quote action. Action name is Void Document.

Workflow should be modeled to move the quote back from Waiting for DocuSigning to the previous status, after the Void Document action is triggered. Once the signer clicks on the link received through an email, they will be informed that the document has been revoked.

When the SAP CPQ user generates a new document, a new link will be sent to the signer.

Yes
No