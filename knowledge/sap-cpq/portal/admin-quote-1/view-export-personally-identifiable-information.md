# View/Export Personally Identifiable Information | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/d96169ca0eab4031ad9847163e61c329.html?locale=en-US&state=PRODUCTION&version=2603
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


	Setup Help

	
DKIM Support for Outbound Emails
	
Automatic Data Deletion
	
Personally Identifiable Information


	
View/Export Personally Identifiable Information


	
View/Export PII Data Filter
	
Audit Trail and View/Export PII
	
Personal Data Log
	
WSDL and Certificate Management
	
Credential Management
	
Trusted Applications
	
Password Policy
	
Content Security Policy in SAP CPQ
	
Multi-factor Authentication
	
Security Recommendations
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
View/Export Personally Identifiable Information

Personally identifiable information about SAP CPQ users and customers can be exported. If users/customers/business partners prove that their identity is genuine, they can request extraction of personally identifiable information.

Prerequisites

Have data that you wish to extract flagged as PII.

Context

In SAP CPQ, User and Customer objects are by default flagged as PII. However, PII can also be located in other objects, in which case they need to be flagged manually. To do this, select the Personally Identifiable Information checkbox on each object individually. Unflagged data can’t be exported.

Note

Any data that was in the system before this functionality was created can’t be exported until it’s manually flagged as PII.

To extract PII about users, follow these steps:

Procedure
Go to Setup  Security  View/Export PII.

A new page displays.

Select the Search Users option.
Start typing the name, username, or email address of the user.

A dropdown list with matching users displays.

Select a user.

A card with user details displays.

If there are multiple users with identical names, the data in the cards will help you distinguish between them.

Click Filter Data.

The Search Filter popup displays.

Select the objects that will be filtered.
The available objects are:

Quotes

Quote Custom Fields

Quote Item Custom Fields

Quote Tables

User Custom Fields

Customer Custom Fields

Custom Tables

Click Apply.
Click Search Data.

To filter all objects, click Search Data right away, without manually filtering the objects.

Pills with object labels are displayed and all requested objects with user/customer PII are listed. If there’s no PII in the requested objects, only their names and empty columns are displayed.

Select checkboxes for all data you wish to export.
Click either Export as .xlsx or Export as PDF.

The file is downloaded.

Example
Next Steps

Extracting customer PII is done in a similar way. The only difference is that customers don’t have usernames, so when you select the Search Customers button, you need to enter a customer’s full name or an email address in the search field.

Each performed search for users’ or customers’ PII is tracked in Audit Trail  Admin Actions.

On this page
Prerequisites
Context
Procedure
Example
Next Steps
Yes
No