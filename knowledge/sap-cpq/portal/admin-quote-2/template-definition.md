# Template Definition | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/ce50114289dd4c58b5c806ae75aba27e.html?locale=en-US&state=PRODUCTION&version=2603
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
Template Definition

This is the first and main page where it is possible to start creating a template, by defining its name, choosing a type, and uploading a template file.

Depending on the template type that you’re creating, the following types can be chosen:

Output template - templates offered to the user on the user side.

The following rules are applicable for both the Simple template (no sections) and the Section template:

Previewing Word and PDF Files: Administrators need to have the appropriate quote visibility permissions granted in the Setup. To preview a file, they must enter a quote number. If they do not have access to the specific quote, the preview action will not be available for that quote number. This is valid for both types of files, active and inactive revisions of files.

All changes made across multiple tabs must be saved before initiating the Preview action. If any changes are not saved, they will not be reflected in the Preview mode for that template.

If the template enables users to customize a quote during the final document generation process (for instance, selecting one out of three images as additional content), and a user later customizes something in that quote (such as choosing to include only one image), then in the Setup, when the Admin runs a Preview and specifies that a specific quote number should display only the customized content (just the one chosen image instead of all three).

Simple template (no sections) - simple documents without any sections.

Multi-section template - complex documents with multiple sections.

Section template - a section to be included in a multi-section document.

After you’ve defined the general template details for a Simple or a Section template, you need to upload the Word (.docx) or Excel (.xlsx) files based on which the document will be generated. Choose Add New and browse for the document.
Note

It is allowed to replace an active Document Generation template with a new one that has the same name. This action is acceptable for both Simple Output and Section templates.

Furthermore, by choosing the actions in the table lets you delete, preview, replace, or download the chosen file:

Preview: This action is available only when you enter the quote number for which you want to execute the preview of the pre-generated file.

Replace: allows you to change the file with retaining the revision number.

Download: Available for files within Simple Output and Section templates, as well as the ability to choose the Template File name.

Once the template is saved using the chosen type of output template (Simple or Multi-Section), it is not possible to change the type of that template anymore.

You cannot add and save two files with the same name, even in two different templates (valid for both Output and Section templates).

Only one file can be active and can have an active revision for Simple Output and Section templates.

If the user who created a template is later deleted from CPQ for some reason or is the modifier of that template, only the date of creation/modification will be stated under the Created By and Modified by details.

Under the list of files, simple output templates and section templates can't have the same revision number. Revision numbers are unique.

Note

Uploading documents for multi-section templates isn’t available in the Template Definition tab. Instead, you need to separately upload a document for each pertaining section that is listed in the Sections tab of that multi-section template.

When simple or section templates are selected, files and file revisions are listed in the table below. The template name and the revision number are displayed in a row. Furthermore, clicking the icons in the table lets you preview, download, and delete the document.

Although a template can have multiple revisions, only one revision can be active at a time. When multiple documents are uploaded, click [activate] next to the document you wish to activate. If there’s only one document, that file is active by default.

Styling Microsoft Word Templates

Before you add tags to a Microsoft Word template, first adjust the header and footer in Microsoft Word.

If you wish the table header to be displayed on each page where the table is spanning across the pages, in Microsoft Word, you need to check Repeat as header row at the top of each page for the row which should be displayed in the header, and to turn off the option Allow row to break across pages for the rows that shouldn't be displayed in the header.

If there are tables inside a C-loop in the header, footer or main part of the template and you want them to merge into one table when processing the template, they must share the same format and style. Column number, width, and style must be matching.

All the styling of the template should be done in Microsoft Word so you can later only add tags without any styles. The styles that are applied to the tags in the template are also applied to the retrieved values in the generated document (for example, if you make a tag bold, the value that it retrieves is also bold in the generated document). This is applicable for all standard Microsoft Word formatting (bold, italic, underline, font sizes, text effects, text color, text background, text highlighting, text alignment, paragraph settings with spacing before and after, table formatting with all previous mentioned variations in cells, and so on). Text effects aren’t applied correctly to the tag output if the document is generated in the DOC file format.

Note

Texts effects are available only for the DOCX file format, which is available in Microsoft Word 2007 and later versions.

Avoid copying and pasting tags and the text in templates in order to achieve the best performance of the Document Generation tool. Otherwise, if you must copy something in your template, make sure to first remove all styling and formatting. Visit the Document Generation Tips and Tricks page to read about the most frequent styling issues and possible workarounds.

Yes
No