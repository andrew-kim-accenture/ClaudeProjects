# Trusted Applications | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/421908eba3e8444dbc142354914e8178.html?locale=en-US&state=PRODUCTION&version=2603
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
Trusted Applications

SAP CPQ supports server to server authentication using OAuth 2.0 standard with different supported grant types, be able to meet various authentication requirements. To be able to use Authorization Code Grant, JWT Assertion Grant or SAML Assertion Grant Trusted Application needs to be configured in SAP CPQ.

To add new Trusted Application:

Navigate to SAP CPQ tenant and log in.

Navigate to Setup  Security  Trusted Application.

Choose Add New, and then choose the Add new Trusted Application.

New Trusted Application will be created with generic name, Client ID, and Client Secret pair.
Note

Client Secret is only visible when Trusted Application is created. It will not be visible on edit action. After creating the Trusted Application make sure to note down its value.

To edit the Trusted Application:

Navigate to SAP CPQ tenant and log in.

Navigate to Setup  Security  Trusted Application.

Choose the desired Trusted Application and then choose the edit icon.

To Delete the Trusted Application:

Navigate to SAP CPQ tenant and log in.

Navigate to Setup  Security  Trusted Application.

Choose the desired Trusted Application and then choose the delete icon.

Note

If you are using the Trusted application and have enabled JWT assertion grant with a JWT token signing key, and if authentication fails with the response "invalid signature", try to recreate the JWT token signing key from the Trusted application in the setup and use the new JWT signing key for signing in connected applications.

Yes
No