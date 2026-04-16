# Document Generation Troubleshooting | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/665a9ee212394653a84a393035090802/1b01bc30ba3540e99a7979b6e55f967a.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ TroubleshootingVersion: 2603English
Provide feedback on our search

	
SAP CPQ Troubleshooting
	
Integrations Troubleshooting
	
Configurator Troubleshooting
	
Document Generation Troubleshooting
	
Catalog Troubleshooting
	
Quote Troubleshooting
	
User Interface Troubleshooting
	
Setup Troubleshooting
	
Login Troubleshooting
	
Scripting Troubleshooting
	
Performance Troubleshooting
Document Generation Troubleshooting

This section provides more information about common issues that may occur in the document generation setup, and ways to fix them.

1. An Illegal character in path error occurred when trying to preview a document.

Names of additional files added to section templates are defined by formulas. If that formula contains an additional row, an Illegal character in path error will occur when trying to preview the document.

2. How to prevent tables in document generation templates from stretching?

When adding tables to a document in a word processing program, columns are automatically resized and adjusted to their sibling columns by default. To set up a fixed column size in the template, open the word processing program and go to Table Tool  Layout  Properties (in the Table section of the ribbon)   Options and uncheck the Automatically Resize to Fit Contents checkbox.

3. What is the best way to reproduce a corrupted template issue?

To reproduce a corrupted template issue, it is not necessary to generate a document each time. Instead, it is enough to identify the problematic template, section or additional file, and then preview it in the Setup with the appropriate cart composite number as an input.

4. What is the quickest fix for a corrupted template in the old document generation engine?

Try the following steps:

Set the same font and font size for tags. A possible quick fix is to select the entire document body and set the same font and font size for the document.

Illegal characters or pdf files may cause issues when processing documents in the old engine. In the document itself, you can click File  Info  Check for Issues to remove special characters from the header or footer.

5. There is a problem with displaying the value of a quote date field (either standard or custom) in document generation. For example, the value in a quote date field is 02.01.2020 (the date format is irrelevant), but in the generated document, the value in the field is 03.01.2020. What is causing this and how to fix it?

First check the user time zone, which is probably set to -08:00. Additionally, go to Application Parameters and set Disable timezone conversion for date field to TRUE.

6. The document generation tag <<C_TAG_FILE(<<CUSTOM_TABLE_COLUMN(ColumnName)>>)>> is supposed to retrieve a document from a custom table column. Why is the tag not parsing properly?

It is not possible to use another document generation tag inside <<C_TAG_FILE()>. You can only use CTX, TABLE and other tags from the SyntaxChecker.

7. What do I do if document generation template upload is unsuccessful or lasts too long?

An issue may occur with uploading a document generation template in the Setup. Upload may last too long, or you may be logged out from the application. In case you experience this issue, you need to analyze the template and look for incorrect line breaks.

In Microsoft Word, two types of line breaks exist: hard breaks, created by pressing Enter and soft breaks, created by pressing Shift + Enter . Only hard breaks should be used in document generation templates. To check which breaks are used in your template, open the document template in Microsoft Word, turn on the option Show paragraph and inspect the document. Notice that different symbols are used for displaying a hard break and a soft break. These symbols are visible when Show paragraph is enabled. Remove all soft breaks from the document and retry the upload.

8. Why can't I download a generated document from the Generated Documents quote tab?

If a user is unable to download a generated document from the Generated Documents tab on the quote, they may have restricted visibility permissions for that document template. The user needs to have the appropriate visibility permissions for a document generation template in order to download generated documents which used that template.

Related Information
Document Generation
Document Generation Template
Yes
No