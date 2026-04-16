# Bulk Pricebook Import/Export | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/1797145cd83547e38352d5c81a8e663d.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export


	
Bulk Product Import/Export
	
Bulk User Import/Export
	
Bulk Pricebook Import/Export
	
Bulk Product Translation Import/Export
	
Bulk Business Partner Import/Export
	
Attribute Import
	
Import/Export Attribute Translations
	
Companies Export/Import
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Bulk Pricebook Import/Export

Bulk Import/Export feature gives you more flexibility in defining pricebook export filters, as well as improved error handling and quicker export/import speed.

You can import/export pricebooks in bulk in Setup  Import/Export  Bulk Import/Export  Bulk User Import/Export.The page is divided into three sections:

Export Pricebook - contains buttons for initiating different exports in SAP CPQ:

Export Template - exports a Microsoft Excel template with two sheets: Pricebooks (template for defining pricebook details) and Template_Glossary (contains descriptions of columns in the Pricebooks sheet).

Export Entire Pricebook - brings up the Export Entire Pricebook popup which prompts you to select a market and a pricebook within that market that you wish to export.

Filter and Export - allows filtering pricebooks per columns and exporting the results in Microsoft Excel.

Import Pricebook- once you select the desired market and pricebook name, you can import pricebook data in the form of a Microsoft Excel template either by dragging and dropping it in the indicated field, or by manually browsing for it.

List of import/export jobs - shows the type, progress status, requester's name and the date for each export/import job. You can also manage email notifications here by selecting/unselecting the Email me when done checkbox.

Pricebooks are imported sequentially, that is, if several import jobs are submitted, pricebooks will be imported one by one.

Note

The import process may take some time if there is an extensive number of rows in the pricebook, since the system checks validity of each individual row and provides validation messages, which let you know if any rows should be modified. If the import is taking too long, you can tick the Email me when done option and check in as soon the import process is completed.

Yes
No