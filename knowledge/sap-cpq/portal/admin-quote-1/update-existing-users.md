# Update Existing Users | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/8bae146a296d4c119d0042f2d09274c6.html?locale=en-US&state=PRODUCTION&version=2603
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
Update Existing Users

SAP CPQ allows you to export a Microsoft Excel file with all users in the system, update their data and reimport it into SAP CPQ.

Context

Although you may add new users to the list, this workflow is recommended when updating the details of users that are already in the system.

Procedure
In the Export Users section, click Export All Users.

The job is recorded in the list and its status changes accordingly (Queued > In Progress > Finished (Download)).

Click Finished (Download) in the Status column.
Open the Microsoft Excel template on your computer.

All user fields from the system are exported.

Update the data.

Column order and column names must stay unchanged, or else the import won’t be successful. Also, make sure not to change the user IDs as it may lead to duplication in the system.

Drag and drop the Microsoft Excel template in the Import Users section or browse for it on your computer.
(Optional) Select the Email me when done checkbox to receive an email when the import is finished.

Once the status changes to Finished (Download), the import is completed.

To check the success of the import, click Finished (Download) and check the Status column.

Passwords aren’t exported from the system.

Related Information
Bulk User Import/Export
User Administration
On this page
Context
Procedure
Related Information
Yes
No