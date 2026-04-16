# DocuSign Integration for Quote 2.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/923ac571c47a495eb78068bd0004bfc4.html?locale=en-US&state=PRODUCTION&version=2603
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
	
DocuSign Integration for Quote 2.0
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
DocuSign Integration for Quote 2.0

This document details the user journey in the integration between DocuSign and Quote 2.0.

User Journey
Note

Before the integration can be used, please ensure that it is properly configured in both DocuSign and SAP CPQ.

The user journey begins with the user creating a quote, adding all the required products, and defining the involved parties on that quote in the Involved Parties tab. Once the quote is ready, the user executes the action Generate Document for E-Sign and the Document Generation screen displays. Here, the user selects or customizes a template in a similar way to the standard document generation process. In the final screen Download document and send to DocuSign, the user is presented with the email form, where they can select signers, countersigners, customize the emails, and so on. The following options are available:

Countersigners should sign before signers - if this option is enabled, the email will be sent to countersigners first, and will be sent on to the signers only once the required countersigners have signed the document. This reverses the typical order of signing.

Must be signed in this order - this option can be enabled specifically for signers, countersigners, or both. If enabled, the email will be sent to the first person on the list, and will only be sent to the second person once the first person has finished signing the document, and so on. If this option is enabled, the order of signers or countersigners is relevant for how the signing process is carried out. The user can manage the order in which contacts receive the email by moving them up and down the list using the arrows. However, if the user disables this option, the email will be sent to all defined contacts at once (for example, to all the signers).

In the Signers section, the user can create new signers by clicking Add Signer and defining the name, email, role, and company of the signer. However, if the user has previously created involved parties for the quote, they can select these involved parties as signers from the dropdown menu. There is no limit to the number of involved parties that can be added as signers. If an involved party is added as a signer, the Name and Email fields are prepopulated, but the Role and Company fields must be filled out manually. Furthermore, when involved parties are added as signers, under the Name field, their partner function is displayed, so they can be easily identified in the list of signers. In addition, by selecting the Required checkbox, a signer is marked as required for the signing process, meaning that the email won't be sent further down the line until that signer has signed the document.

In the Countersigners section, the user can add countersigners from their own company, which were previously defined in the Setup provider section for the DocuSign integration. Countersigners can only be selected from a dropdown list.

Note

If multiple signers or countersigners have the same email address, the system allows sending the document to DocuSign, but only with the option Must be signed in this order enabled. If this option is disabled, you won't be able to send to the document to DocuSign.

Both the Signers and the Countersigners section contain an email subject and email body. By default, the content visible here will be the same as you previously defined in the Setup provider section. However, the email subject and body are editable here, meaning that the user can change the content prior to sending the email, in which case the user's specific edits will be included in that particular email. While sending the quote document for DocuSign, the Carbon Copy recipient option is added so that the salesperson can include recipients who need to receive a copy of the quote document.

Once all the options in the email form are defined, the user clicks Send to DocuSign and the quote is moved to the status Waiting for E-Signing. In this status, the following actions are available: Void Document and Send Reminder. By clicking Void Document, the user can terminate the signing process (if, for example, they realized that some items are missing from the quote). On the other hand, if the user has been waiting for the signer to sign the document for too long, they can execute the action Send Reminder. This sends the email again to the signer who is currently supposed to sign the document, as previously defined in the order of signing.

In addition, in the Documents quote tab, the user can see the document they sent out for signing in the Generated Documents section. Here, the user can view the document along with all the status changes with precise timestamps (in server time), informing them about the progress of the signing process.

Yes
No