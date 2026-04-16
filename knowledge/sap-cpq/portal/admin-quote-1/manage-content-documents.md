# Manage Content Documents | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/7453f85e485e446db0f6d969f0316fb9.html?locale=en-US&state=PRODUCTION&version=2603
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
Manage Content Documents

Within the Manage Content Documents tab under Quotes  Document Generation Templates it is possible to include all files and other documents (such as pictures, PDF files, and other important attachments) that can be attached to or included with generated documents. When creating a new template, those files can then be used directly for configuring the template within the Additional Content or Additional Documents tabs.

When you navigate to the Manage Content Documents tab on the Document Generation Templates page, the list of uploaded documents displays the file name, format, and destination directory. Also, you can see in the list who created the file, who last modified it and when it was last modified. The Permissions column displays the companies whose local administrators (users that belong to those companies) can see the file.

As an administrator, three file in the File column are displayed:

User uploaded file: This file is uploaded locally by users via the User Menu page and is visible to admins in the Setup section. In the Directory and Permissions columns, the company value is displayed. These columns are only visible to users with the administrator role. Administrators can later modify the value in the Permissions column to prevent the file from being visible to users from the specified company in the Directory column.

Administrator shared file: This file is uploaded by the administrator and shared with the user's company. The Permissions column contains the value associated with a specific company.

Administrator setup file: This file is uploaded by the administrator but is not specifically shared with any company, leaving both the Directory and Permissions columns empty.

Note

This feature doesn’t support nested folders.

Adding a Content Document

Choose the Add New.

A new pop-up dialog appears, prompting you to select the file.

Choose Upload new file and select the document to upload.

You can upload multiple documents at a time.

A table with files for each chosen file will appear. You can alternatively remove them before uploading.

The dragging and dropping of files will be enabled during the upload process.

Select the companies whose users you want to give permission to manage the chosen content.

Choose the Save.

A new dialog will appear displaying the status of each file's success. If any of the file names already exist, those files will be replaced with the new files (file names and newly set company permissions).

Chose OK to finish the adding process.

The document displays in the list.

Note

When a ZIP file is uploaded as a content document, the content within the compressed file will not be unpacked after the upload. This type of format can only be used as Additional Documents in templates.

List of actions that are available under the table of files are edit, preview, delete, and download. Preview action is not available only for .doc, .xsl, .xslx, and .zip files.

When you choose to edit, you can change your selected file by selecting only one other file (not multiple files). However, you cannot remove the selected file and save it in that state (for that purpose, use the delete action from the list).

Allowed extensions of files that can be chosen are: .doc, .docx, .xls, .xlsx, .jpg, .jpeg, .gif, .png, .zip, .pdf, .txt.

Users are allowed to upload files with the same name as an already existing file in Setup chosen by the administrator.

List of actions that are available under the table of files are edit, delete, and download. Download can also be performed by choosing the file name. When you choose to edit, you can change your selected file, but you cannot remove the selected file and save it like that (for that purpose, use the delete action from the list).

Note

The maximum size of the file being uploaded is 20MB per file. For ZIP files, the maximum size is also 20MB per ZIP file, not per file within the ZIP.

Yes
No