# Additional Content | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/c16e90c9073142ed984640b3e8595afa.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration


	Setup Help

	
Fields, Calculations, Layout
	
Document Generation


	
Document Generation Template


	
Template Definition
	
Sections
	
Visibility Permission
	
Format Permissions
	
Related Fields
	
Additional Content
	
Additional Documents
	
Delegation of Authority for Document Templates
	
Manage Content Documents
	
General Settings
	
Document Generation User Journey
	
Document Generation Tips and Tricks
	
Document Generation Tags
	
Document Generation Libraries and Differences
	
Custom Quote Tabs
	
Quote Tables
	
Quote Fields
	
Quote Tab Permissions
	
Quote List Settings
	
Bulk Quote Deletion
	
Quote Visibility
	
Quote Acceptance Settings
	
Partner Functions
	
Solution Design
	
Quote Teams
	
Filtering Items in Quote
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Additional Content

On this page, you can select all files and other documents that you wish to attach directly to your template file.

This tab is for selecting all the files and other documents that you wish to attach directly in your template. (For example, descriptions of quote items, data sheets, terms and conditions, and so on). Before you can add files to the template, you need first to upload them within the Manage Content Documents tab under Quotes  Document Generation Templates.

Note

The additional content is included in the generated document only if the following tags are in the template:

<<INCLUDE_DOCUMENTS>>

<<INCLUDE_DOCUMENTS_END>>

The tags must be used in separate lines.

Files are included in the same order in which they’re defined in Setup and also ** displayed to the user. If the checkbox Don’t include same file more than once is selected on the user side, SAP CPQ doesn’t include duplicate files. Otherwise, duplicate files are included if found.

The input (preprocessing) template document needs to be properly formatted to fit additional content: When you specify characters for additional content files, the files from Manage Content Documents (images or PDF files) must be smaller than fit in the output or section template, or the processing system adds one blank page. When you call additional content files into templates (with include documents tags), leave enough space in templates (smaller margin size than ones in PDF, or similar) to nest the images or PDF without any additional blank page breaks.

To add files to the template, specify the following settings:

Image settings - specify which settings are applied to PDF files that are inserted as images into generated documents. You can choose between Default settings (format: PNG, resolution: 300 PPI, quality: 100) and Custom settings. Selecting Custom settings allows you to choose between two formats:

PNG (choosing PNG allows you to further specify Image resolution)

JPG (choosing JPG allows you to further specify Image resolution and Image quality)

Configuring image settings allows you to control the size of the output additional content. Namely, PNG is a high-quality image format and choosing it results in large output additional content. On the other hand, choosing JPG results in additional content of a smaller size and lower quality.

Also Include Quote Items in Formula Evaluation - enable the toggle to attach files to each quote item in the generated document, not to the quote globally.

File Name - select the file from the Manage Content Documents tab or name the file that you wish to attach. File names must contain the file extension (for example, ABCCaseStudy.docx). On this way is possible to fetch files only with next extension: .doc, .docx, .pdf. .jpg, .jpeg, .gif or .png, Alternatively, create a formula that dynamically retrieves file names.

File Description - enter a description of the file manually, or define a formula that retrieves the description dynamically.

Add More Files - click it to add another File Name and File Description fields so that you can add more than one file to the template.

File Selection - select Check Boxes to let users select multiple files to attach to the generated document. Alternatively, select Radio Buttons and users are allowed to select only one file.

Separate files with page break - enable the toggle for the system to separate additional files with a page break.

Additional Content tab isn't visible for Simple Output and Section templates with Excel file, as well as for Multi-Section templates.

Note

Files found for the first quote item are displayed first (in the same order as defined in Setup), followed by the files found for the second item, and so on.

Note

You can upload files with a maximum size of 20 MB. The system rejects files larger than 20 MB. If your file exceeds this size, reduce the file size or upload a compressed version.

Yes
No