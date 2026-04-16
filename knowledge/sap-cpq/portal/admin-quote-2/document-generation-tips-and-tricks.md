# Document Generation Tips and Tricks | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/560f3a4eebb747579a7937bbdfc5a9e7.html?locale=en-US&state=PRODUCTION&version=2603
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
Document Generation Tips and Tricks

This page lists the workarounds and methods of avoiding issues with document generation in SAP CPQ.

Don’t change the color of the tags to white to make a document cleaner. The system pulls values of tags and it doesn’t display the tags in the generated document, so you shouldn’t change the color of tags to white to hide them in the template.

Don’t switch fonts in one tag.

Always use the same font for tags within one document.

Make sure to show paragraph marks and other hidden symbols in Microsoft Word by clicking  in the toolbar. This shows all characters that may have been entered accidentally or while copying content and that will potentially cause errors in generating documents in SAP CPQ. Make sure to delete such characters.

Everything inside a C loop must be in the same font.

If all sections after the second section in a multisection template inherit the formatting from the second section, and the Sections will inherit formatting (header,footer etc.) from the first section in the template option is off, select the Different Odd and Even checkbox in the word-processing program.

Make sure to add a new line after each C2 tag (press ENTER on your keyboard).

If there are tables inside a C loop in the header, footer and the main part of the document, they all must have the same format (for example, they must have the same columns).

Use template versions when adding new tags in an existing template. When you create a template and properly generate a document, the next time you want to add new tags, create a new version of the document and make it active. This way, you make sure to always have a template version with tags that properly retrieve data. Also, if something isn’t properly retrieved in the new document, you limit the debugging only to the recently added tags.

Don’t add table tags in conditions.

Don’t add conditions into conditions.

Protected DOC and DOCX files can’t be uploaded into SAP CPQ.

If your template isn’t being properly generated, try adding an enter or a space character at the end of the section.

If Q_QP_FILE tag is found inside the text (paragraph), the file is embedded above that paragraph, not inside the paragraph where the tag was placed. This is applicable for all tags that insert additional files in the document (docs, images, and so on).

The following tag returns numbers in the user’s selected number format:

<*CTX( Number(<*EVAL(15000)*>).ToFormat(<*CTX( Number(1234.56).Format )*>) )*>

The application of conditional logic depends on the type of tags used for document generation: C2 or QUOTE_ITEMS. If the C2 approach is used, the system will first parse content and later, based on the parsed conditional logic, display, and parse the document content. On the other hand, QUOTE_ITEMS parses the condition and process only the content data that satisfies the condition. Row spacing should be reduced to minimum to ensure correct tag parsing. Below are the syntax examples for both approaches, which enable the user to print the content of the main and line items under specific conditions.

Tags for including additional content in documents ( <<INCLUDE_DOCUMENTS>> and <<INCLUDE_DOCUMENTS_END>> ) must be placed in separate lines in Microsoft Word templates.

If your Word document generation template contains an excessive number of C2 tags, you won’t be able to upload it. Instead, make sure you convert it to a multi-section document before you upload it.

Using document generation tags in Excel charts is not supported.

Excel, Notepad, and Zip files uploaded within the Manage Content Documents tab cannot be included as attachments within generated documents.

For previewing document templates, the Quote number must be entered first before the preview button is available.

C2 Example


<<C2>>
<<HEADER>>
This is a header.
<<HEADER_END>>
<<MAIN>>
Repeat once for each main item.
<<C_STOP>>
<<MAIN_END>>
<<LI>>

[CONDITION,<<C_TAG(CTX,EQ,IN,GT,LT... TAGS GO HERE)>>=1]
*CONTENT GOES HERE*
[CONDITION_END]
<<LI_END>>
<<FOOTER>>
This is a footer.
<<FOOTER_END>>
<<C_END>>
QUOTE_ITEMS Example


<<QUOTE_ITEMS>>
	<<HEADER>>
	<<HEADER_END>>
	<<MAIN>>
		<<MAIN_HEADER>>
		<<MAIN_HEADER_END>>
		<<MAIN_CONTENT>>
		<<MAIN_CONTENT_END>>
		<<MAIN_FOOTER>>
		<<MAIN_FOOTER_END>>
		<<LI>>
			<<LI_HEADER>>
			<<LI_HEADER_END>>
			<<LI_CONTENT>>
			<<LI_CONTENT_END>>
			<<LI_FOOTER>>
			<<LI_FOOTER_END>>
		<<LI_END>>
	<<MAIN_END>>
	<<FOOTER>>
	<<FOOTER_END>>
<<QUOTE_ITEMS_END>>
On this page
C2 Example
QUOTE_ITEMS Example
Yes
No