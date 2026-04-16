# Additional Documents | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/0cf9070c9ab84d4c9ea41867daf17082.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration


	Setup Help

	
Document Generation


	
Document Generation Tags
	
Document Generation Template


	
Template Definition
	
Sections
	
Visibility Permission
	
Format Permissions
	
Related Fields
	
Additional Content
	
Additional Documents
	
Delegation of Authority for Document Templates
	
Supporting Custom Fonts for the Document Generation Process
	
Document Generation Libraries and Differences
	
Setup Administration
	
Manage Content Documents
	
Document Generation User Journey
	
Document Generation Tips and Tricks
	
Custom Quote Tabs
	
Quote Tables
	
Quote Custom Fields
	
Quote Tab Permissions
	
Quote Item Custom Fields
	
Key Attributes
	
Column Headings
	
Search Fields
	
Bulk Deletion
	
Quote Visibility
	
Cart Level Aggregates
	
Quote Acceptance Settings
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Alerting Users About Parallel Work on Quotes (Administrator Side)
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Additional Documents

On this page, you can select all files and other documents that you wish to attach next to the generated document. These attachments can be later downloaded together with the generated document or sent in an email to your clients.

Similar to Additional Content, before you can add files to the template, You first need to upload them within the Manage Content Documents tab under Quotes  Document Generation Templates.

The differences between additional documents and additional content are the following:

On the user side, in the process of generating output documents, additional documents are necessary additions to the generated document and cannot be deselected by the user, while additional content files are optional.

If PDF files are included as additional content in multi-section documents, they are converted into images and added into Microsoft Word documents in the output. However, if they are added in the Additional Documents tab, they remain in the PDF format as separate files.

You can specify the following settings for additional documents:

Convert Microsoft Word Files into PDF – additional documents in DOC or DOCX format are converted into PDF files in the output.

Also Include Quote Items in Formula Evaluation – expand the context of formula evaluation so that files can be included for each quote item, and not just the quote globally. If the toggle is enabled, the defined formula is evaluated only once.

File Name - select the file from the Manage Content Documents tab or name the file that you wish to attach. File names must contain the file extension (for example, ABCCaseStudy.docx). In this way it is possible to fetch files only with the extension: .doc, .docx, .xls, .xlsx, .jpg, .jpeg, .gif, .png, .zip, .pdf or .txt. Alternatively, create a formula that dynamically retrieves file names.

Add More Files - add another File Name field so that you can add more than one file to the template.

The resulting email created at the end of the process contains the generated output document and all additional documents included in the Additional Documents tab. On the user side, users can see the additional documents in the Documents tab of the quote. There, users can also download previously generated documents together with any additional documents as a ZIP file.

The Additional Documents tab isn't visible only for Section templates.

Note

Administrators cannot add multiple Additional Document files that share the same name. This restriction applies to both types of output document generation templates: Simple and Multi-section.

Note

You can upload files with a maximum size of 20 MB. The system rejects files larger than 20 MB. If your file exceeds this size, reduce the file size or upload a compressed version.

Yes
No