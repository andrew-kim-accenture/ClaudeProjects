# Personal Data Log | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/a2aa47ecb1394278af36a3bf5ce6609e.html?locale=en-US&state=PRODUCTION&version=2603
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


	Setup Help

	
DKIM Support for Outbound Emails
	
Automatic Data Deletion
	
Personally Identifiable Information
	
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
Personal Data Log

Changes made to all data categorized as PII (personally identifiable information) in SAP CPQ are logged in a dedicated Personal Data Log. This enables data protection officers to filter and monitor these changes more easily.

To access the Personal Data Log, go to Setup  Security  Personal Data Log.

The following data is logged here:

date and time of the performed action

the username of the administrator who performed the action

the performed action

entity type on which changes are performed (users, customers, business partners, attributes, tables and so on)

affected field

a unique ID of an entity

quote ID (if changes are made to quotes)

the old value (unless logging of such information is suppressed)

the new value (unless logging of such information is suppressed)

The personal data log is available for both quote engines.

Note

PII data can also be imported via API and the Import/Export feature. In that case, the user who performs the import is logged as the performer and there is no indication in the log that the import was done via API or Import/Export.

Yes
No