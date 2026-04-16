# View/Export PII Data Filter | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/e6ebb39ced1a44fe9dab3e422cdeb7d3.html?locale=en-US&state=PRODUCTION&version=2603
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
View/Export PII Data Filter

After you click Search Data, pills with object labels you selected in the Search Filter are displayed, followed by the requested objects with user/customer/business partner PII. Pills are used for data filtering.

By clicking X next to a pill with an object label, the corresponding object is hidden. The objects themselves consist of PII sorted in columns listed in the following text. You can choose which columns you wish to export by selecting/unselecting the adjacent checkboxes.

Individual records can be unselected in all objects if they do not refer to the requested user/customer except in quotes because quotes always refer to the user/customer/ business partner in question. Only individual columns that belong to the Quotes object can be unselected.

Note

If Business Partners are used in your environment, you can search business partners and involved parties that contain a business partner, or at least one of the necessary search parameters (name, email, phone, mobile phone, street name...).

The following objects and details can be exported:

Quotes

Quote Number

Quote Owner

Customer

Status

Date Created

Date Modified

Quote Custom Fields

Custom Field Content

Custom Field Name

Quote Number

Quote Owner

Tab Name

Quote Item Custom Fields

Custom Field Content

Custom Field Name

Custom Field Label

Quote Number

Product Name

Date Modified

Quote Tables

Column Value

Table Label

Table Name

Column Name

Quote Number

Tab Name

Date Modified

User Custom Fields

Custom Field Content

Custom Field Name

Custom Field Label

On User

Customer Custom Fields

Custom Field Content

Custom Field Name

Custom Field Label

On Customer

Custom Tables

Column Value

Table Name

Column Name

Date Modified

Modified By

Note

As of the 1905 release, the Modified By column for Custom Tables displays the name of the user who last modified the custom table row in which user/customer data is found. However, in the previous releases the Modified By column displayed the name of the user who last modified the entire custom table for the custom tables created before 1905, as the system did not record changes on row-level.

Yes
No