# Quote Template Management for Local Administrators | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/12e7a05ed1fe4cf1821891c80b2ae189.html?locale=en-US&state=PRODUCTION&version=2603
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
Quote Template Management for Local Administrators

Local quote templates are managed and administered through User Page  Manage Document Templates.

Note

To be able to manage quote templates, users must first have permissions to manage the templates delegated to them from Delegation of Authority for Document Templates.

Quote templates can be in DOCX, DOC, XLS, and XLSX format. If a Microsoft Word template is used, the template output format can be set to be a Microsoft Word document, PDF, or both. Microsoft Excel templates always result in a Microsoft Excel document.

The document generation template page lists all currently defined local templates. A new document template can be added by clicking Add New. Existing templates can be edited or deleted by selecting the template from the list.

Defining New/Editing Existing Templates
On the template definition page, you can enter the template name, description, and the document associated with template. This page also shows who and when created and last modified the template. A new document can be uploaded by clicking Add New Document. A template can have one or more file revisions, but only one revision can be active at the time. If there’s only one revision, that file revision is active by default. When new revision files are uploaded, they aren't active until administrator explicitly clicks Activate. This feature can be useful when you upload a new document, but you want to make sure that it generates correctly before making it active and available to users. Each file revision has a download link and a preview link. The download link is used to download that file revision. The preview link is used to preview what the generated document looks like. It allows you to specify which quote number to use for preview, and the preview output is always generated as a PDF with a watermark PREVIEW.

If you want to share a template with others in your company, you can check the Share with users from my company and brand checkbox. Users from your company can see this template on the template selection page in the Company Template section. You can also specify if the template is to be generated in the default format (as specified by the administrator) or if user can choose between the Microsoft Word and PDF format.

The second tab has the same functionality as the Additional Content tab on the Document Generation Templates page (administrator side). For more information, go to Manage Generated Documents.

Local Vs. System Administrator
The formula defined in Included File(s) can produce names for one or more files. The system looks for these files first in folders where the user’s local administrator stores their content document. The file search logic is the following:

The system first looks in folders that belong to local administrators from the quote owner’s company and the same brand. SAP CPQ first looks in all folders used for storing content documents that belong to users from the same company and brand as the quote owner.

If the specified file name isn’t found in the content file folders for local administrators, SAP CPQ checks the content file folder that belongs to the system administrator.

If no matches are found, nothing is displayed.

A description is displayed next to each file. The administrator can define a formula in the file description, and this formula is evaluated for each file displayed to the user.
Manage Content Documents as Local Administrator
Additional content documents that can be used as included files in quote templates are managed in User Page  Manage Content Documents. A local administrator can only manage their own content documents. To upload a new document, click Add New. To reupload an existing document, edit the document. You can also preview the document by clicking Preview or delete the document by clicking Delete.

When you navigate to the Manage Content Documents tab on the User Page, your documents are displayed with the File name, Type, Directory, and Date Modified. The File name column provides the following:

User uploaded file: Files that users upload locally. User uploaded files are visible provided their company has been added to the permissions. These files can also be included as Additional Content or Additional Documents when generating documents from a Quote. Additionally, if the file has a different value in the Directory column, users from that company can still view and utilize the file as Additional Content or Additional Documents in document templates during the document generation process from a Quote.

Administrator shared file: This file is uploaded by the administrator and shared with the user's company. The file is displayed on the User Menu and can be accessed by users for Additional Content and Additional Documents when creating documents from a quote.

Visible to administrators only

Administrator setup file: These files are not visible on the User Menu. However, they can be accessed by all users from any company as Additional Content or Additional Documents when generating documents from a Quote. The company of the user performing the document generation is not explicitly specified. These files are only hidden from users on the User Menu page for administrative purposes.

Related Information
Document Generation
Document Generation Template
Document Generation Tags
On this page
Defining New/Editing Existing Templates
Manage Content Documents as Local Administrator
Related Information
Yes
No