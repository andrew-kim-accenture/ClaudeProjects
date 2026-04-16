# Miscellaneous Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/24818256da11447aa36d7fe5db4bcf82.html?locale=en-US&state=PRODUCTION&version=2603
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


	
C Tags
	
Q Tags
	
Miscellaneous Tags
	
Special Tags
	
Custom Table Tags
	
Nested Products Tags
	
Container Tags
	
C2 Loop
	
Conditions
	
Quote Table Tags
	
Example Templates
	
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
Miscellaneous Tags

This page lists various tags that don't belong to any of the categories.

<<INCLUDE_DOCUMENTS>> and <<INCLUDE_DOCUMENTS_END>> - includes a PDF file in the generated document. First, you need to upload the document in Manage Content Documents. Afterwards, in the Additional Files tab of your template, enter the name of the PDF file with its extension. The tags must be in two separate rows.

<<UPDATE_TOC>> - updates the table of contents in the document after the document is processed. If you are using a document generation template with multiple sections, make sure that the section with the table of contents contains all the styles from the other sections. If there are issues with the table of contents detecting styles, use the first section as the template for the subsequent sections, or use the same template file for all sections.

EVAL [EVAL(…)] EVAL function treats an expression as a VBScript call, evaluates it and returns the result. When writing EVAL in Word, the program uses two sets of different quotation marks, open-ended (“) and closed-ended (”). VBScript expects the same set (” ”) and doesn't evaluate the expression when two different sets are entered. To prevent this from happening, type the expression in Notepad and copy paste it to Word.

Note

To remove ”,” from a price 12,345.99 returned by <<C_PRICE>> : [EVAL(Replace(+~:

<$$C_PRICE»”,”,”,””))]. In the above example <<C_PRICE>> is processed first resulting in [EVAL(Replace(“12,345,99”,”,”,””))]. Once EVAL is processed, it will return 12345.99.

HTML [HTML(…)] - HTML tags take the content and interprets it as HTML and inserts it in the document. For example, [HTML(<<C_DESC>>)] . If <<C_DESC>> returns <a href=“http://www.webcominc.com”>Webcom, Inc.</a>, the link is inserted in the document. If there's any text before or after the HTML tag, the HTML content will be inserted in a new paragraph right before it. For example: text before - [HTML(<<C_DESC>>)] - text after. Will result in: html returned content text before - - text after. To include static text and have it on same line, simply put it inside the HTML tag. [HTML(text before - <<C_DESC>> - text after)]

The HTML tag can also be used in templates to show the values from Global Scripts that are using HTML code.

For example, the following is a simple Global Script that returns the HTML code to display a data table:



# * *coding: utf-8 --
 
html = """
<table border="1" style="border-collapse:collapse; width:50%;">
  <thead>
     <tr>
       <th>ID</th>
       <th>Name</th>
       <th>Position</th>
     </tr>
  </thead>
  <tbody>
     <tr><td>1</td><td>John</td><td>Manager</td></tr>
     <tr><td>2</td><td>Nicole</td><td>Designer</td></tr>
     <tr><td>3</td><td>Marc</td><td>Researcher</td></tr>
   </tbody>
</table>
"""
 
# this must exist for C# Execute() to return a value

The HTML tag can then be used in word document templates in combination with an ExecuteScript tag, which will call the previously created script and display its HTML in the document. For example, [HTML( << Q_TAG( <* CTX( Quote.ExecuteScript(ScriptName) )*>)>>)]

Note

Global Scripts with HTML code can also be used with inline styles so they will be parsed as such in generated documents.

After generating the document with this template,the following is displayed in the output document:
ID	Name	Position


1

	

John

	

Manager




2

	

Nicole

	

Designer




3

	

Marc

	

Researcher

Note

The above mentioned tags are not supported for Excel type document generation templates. They are only available for Word type template files.

Yes
No