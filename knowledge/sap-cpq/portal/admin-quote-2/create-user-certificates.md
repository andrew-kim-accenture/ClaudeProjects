# Create User Certificates | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/b82677e87eea4142ae849d71e575a297.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Certificate Management


	
System Certificates for Secure Communication
	
Create User Certificates
	
WSDL Management
	
Credential Management
	
Trusted Applications
	
Password Policy
	
Content Security Policy in SAP CPQ
	
Multi-factor Authentication
	
Security Recommendations
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Create User Certificates

User certificates can be mapped to individual users.

Context

Each user can be associated with a single public certificate, which is used for their authentication with API. That way, you can avoid storing personal information (IDs, passwords, secrets) of integration users.

Note

Each certificate needs to be unique. If a user is authenticated with certificates in multiple tenants, they need to have a different certificate for each of those tenants.

Procedure
Go to Setup  Security  Certificate Management  User Certificates.

The page in which user certificates are listed displays.

Make sure that the Enable User Certificates toggle switch is active.
Click New Certificate.

The popup window in which you can add a new user certificate displays.

Start typing a user’s name in the User (required) field and select the user to whom you’re attaching the certificate.
Click Upload new file to add a certificate. The certificate should be in PEM format.
Save the certificate.

The certificate can now be used for authentication of the mapped user.

Next Steps

Once a user certificate is created, you can use it to authenticate individual users in specified domains via SOAP and REST APIs.

Authentication with SOAP

To authenticate with SOAP, the client application needs to provide an mTLS client certificate in the request, along with the request body and the domain name in the HTTP header. The forwarded certificate needs to be Active in order to work.

The SOAP client certificate authentication is available on the following endpoints:

/wsapi/cpqapi.asmx

/wsapi/wsresp.asmx

/wsapi/wssrv.asmx

Authentication with REST

Check the instructions.

On this page
Context
Procedure
Next Steps
Yes
No