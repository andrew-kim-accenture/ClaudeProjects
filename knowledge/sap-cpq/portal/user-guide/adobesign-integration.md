# AdobeSign Integration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/c1ca60429f264041a7039a46d42c1d09.html?locale=en-US&state=PRODUCTION&version=2603
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
AdobeSign Integration

Integrating AdobeSign with SAP CPQ enables you to easily sign electronic documents and contributes to a faster closing of deals by sales representatives. The integration is enabled by administrators for the respective users. For the integration to be successful, the email address of an SAP CPQ user needs to match the one in AdobeSign. Otherwise, an error message displays.

Note

The integration with AdobeSign is supported only for the Quote 1.0 engine.

Generating Documents for E-Sign

To generate a document for E-Sign you begin the process by creating a quote, adding all the required products, and completing any required information such as customer information and additional information. Once the quote is ready, you can select Generate Document for E-Sign from the action menu. The Choose Template page opens, where you can select and Customize Template a template in way as the standard document generation process. When you select Generate from the template view or customize page, you are navigated to Download Document and Send Email, where you can select and add signers, add additional recipients, and set the order of signing.

You can use the Must be signed in this order toggle to enable the order of signing required. If enabled, the document will be available for signing to the first person on the list, and can only by the next person on the once the first person has finished signing the document, and so on. If this option is enabled, the order of signers is relevant for how the signing process is carried out. However, if this option is disabled, all defined signers are notified at once. You can manage the order in which contacts receive the notification for signing by selecting the Ranking button and moving signers up and down in the list.

Adding Signers

In the Signers section, the user can create new signers by clicking Add Signer and defining the name, email, role, and company of the signer. If you have previously added customer information for the quote, you can select the customer from the dropdown list and the signer details will be prefilled with the customer information. If a signer dos not have a defined email in the quote, the signer will not be available in the drop down list for selection and must be added manually There is no limit to the number signers that can be added.

Sending the Agreement to AdobeSign

Once all the signers and additional recipients have been added, you can click Send agreement to AdobeSign and the quote is moved to the status Waiting for E-Signing. In this status, you have the option Void Document. In the quote edit mode, you can select Void Document from the action menu and terminate the signing process (if, for example, you realized that some items are missing from the quote).

In addition, in the Documents quote tab, you can see the document sent out for signing in the Generated Documents section. Here, you can view the document along with all the status changes, informing you about the progress of the signing process.

Related Information
AdobeSign Integration
AdobeSign Signing Process Example
On this page
Generating Documents for E-Sign
Related Information
Yes
No