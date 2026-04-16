# Import Through Template | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/73686904cd81479c8dc8b0ef1a536b6e.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export


	
Bulk Product Import/Export
	
Bulk User Import/Export


	
Import Through Template


	
Template Guidelines
	
Update Existing Users
	
Filter and Export Users
	
Bulk Pricebook Import/Export
	
Bulk Product Translation Import/Export
	
Attribute Import
	
Import/Export Attribute Translations
	
Export/Import Customers
	
Companies Export/Import
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Import Through Template

This workflow allows you to export a predefined template, fill it out with user details and reimport it into SAP CPQ.

Context
Importing users through templates is recommended when you only wish to import new users without altering the existing ones.
Note

Exported files don’t contain columns Password, Must Change Password and Password Locked, and you can’t import a file which contains those columns.

Procedure
In the Export Users section, click Export Template.
Open the Microsoft Excel template on your computer.
Fill out the columns in Users and save the file.

Find the instructions for filling out the templates in Template Guidelines.

Drag and drop the Microsoft Excel template in the Import Users section or browse for it.

The import is automatically recorded in the list of jobs. The status of the import shows Queued until Finished (Download). A progress bar visually shows the progress.

(Optional) Select the Email me when done checkbox.

A notification is emailed to you when the import is finished. Once the Status column indicates Finished (Download), the import is completed. To check the success of the import, click Finished (Download) and open the file on your computer.

Check the Status column in the Users sheet.

If a row is highlighted in red, update it according to the status message and reimport the template. Otherwise, if no rows are highlighted, the users are imported successfully. If you cancel an import before the processing is completed, the file is still available for download.

The imported users can be reached in Setup  Users or Manage Users.



Template Guidelines

This topic contains the instructions for filling out the templates for user bulk import.
On this page
Context
Procedure
Yes
No