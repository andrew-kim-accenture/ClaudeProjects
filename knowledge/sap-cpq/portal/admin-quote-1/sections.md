# Sections | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/13439c61d8314f11a0a9f92f3a901ce3.html?locale=en-US&state=PRODUCTION&version=2603
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
Sections

This page is only accessible when administering multi-section templates, in order to manage which Section templates are included with which additional permissions.

Note

Excel files (.xlsx and .xls) cannot be used as Section document templates because multi-section templates only support Word files (.docx) for creating document templates.

Here you can select the section templates that are included in the document. Other than selecting section templates, on this tab you can set up the following settings:

Sections tab isn't visible for Simple Output templates and Section templates.

User can sort sections - enables users to sort sections before generating the document. Once users sort the sections, the order remains unchanged the next time users generate documents from the same quote, regardless of the default order of sections set up in the Setup.

User can add new sections - lets users upload their own DOCX section templates when customizing the template on user side. When the checkbox is selected, a formula box appears. The formula entered here is used to narrow down the conditions under which Add Section appears during the document generation process. The default value of the field is 1, meaning that all users can upload sections manually. This toggle is disabled by default for new templates.

Consider this example: for enterprise-grade deals, users shouldn't be able to manually add sections. Deal type is defined in a custom field. By entering the condition [NEQ](<* QuoteProperty(Deal Type) *>, Enterprise), users are only allowed to add sections if the deal type isn’t enterprise.

Sections will inherit formatting (header,footer etc.) from first section in the template - enables format inheritance from the first (master) section to all subsequent sections. If the checkbox isn’t selected, each section maintains its own formatting. This toggle is enabled by default for new templates.
Note

If Sections will inherit formatting (header,footer etc.) from first section in the template is selected, the standard Page Break will be used by default. If it's not selected, Section break new page page break type will be used. You can also specify the page break type you wish to use in templates via the Type of break used in generated documents application parameter.

Note

If the application parameter Heading style used in generated documents is set to Keep source formatting and the checkbox Sections will inherit formatting (header,footer etc.) from first section in the template is selected, the sections of the output document inherit the header and footer from the first section of the template, but the heading style is kept for each individual section.

Ranking of Section templates within certain multi-section template: The user can change the order of this rank if allowed, after which this rank will no longer be valid. By default, the first section is the first defined here, and formatting (including header, footer, and so on) can be inherited to other sections if allowed. If the user has the right to change the order, the inheritance of the formatting, if allowed, will be from the first section that he sets.

Note

The ranking dialogue of the list of related fields is now enhanced with the Reset button and also enhanced the ranking of Section templates. When chosen, this button will set all objects to a ranking of 1 to n, where "n" is the total number of objects. This eliminates any previous custom ranks set by admins and replaces them with the new ones.

The renaming of a Section template within a certain multi-section template is valid only for that specific Section template within multi-section template, and not for the Section template in general.

Under the list of actions is available Edit, Delete, Download, Replace, and Preview:

Edit: You are able to edit every section within a certain multi-section template. Because you will be redirected to the page in Setup for configuring that specific Section template, you must save your multi-section template beforehand. After editing the desired Section template and choosing the Save & Go Back, you will be redirected again to the configuration page for that multi-section template (on the Template Definition tab).

Download: This action automatically downloads the active template file within the desired Section template.

Replace: In this action, you are allowed to change the desired section while retaining the rank within a certain multi-section template.

Preview: The preview button under this action is available only when you enter the quote number for which you want to execute the preview of the pre-generated file.

Adding a Section to a Multi-Section Template

Prerequisites:

Create the section template

Add the corresponding DOCX document to that section template

Define the permissions

In Sections, choose Add New. A pop-up with a list of existing Section templates displays, but only those in the Ready status. Draft templates cannot be visible in this list.

A pop-up with a list of existing section templates displays.

Select the template you wish to add and click Add.

The Add Section window pops up.

Rename the template by choosing the edit button in Section name column.

Select these toggles, as needed:

Required in document - users can’t exclude required sections from the document when customizing the document.

User can download it - users can download the section while customizing the document.

User can replace it - users can replace the section with another section while customizing the document.

Selected by default - the section is selected by default when users customize the document.

Choose the Save.

The section is added to the list of included sections.

Note

Custom sections created by users are not visible to administrators and are always added to the end of the order of existing sections. However, the order of sections can later be sorted by the user if that option is enabled. This also applies to sections added by administrators in the SAP CPQ setup, these sections will be last in the order of sections and thus displayed as last to the user, regardless of the custom order of all existing sections redefined by the user during the document generation process for a specific quote. As with user created custom sections, administrator added sections can also be reordered if this option is enabled.

Note

In cases where the same Section template is used two or more times in a multi-section document generation template, and that Section contains Additional Content files, selecting these files will not function properly during the second step of the document generation process (customizing the template). SAP CPQ administrator users are advised not to use the same Section templates repeatedly in their Multi-section templates, especially when Additional Content files are included.

The Sort column shows the order of section templates as they’ll be generated in a document. The order defined here is default and users can override it if the User can sort sections checkbox is selected. This toggle is enabled by default for new templates.

Yes
No