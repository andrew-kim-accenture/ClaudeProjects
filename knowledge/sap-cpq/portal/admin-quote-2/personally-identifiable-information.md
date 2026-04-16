# Personally Identifiable Information | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/023db09c2b7c46328cfde4eef657f699.html?locale=en-US&state=PRODUCTION&version=2603
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
Personally Identifiable Information

Personally identifiable information (PII) is any information that could potentially be used to identify an individual.

The following information is considered to be PII:

Full name

Home address

Email address

Social security number

Passport number

Driver's license number

Credit card number

Date of birth

Telephone number

Login details

You can mark certain information as PII if needed. This action makes the processes of managing and filtering PII much easier.

The following SAP CPQ objects always contain PII:

User standard and custom fields

Customer standard and custom fields

Business partners

The following objects aren’t flagged as PII by default, but you have the option to flag them as such if necessary:

Quote custom fields

Quote item custom fields

Attributes

Custom tables

Quote tables

You can flag data as PII by selecting the Contains Personally Identifiable Information checkbox for the above-mentioned objects.

If the following objects are flagged as PII, they retain that flag after being sent and deployed via the Deploy / Send Changes feature:

Attributes (deployed as elements of other deployment package components: products, guided selling, custom fields, or CRM integrations)

Quote tables

Custom tables

Customer standard and custom fields

Quote custom fields

Quote item custom fields

Note

Read access logging of sensitive personally identifiable information is not supported in SAP CPQ. Although SAP CPQ has functionalities that contain PII data, the system is not purposely designed for storing PII data.

Suppressed Information Logging

Some types of personally identifiable information needs to be more rigorously protected than others (for example, social security number and driver’s license number), since the unauthorized acquisition of this information could be harmful to the concerned individual. Administrators can prevent logging of old and new values of such objects in the Audit Trail by enabling the Suppress Information Logging toggle switch next to an object in question. All other Audit Trail columns will be populated

Note

Administrators can Suppress Information Logging only for objects that are already marked as Personally Identifiable Information.

If logging of the following objects is suppressed, they will retain that flag after being sent and deployed via Deploy / Send Changes:

Attributes (deployed as elements of other deployment package components: products, guided selling, custom fields or CRM integrations)

Quote Tables

Custom tables

Quote custom fields

Quote item custom fields

Yes
No