# Automatic Data Deletion | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/6223960a9d9a46ff8056b8b654ec2a9d.html?locale=en-US&state=PRODUCTION&version=2603
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
Automatic Data Deletion

The feature enables you to set a data deletion policy and/or manage your account’s storage space by defining a period of time after which the system automatically and permanently deletes data.

Since data can be permanently deleted, we recommend that only data protection officers, in cooperation with administrators, use this feature to define a data retention policy.

Note

SAP CPQ doesn’t have a retention framework for keeping and managing the access to customer data after the business purpose for keeping the customer data in the system has expired. SAP CPQ has a deletion framework which should be used to delete customers from SAP CPQ once business purpose has expired. The reason why no retention policy has been developed is that SAP CPQ is mainly used in integrations with CRM software and back office systems (ERP) who act as the single source of customer data. The data is only replicated into SAP CPQ and should be deleted after there is no longer any business purpose to keep it in the system.

The following data can be permanently deleted:

Quotes

Users

Customers

Business Partners (Quote 2.0 only)

User actions

Administrator actions

This feature is accessed in Setup  Security  Data Deletion. The above-mentioned data is organized into the following tabs: General Deletion, and Audit Trail Deletion.

Apart from deleting data on the previously mentioned tabs, you can also prevent data from being deleted.

The feature is available in Responsive Design.

Note

If your attempt to delete data with the Data Deletion feature is unsuccessful, contact the SAP CPQ Support Team and request deletion of the necessary SAP CPQ entities.

Related Information
Blocked Data
General Deletion in Quote 1.0
General Deletion in Quote 2.0
Audit Trail Deletion
Yes
No