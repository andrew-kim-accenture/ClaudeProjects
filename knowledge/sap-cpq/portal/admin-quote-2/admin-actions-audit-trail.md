# Admin Actions Audit Trail | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/308862ec98134887bdb95642491efecf.html?locale=en-US&state=PRODUCTION&version=2603
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
Admin Actions Audit Trail

The system tracks changes performed by administrators in various sections of the Setup and displays them in the Admin Actions tab.

Additionally, actions performed by users with special administrator permissions in the User Menu are also logged in the Admin Actions tab (this doesn’t include the User Page, which is available to all users and covered by User Actions in terms of logging). See Logged Data for more information about what is logged in the audit trail.

Log details are displayed in the following columns:

Change Set ID – the ID of the change set that was active when the change was performed. All changes are grouped under the currently active change set.

Change ID – the ID of the specific change inside the change set.

Entity – the type of SAP CPQ object that is being changed (for example, Application Parameter).

Entity ID – the unique identifier of the specific SAP CPQ object that is being changed (for example, the name of a specific application parameter).

Action – any change carried out by the administrator or the user (such as Add, Change, or Delete). Post actions attached to an action are also logged here.

Field – the field whose value has been changed.

Previous Value – the value that was in place before the change.

New Value – the value that is in place after the change.

User – the name and the username of the administrator or user who performed the change.

Date – the date and the time when the change was performed.

Performer IP Address - IP address of a user who is accessing the application

Related Information
Audit Trail Logs
Logged Data
Yes
No