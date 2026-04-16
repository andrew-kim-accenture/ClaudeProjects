# Ability to Manage Documents | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/0411257f53c24b979b0bcbe90719b561.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Delegation of Authority


	
User Management
	
Bulk Quote Reassignment
	
Ability to Manage Documents
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Ability to Manage Documents

When you delegate authority for managing documents to a permission group, the pertaining users can create and upload local document templates and content documents in SAP CPQ.

If needed, each user can also be able to share templates with the members of their own company. To delegate authority for managing documents, go to Setup  Delegation of Authority  Ability to Manage Documents.

Note

The logic between permission groups is OR, so the system delegates authority for managing documents to all users that belong to at least one of the selected permission groups.

If you wish to enable users pertaining to the selected permission groups to upload content files that are used in templates uploaded by application administrators, select the Users from selected permission groups will be able to upload content files used in templates uploaded by application administrator checkbox.

Users who are delegated authority for managing document templates have the Manage Document Templates page available in the user pages. When creating a new template, define it in the Template Definition tab according to the instructions for creating templates described in Document Generation Template. Users can select Share with users from my company and brand to expand access to the template to other users in their company.

In the Additional Fields tab, you define which content files are going to be added to the template.

Users can only create their templates through the User Menu under Manage Document Templates after the permission is assigned through delegation of authority. Every template created by a user beyond this (if the user has access to the Setup settings and creates any template before, during, or after getting delegation of authority permission from their administrator), won't be visible on the User Menu page.

Note

The system includes the additional files into the generated template only if these two tags are properly added in the template: INCLUDE_DOCUMENTS and INCLUDE_DOCUMENTS_END.

Users can also make the following adjustments:

Include file(s) for each quote item - select it to add files for each quote item.

Included File(s) - enter the name of the file (with file extension) that is going to be added to the generated document, or define the formula that dynamically pulls the file name from elsewhere in the application. The files need to be placed in Manage Content Documents.

File Description - define a description that is shown to users, or a formula that generates a description dynamically.

File Selection - select Checkboxes to allow multiple selections of files that will be included in the generated file. Alternatively, select Radio Buttons to restrict the selection to only one file.

Separate files with page break - selected by default so that the system would make a page break after every added file.

Yes
No