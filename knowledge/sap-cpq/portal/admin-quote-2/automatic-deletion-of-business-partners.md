# Automatic Deletion of Business Partners | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/085937fc4ca14f83a7f45147fe09d89b.html?locale=en-US&state=PRODUCTION&version=2603
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
Automatic Deletion of Business Partners

You can set up a period after which the business partners will be deleted.

To set up automatic deletion of business partners:

Go to Setup  Security  Data Deletion.

A new page displays.

In General Deletion  Customers, enable the Delete Business Partners toggle switch.

Time period selector displays.

Define a period after which business partners will get deleted.

The period can be set in either months or years.

Click Save.

A confirmation message displays.

SAP CPQ runs a job every day to check which business partners are ready for deletion. The job then marks those business partners and deletes them from the system. To determine which business partners are ready for deletion, SAP CPQ first checks whether the business partner is used on a quote or not. If it's on a quote, the business partner won't be marked for deletion nor deleted. Only the business partners not used on quotes are treated for deletion. SAP CPQ calculates the deletion period starting from the day the business partner is no longer attached to any quote.

Example: a SAP CPQ administrator creates a business partner ABCompany on September 1. Sales representatives start using that bussiness partner on quotes right away. On October 1, users remove ABCompany from all the quotes on which it was used. From that day, the business partner is no longer used on any other quotes. On October 30, the administrator defines a retention period of one month for the automatic deletion of business partners. Therefore, the business partner ABCompany will automatically be deleted from SAP CPQ on November 1.

Each deleted business partner is recorded in Setup  Audit Trail  Admin Actions.

Yes
No