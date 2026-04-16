# Document Generation Journey | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/ce1f0ca6efa84c4b9fd1b13841f2eec5.html?locale=en-US&state=PRODUCTION&version=2603
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
Document Generation Journey

The document generation process begins with the Quote. When you create a quote in SAP CPQ, you can select Generate Documents or Generate Document for E-sign from the action menu at the top right of the quote page. This decision is guided by the Workflow and Workflow permissions set up in SAP CPQ.

Generate Documents: This is the standard procedure for creating documents that can be sent to SAP CPQ clients' customers.

Generate Document for E-sign: This approach involves integration with DocuSign and Adobe Sign for electronic signatures.

Document Translation

If the select language option has been enabled from the General Settings tab in SAP CPQ Setup, in both the Choose Template and Customize steps, you can choose the language in which the generated document will be translated. The selected language is applied to the generated document, the subject and email body sent to the customer, and the proposal page that the customer accesses when clicking on proposal link in the email.

When generating a document in a specific language, all available items are automatically translated using the system language dictionary if the user selects the custom language dictionary. In this case, items will be translated based on the system language dictionary from which the custom dictionary is derived.

During the document generation process, users must choose in which language the user wants to translate the generated document. If there is no selected language, the quote remains in the dictionary in which it was created, regardless of whether the user has defined another language as Default Dictionary or not on the User page.

Note

Every entry in the quote must exist in SAP CPQ Setup under the selected language. If an entry is not found in the selected language, the value found in the default language will be displayed. The default language dictionary is set during the setup process and selected automatically.

Visible generated documents

In the Documents tab on Quote, you can see all the documents generated during the document generation process. Deleting a document template from Setup won't remove generated documents on Quote with that template. They will always remain visible in the Documents tab on Quote.

When you delete a template, the generated documents associated with it will still be visible in the Documents tab on the Quote. The name of the template that was used to generate each document will be displayed in the Template Name column, even if the template has been deleted.

The maximum allowable size for each document being uploaded is 20 MB.

There aren't any specific limitations on the number of document uploads per quote.

There aren't restrictions on the total combined size of all uploaded documents for a single quote.



Choose Template

Customize Template

Previewing the Template

Download Document and Send Email

Document Generation Management

The Manage Generated Documents section in User Menu allows users to manage generated documents they’ve created.
Quote Template Management for Local Administrators

Local quote templates are managed and administered through User Page  Manage Document Templates.
On this page
Document Translation
Visible generated documents
Yes
No