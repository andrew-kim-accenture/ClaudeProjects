# Custom Tables Audit Trail | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/650815bb68b64c10822beb107feac6d3.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail


	
Audit Trail Logs


	
Admin Actions Audit Trail
	
User Actions Audit Trail
	
Products Audit Trail
	
Attributes Audit Trail
	
Pricebooks Audit Trail
	
Custom Tables Audit Trail
	
Logged Data
	
Change Set
	
SAP CPQ Tags
Custom Tables Audit Trail

This functionality allows administrators to track all changes performed on custom tables in the Setup.

See Logged Data for more information about what is logged in the audit trail.

In custom table definition, you can define the level at which changes are logged in Audit Trail Level. You can learn more in Custom Table Logging.

Log details are displayed in the following columns:

Change Set ID – the ID of the change set that was active when the change was performed. All changes are grouped under the currently active change set.

Change ID – the ID of the specific change inside the change set.

Entity – the type of SAP CPQ object that is being changed (such as Custom Table or Custom Table Entry).

Entity ID – the identity of the specific SAP CPQ object that is being changed (such as the name of a custom table or the ID of a custom table entry).

Action – any change carried out by the administrator (such as Add, Change, or Delete).

Field – the field whose value has been changed.

Previous Value – the value that was in place before the change.

New Value – the value that is in place after the change.

User – the name and the username of the administrator who performed the change.

Date – the date and the time when the change was performed.

Performer IP Address - IP address of a user who is accessing the application

Related Information
Custom Tables
Audit Trail Logs
Yes
No