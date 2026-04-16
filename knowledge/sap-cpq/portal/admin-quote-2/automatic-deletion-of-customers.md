# Automatic Deletion of Customers | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/4f738b085fdd4c478c7fd87c27b5dde0.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Blocked Data
	
General Deletion


	
Automatic Deletion of Customers
	
Automatic Deletion of Quotes
	
Automatic Deletion of Users
	
Automatic Deletion of Business Partners
	
Audit Trail Deletion
	
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
Automatic Deletion of Customers

Automatic customer deletion applies to both global and local customers.

To delete customers:

Go to Setup  Security  Data Deletion.

A new page displays.

In General Deletion  Customers, enable the Delete Customers toggle switch.

Time period selector displays.

Define a period after which customers will get deleted.

The period can be set in either months or years.

Click Save.

A confirmation message displays.

The system calculates the deletion period once the customer is no longer attached to any quote.

Each deleted customer is recorded in Setup  Audit Trail  Admin Actions. Additionally, customer ID of the deleted customer is displayed in the Action column in the following format: GDPR - delete customer - customer ID.

Yes
No