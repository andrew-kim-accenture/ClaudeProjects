# Document Generation | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/2b858b3a093d4d558b339675fb489222.html?locale=en-US&state=PRODUCTION&version=2603
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
Document Generation

Document Generation allows users to transfer quote details to documents that can be printed, downloaded, and emailed.

This feature allows administrators to create document templates with tags that retrieve specific quote details. Users, on their side, can generate documents based on those templates. The format and style of the resulting printable document, including fonts, colors, and images, is entirely based on the layout of the document template. Once users create a quote, they often need to email the details to customers for further review. The Document Generation feature provides a practical solution for that, while providing administrators with sufficient autonomy to define the format and the style of the document. Users can generate simple documents using only one template file, as well as multi-section documents which are contained within multiple section documents and therefore require several template files.

For data to be displayed in generated documents, you need to enter dedicated tags in the template. Each tag can retrieve any specific quote details, configuration, customer, or user-related information that is meant to be displayed in the output document. The list of all tags and a detailed explanation with examples is in the Document Generation Tags section. Alternatively, you can use the standard CTX tags instead of quote template tags to retrieve data.

In addition to tags, you can also insert any object that Microsoft Word supports into a Microsoft Word template, such as an image or another document file (which can be another document template). Administrators can configure document templates in Setup  Quotes  Document Generation Templates. This feature owes its flexibility to the fact that administrators can define the visibility and format permissions, as well as select additional fields and documents to be included in the generated document. Additionally, administrators can enable users to administer templates on the user side.



Document Generation Tags

Generated documents in SAP CPQ are populated via tags (you insert a dedicated tag into a template and when users generate documents, specific data is retrieved from the system and displayed in the document).
Document Generation Template

The Document Generation Templates page displays a list of all document templates in the system (including Output and Section templates), allowing you to manage, create, and delete templates, as well as translate their names. Here, you can also manage content files (such as pictures and other documents) that can be included in generated documents, as well as manage general settings for templates and generated documents.
Supporting Custom Fonts for the Document Generation Process

Document Generation Libraries and Differences

The differences between document generation libraries you need to be aware of. This page will be updated as soon as differences become apparent.
Setup Administration

This page covers the workflow adjustments that need to be made to enable the document generation process and all necessary settings and parameters that need to be set for templates and output documents.
Manage Content Documents

Within the Manage Content Documents tab under Quotes  Document Generation Templates it is possible to include all files and other documents (such as pictures, PDF files, and other important attachments) that can be attached to or included with generated documents. When creating a new template, those files can then be used directly for configuring the template within the Additional Content or Additional Documents tabs.
Document Generation User Journey

The purpose of this feature is to visually guide new, less experienced or less frequent users through the process of selecting products, creating a shopping cart, generating a quote document.
Document Generation Tips and Tricks

This page lists the workarounds and methods of avoiding issues with document generation in SAP CPQ.
Yes
No