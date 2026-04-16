# Setup Administration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/6029e60f076e4e57a3268f41aa0e1a5c.html
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
Setup Administration

This page covers the workflow adjustments that need to be made to enable the document generation process and all necessary settings and parameters that need to be set for templates and output documents.

Note
When following certain parameter combinations, users can anticipate the output of generated documents:

The formatting (header, footer, and so on) of sections will be inherited from the first section in the template. This is true. The type of break used in generated documents can be empty or one of the following values: Section break odd page, Section break new page, Section break new column, Section break even page, or Section break continuous.

In this case output document will inherit styles from first section.

The formatting of sections in the template will be inherited from the first section. The type of break used in generated documents can be one of the following values: Paragraph break, Page break, Line break, Column break.

In this case output document will inherit styles from first section.

Formatting such as headers and footers will be inherited by sections from the first section in the template -> This statement is not true. The type of break utilized in generated documents can be one of the following values: Paragraph break, Page break, Line break, Column break.

The formatting (header, footer, and so on) of sections in the template will not be inherited from the first section. The type of break used in generated documents can be empty or one of the following values: Section break odd page, Section break new page, Section break new column, Section break even page, Section break continuous.

Each section in this case will have its own headers and footers.

Workflow Adjustments

To enable your users to generate documents in SAP CPQ, on top of creating a template with the appropriate tags, you need to make the following workflow adjustments:

Make sure that the Generate Documents action does not have any conditions that prevent it from displaying to users.

Add the Generate Documents action in the workflow matrix.

General Settings

Listed below are all the settings that can be configured for the document generation process in the SAP CPQ.

Application Parameters > Shopping Cart & Quotes
If Sections will inherit formatting (header,footer etc.) from first section in the template is active in Setup  Document Generation Templates  Edit (a multi-section template)  Sections, and Keep source formatting is the selected value for this parameter, sections of the document inherit header and footer formatting from the first section of the template, but keep their own individual heading styles. This parameter is available only for the new document generation engine.
Note

When the toggle is enabled, all sections will inherit styles from the first section. Since the first section contains only the <<INCLUDE_DOCUMENTS>> tag and the included document doesn't have any headers or footers, all sections after the first section will include that style and will not have headers and footers. When you disable the toggle, you will get headers and footers on each page because each section template has its own headers and footers.

Application Parameters > General Parameters

Display generated documents in Recent Items - if TRUE is selected, the generated documents are displayed in the Recently Viewed list.

Workflow/Approval > Actions

When quote needs approval, users can only preview documents - if selected, users can only preview Microsoft Word or PDF documents, not generate them. Preview can’t be enabled for Microsoft Excel documents.

Documentation Templates > General Settings

General

Default Output Format - Select the format in which all documents are generated by default. You can only choose between Word and PDF file types because Microsoft Excel templates will always be generated as Excel files. If format permissions are enabled for a user, the user in question has the possibility to choose in which format a document will be generated.

Users can choose customer’s language when creating documents - If selected, users can choose the language in which the document is generated from the Customer’s language drop-down menu when selecting a template for a specific quote. The selected language will be applied to the generated document, the email sent to the customer, and the proposal page, which customers can access by clicking the proposal link in the email. After selecting a language, it is also necessary to include the appropriate tags in the document for the translations to display. Every entry in the quote must exist in SAP CPQ Setup under the selected language. If an entry is not found in the selected language, the value found in the default language will be displayed. The default language dictionary is set during the setup process and selected automatically.

Translate quotes using the user's default dictionary - This parameter is observed only if during the process of generating documents from a quote there is no language selected by the user or the language is set to Default, otherwise the document will be generated in the selected language. If the parameter is enabled, the generated document will be generated in the user's default dictionary (language used by users). Otherwise it will be in the language in which the Quote was created.

For example, if the quote was created in English and user's default dictionary is Spanish, if enabled this parameter will determine translation in Spanish. However, if the user is given the option to select a language during the document generation process and Italian is selected, the document will be translated in Italian regardless of the state of the parameter.

Allow processing of document generation tag formulas with Cost field - This parameter is used to allow the processing of document generation tag formulas with cost fields. Fields that contain COST (for C_TAG, Q_QUOTE tags processing).

Hide Items With No Files on document generation - This option applies only on certain templates where the Also Include Quote Items in Formula Evaluation toggle is enabled for desired Additional Contents and/or Additional Documents which filenames are constructed only from the Formula Builder. If this toggle is enabled, the list of files that are shown in the Customize step of the Document Generation process for users will be reduced for the files which names aren't found by the desired criteria constructed in formulas.

