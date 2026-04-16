# DocuSign Integration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/2b88c69f65e745ae93c781ff6c6040a6.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ User GuideVersion: 2603English
Provide feedback on our search

	
Who is this Guide for?
	
Add Items in Bulk
	
Approval Process
	
Quote Creation
	
Document Generation Journey


	
Choose Template
	
Customize Template
	
Previewing the Template
	
Download Document and Send Email


	
DocuSign Integration
	
AdobeSign Integration
	
SAP Commerce Cloud Integration
	
Customer Relationship Management Integration
	
Document Generation Management
	
Quote Template Management for Local Administrators
	
Load Existing Quotes
	
Quote
	
User Page
	
Register as New User
	
Favorites
	
Accessibility
	
Unlock Account
	
Single Sign-On
	
Effective Date
	
CRM Integration Use
	
Quote Collaboration/Comments
	
Revision Management
	
Compare Quotes and Revisions (Quote 2.0)
	
Formula Validator
	
Manage Customers
DocuSign Integration

Integrating DocuSign with SAP CPQ enables you to send a quote to a customer so they can use e-sign to sign the document, after which DocuSign sends it back to the sales representative. With this integration, the sales process can be completed faster thanks to the ability to electronically sign contracts.

The integration with DocuSign is supported for both SAP CPQ Quote 1.0 and SAP CPQ Quote 2.0. Although the essential functionalities are equal in both versions of the integration, the Quote 2.0 integration is enhanced with additional capabilities, such as using unlimited numbers of involved parties as signers, the ability to edit emails right before sending, sending email reminders to specific signers who are delaying the process, cancel a process in progress, and more.

Generating Documents for E-Sign

To generate a document for E-Sign you begin the process by creating a quote, adding all the required products, and defining the involved parties on that quote in the Involved Parties tab. Once the quote is ready, you can select Generate Document for E-Sign from the action menu. The Choose Template page opens, where you can select and Customize Template a template in a similar way to the standard document generation process. When you select Generate from the template view or customize page, you are navigated to Download Document and Send Email, where you can select and add signers and countersigners, add additional recipients, customize the emails, and so on. The following options are available:

Countersigners should sign before signers - if this option is enabled, the email will be sent to countersigners first, and will be sent on to the signers only once the required countersigners have signed the document. This reverses the typical order of signing.

Must be signed in this order - this option can be enabled specifically for signers, countersigners, or both. If enabled, the email will be sent to the first person on the list, and will only be sent to the second person once the first person has finished signing the document, and so on. If this option is enabled, the order of signers or countersigners is relevant for how the signing process is carried out. However, if this option is disabled, the email will be sent to all defined contacts at once (for example, to all the signers). You can manage the order in which contacts receive the email by selecting the Ranking button and moving them up and down in the list.

Adding Signers

In the Signers section, the user can create new signers by clicking Add Signer and defining the name, email, role, and company of the signer. If you have previously created involved parties for the quote, you can select these involved parties as signers from the dropdown list. If a signer dos not have a defined email in the quote, the signer will not be available in the drop down list for selection and must be added manually. There is no limit to the number of involved parties that can be added as signers. If an involved party is added as a signer, the Name and Email fields are prepopulated, but the Role and Company fields must be filled out manually. Furthermore, when involved parties are added as signers, under the Name field, their partner function is displayed, so they can be easily identified in the list of signers. In addition, by enabling the Required toggle, a signer is marked as required for the signing process, meaning that the email won't be sent further down the line until that signer has signed the document.

Adding Countersigners

In the Countersigners section, the user can add countersigners from their own company, which were previously defined in the Setup provider section for the DocuSign integration. Countersigners can only be selected from the list of available countersigners. When you click the Add Countersigner button, a list of predefined countersigners opens that you can select one or more counter signers from.

Sending to DocuSign

Both the Signers and the Countersigners section contain an email subject and email body. By default, the content visible here is the same as that defined in the DocuSign configuration process. However, the email subject and body are editable, meaning that you can change the content prior to sending the email, in which case the user's specific edits will be included in that particular email.

Once all the options in the email form are defined, you can click Send to DocuSign and the quote is moved to the status Waiting for E-Signing. In this status, you have the option Void Document. In the quote edit mode, you can select Void Document from the action menu and terminate the signing process (if, for example, you realized that some items are missing from the quote).

In addition, in the Documents quote tab, you can see the document sent out for signing in the Generated Documents section. Here, you can view the document along with all the status changes, informing you about the progress of the signing process.

Related Information
DocuSign Integration
DocuSign Integration for Quote 1.0
On this page
Generating Documents for E-Sign
Related Information
Yes
No