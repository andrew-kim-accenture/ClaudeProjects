# Document Generation Template | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/311fe22d974241e88301f020bb187a0c.html?locale=en-US&state=PRODUCTION&version=2603
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
Document Generation Template

The Document Generation Templates page displays a list of all document templates in the system (including Output and Section templates), allowing you to manage, create, and delete templates, as well as translate their names. Here, you can also manage content files (such as pictures and other documents) that can be included in generated documents, as well as manage general settings for templates and generated documents.

Context
Settings that can be configured about templates and generated documents under the Setup   Quotes  Document Generation Templates:

Output templates tab: On this page, you can create and manage output templates that can be simple or multi-section. In addition to the template name and type, the lists display other relevant details such as visibility permissions, dates when the templates were last modified, names of administrators who last modified them, and so on. In the Output Templates list, administrators can organize the order in which templates appear when they are presented to the Users. When Users are choosing the template in the process of generating documents, only Output templates (both simple and multi-section) are available on the User side.

Selecting Language: Here, you can select the language in which template names and descriptions are displayed. If a template name or description has no specified value in the selected system dictionary, the values are retrieved from the default dictionary instead. To enter the desired translations for the template name or description, choose the "Translate this item" action within the list of Output templates.

Note

When the User initiates the Document Generation process from Quote, the Choosing the template page will not have any dictionaries preselected. The User must always choose the desired language for translating the text within the template. If the desired language is not available, the default language will be displayed instead.

Column Status: this flag determines which template has an active file and is ready for generating the documents. Draft templates are those that have no active file (for Simple) or have not chosen any Section templates (for Multi-Section), while Ready templates are those that have an active file or have at least one Section template included in the Multi-Section template.

Note

Once the first file is added and the template is saved, the template will be in the Ready status and cannot be reverted back to Draft. Only Ready templates can be visible to the users.

Downloading template files: This option is available only for Ready templates. Upon selection, the active template file for Simple templates is automatically downloaded, whereas for Multi-Section templates, the Zip file containing every Section template file in separate folders is downloaded.

Ranking of Output Templates: is enabled only for output templates (simple and multi-section), as well as for section templates within certain multi-section templates. This functionality determines the order in which the templates are shown to users in the end process of generating documents. Within the pop-up dialog, it is possible to rank templates with drag and drop or by manually entering the desired rank number.

Note

Templates are automatically arranged in ascending order. It is possible to define the existing rank number for a template. In the case of multiple templates with the same rank, the order will be determined by the last modified date, with newer templates taking precedence over older ones.

List of unavailable tabs within configuration of Output templates:

Simple templates (with Word template file) - only tab Sections.

Simple templates (with Excel template file) - Sections, Format Permissions, Additional Content.

Multi-Section templates (contained with multiple Sections) - only tab Additional Content.

Section templates tab: On this page, you can create and manage only Section templates that can be later used in Multi-Section templates. Section templates themselves cannot be visible to users in the process of choosing templates or generating documents; they can only be visible through certain Multi-Section templates where those sections are included. The list of Section templates contains similar types of data as the list of Output templates.

Action Where is used: In this action for a certain Section template, you can see in which Multi-Section templates this template is used.

Status Column: This flag determines which template has an active file and is ready for generating the documents. Draft refers to templates that have no active file, while Ready refers to those that have an active file included in the template.

Note

Once the first file is added and the template is saved, that template will be in the Ready status and cannot be reverted back to Draft. Only Ready templates can be visible on the list for choosing section templates within Multi-Section templates.

Downloading template files: This option is available only for Ready templates. When selected, the active template file within the desired Section template is automatically downloaded.

List of unavailable tabs within configuration of Section templates:

With Word template file - Sections. Format Permissions, Additional Documents.

With Excel template file - Sections, Format Permissions, Additional Content. Additional Documents.

Manage content documents tab: On this page are placed all files and other documents (pictures, PDF files, some other important attachments) that can be attached into or together with generated documents, that is actually configured under Additional Content or Additional Documents tabs.

General settings tab: On this page are placed all necessary settings and parameters that you can configure about templates and output documents.

Note

Define prefix for generated document name | Define suffix for generated document name | Heading style used in generated documents | Type of break used in generated documents | Share Document Customizations | Users can see previously generated documents | Allow users to download documents that have been generated for templates that have been deleted | Disable deletion of generated documents on quote | Hide Items With No Files on document generation | Reconfigure products during document generation | Allow users to download documents that have been generated prior to CPQ 2012 January release.

Within the list of Output and Section templates, Filename column is always blank for all Draft templates and Ready Multi-Section templates. Visible To column shows to which permission groups are that template visible for choosing in process of generating output documents. The Master Section column indicates which section template controls the header and the footer of the document. Moreover, the Contained Sections column lists all the Sections included in a Multi-Section template.

The initial steps are the same for creating any type of template:

Add New Template: Choose Add New Template. In Output Templates, you can create simple or multi-section templates. However, within section templates, you can only create sections that can later be included in certain multi-section templates.

Template Definition tab: Enter the template name, choose the type of template, and add the template file (Word or Excel).

Save: Choose the Save for the beginning and further you can manage other settings within other tabs.

Note

To ensure that the main operations (average, count, and sum) are displayed in the footer of output templates, users must format their cells in the Number format in their excel templates. If the cells are left in the General format, numbers will be treated as text and not included in the calculation of numbers in the output templates.



Template Definition

This is the first and main page where it is possible to start creating a template, by defining its name, choosing a type, and uploading a template file.
Sections

This page is only accessible when administering multi-section templates, in order to manage which Section templates are included with which additional permissions.
Visibility Permission

The page allows you to define which permission groups of users can be chosen during the generation of documents. Only output templates (both simple and multi-section) are available on the user side during the generation of documents.
Format Permissions

On this page, you can define which permission groups of users can choose to generate output documents in different formats, such as Word and PDF. This is valid only for Simple Output templates with Word active files included.
Related Fields

On this page, you can specify the Quote custom fields that are related to the entire template. Later, the values can be specified on the User side during the process of generating the documents.
Additional Content

On this page, you can select all files and other documents that you wish to attach directly to your template file.
Additional Documents

On this page, you can select all files and other documents that you wish to attach next to the generated document. These attachments can be later downloaded together with the generated document or sent in an email to your clients.
Delegation of Authority for Document Templates

On this page, you can define which permission groups of users are able to manage your templates by themselves in their User Menu.
Yes
No