Share Document Customizations - Allows you to share all customizations during document generation among all users for each quote. If FALSE is selected, all customizations are stored only for the user making the customizations. If multiple users work on one quote, customizations are saved only for each individual user. Users working on one quote can’t view each others customizations. If TRUE is selected, customizations are shared between users.

Reconfigure products during document generation - If TRUE is selected, the system retrieves the latest changes made on products from the Setup before generating a document.

If TRUE is selected, the system retrieves the latest changes made on products from the Setup before generating a document.

Allow generate button for multi-section template - This option controls the visibility of the button Generate for Multi-section type of document generation templates, in the Document Generation process. If disallowed, users won't be able to generate this type of template.

Users can see previously generated documents - This parameter controls the visibility of Generated Documents in the Documents tab on the quote, where all documents that were previously generated on that quote are placed

Allow users to download documents that have been generated for templates that have been deleted - If set to TRUE, users can download documents generated using templates that administrators have deleted. Users can download documents only if they have access to previously generated documents (if Users can see previously generated documents is set to TRUE).

Allow users to download documents that have been generated prior to CPQ 2012 January release - If TRUE is selected, users can download documents generated before January 2012, regardless of whether they have permission to view the template.

Disable deletion of generated documents on quote - Disable deletion of generated documents on Quote in the Documents tab.

Generated Document

Heading Style Used in Generated Documents

allows administrators to control the heading styles used in the document. Selecting Use destination styles applies the heading style of the first section to all sections. Selecting Keep source formatting allows each section to maintain its individual heading style. Selecting Keep different styles allows each section to have different heading style than one that is already existing in the document.

Type of Break Used in Generated Documents - Allows administrators to override the default breaks between the sections of the document and to apply the selected type of break instead. Administrators can choose between the following breaks: Paragraph break, Page break, Column break, Section break continuous, Section break new column, Section break new page, Section break even page, Section break odd page, Line break.

Define Prefix for Generated Document Name and Define Suffix for Generated Document Name - The name of the generated document is always constructed with the prefixQuotenumber-#suffix.extension, for example Official_012345-2_Document.pdf, where:

Official_ is a prefix

012345 is a Quote number on which is performed document generation

2 is the number of the generated document in sequence for that Quote (for the first generated document on that Quote, the number will be 1)

_Document is a suffix

Send Email

Don't preselect TO on Send Mail - If disabled, Bill To Customer from Quote will be included by default in the TO field as recipient on the last page of the Document Generation process - Download Document and Send Email page. The Bill to Customer is defined for that quote.

Don't preselect CC or BCC on Send Mail - If disabled, the logged user together with Ship To and End User Customers from Quote will be included by default in CC field as recipients on the last page of Document Generation process - Download Document and Send Email page. The Ship To and End User Customers are defined for that Quote.

Emails are sent by - This controls which option(s) for sending emails will be available for users on the Download Document and Send Email page. This allows for, sending an email only from SAP CPQ (SAP CPQ Mailer), sending only from a customer's default client (User's Email Client), or user can choose between both (Users chooses between SAP CPQ Mailer and User's Email Client).

Predefined email client - This parameter is observed only if the option users chooses between SAP CPQ Mailer and User's Email Client is selected for Emails are sent by. In this case, the admin can decide which option (SAP CPQ Mailer / User's Email Client) will be immediately used when the user selects the Send Mail button from the Download Document and Send Email page.

Attach generated document to Email. Option is - This parameter controls the display of the option for attaching the generated document. This option can be Pre-selected for users / Available for users / Hidden from users.

Predefine Email Subject - Free form field with formula builder. This parameter is used for defining the Email Subject in the Email Form of the Download Document and Send Email page.

Predefine Email Body - Free form field with formula builder. This parameter is used for defining the Email body (email text) in the Email Form of the Download Document and Send Email page.

Default Email Body Type - The values can be either Plain text or HTML. This parameter indicates the format of the Email Body which can be plain text written as-is or HTML content which is parsed from HTML characters into the readable content.

Attach document to CRM opportunity when sending Email to customer - This parameter is allowed only in integration of SAP CPQ with CRM. If it is enabled, after sending the email thegenerated document is attached to the CRM opportunity.

Hide option to send document to opportunity from user - This parameter is used to hide the user options to send a quote to CRM or to commerce.

Hide Send Email Form after document generation - This parameter controls displaying of the email form from the Download Document and Send Email page.

From and Name from Generated Document Email Form are read-only - This parameter controls if the From and Name fields on the Download Document and Send Email page are visible but unavailable for edit. By default, this parameter is disabled and these fields are editable.

Note

This parameter is available only if the parameter Hide From Email Address and Name from the Generated Document Email Form is disabled.

On this page
Workflow Adjustments
General Settings
Yes
No